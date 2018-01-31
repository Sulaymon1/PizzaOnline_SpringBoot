package ru.pizza.controllers;

import com.nulabinc.zxcvbn.Strength;
import com.nulabinc.zxcvbn.Zxcvbn;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.context.MessageSource;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.pizza.models.VerificationToken;
import ru.pizza.exceptions.EmailExistsException;
import ru.pizza.form.UserRegistrationForm;
import ru.pizza.models.User;
import ru.pizza.security.Role.Role;
import ru.pizza.services.RegistrationService;
import ru.pizza.validator.UserRegistrationFormValidator;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/**
 * Created by Sulaymon on 08.12.2017.
 */
@Controller
public class RegistrationController {

    @Autowired
    private RegistrationService registrationService;

    @Autowired
    private UserRegistrationFormValidator userRegistrationFormValidator;

   // @Autowired
    private MessageSource messages;


    @InitBinder("userForm")
    public void initUserFormValidator(WebDataBinder binder){
        binder.addValidators(userRegistrationFormValidator);
    }


    @PostMapping("/signUp")
    public String registerUserAccount(@ModelAttribute("userForm") @Valid UserRegistrationForm userRegistrationForm,
                                      BindingResult errors, WebRequest request, RedirectAttributes attributes, HttpServletRequest httpServletRequest) throws EmailExistsException {
        if (errors.hasErrors()){
            attributes.addFlashAttribute("error" , errors.getAllErrors().get(0).getDefaultMessage());
            return "redirect:/home";
        }
        User user = User.builder()
                .name(userRegistrationForm.getName())
                .email(userRegistrationForm.getEmail())
                .phoneNumber(userRegistrationForm.getPhoneNumber())
                .role(Role.USER)
                .build();
        registrationService.createUserAccount(user);
        return "success_registration";
    }

    @GetMapping("/confirmRegistration")
    public String confirmRegistration(@ModelAttribute("model") ModelMap modelMap ,WebRequest request,@RequestParam String token, RedirectAttributes attributes){
        Locale locale = request.getLocale();
        VerificationToken verificationToken = registrationService.getVerificationToken(token);
        if (verificationToken == null){
            String message = messages.getMessage("auth.message.invalidToken", null, locale);
            modelMap.addAttribute("message", message);
            return "redirect:/badUser.html";
        }

        Date today = Calendar.getInstance().getTime();
        if (TimeUnit.MILLISECONDS.toMinutes(today.getTime()-verificationToken.getExpiryDate().getTime()) > 24*60){
            String messageValue = messages.getMessage("auth.message.expired", null, locale);
            registrationService.remove(token);
            return "redirect:/badUser.html";
        }
        modelMap.addAttribute("token", token);
        return "new_pass";
    }

    @Transactional
    @PostMapping("/confirmRegistration")
    public String processRegistrationForm (@RequestParam String token, WebRequest request,RedirectAttributes attributes){
        String password = request.getParameter("password");
        Zxcvbn passwordChecker = new Zxcvbn();
        Strength strength = passwordChecker.measure(password);

        if (strength.getScore() < 3){
            attributes.addAttribute("token", token);
            attributes.addFlashAttribute("error", "Ваш пароль слишком слабый.");
            return "redirect:/confirmRegistration";
        }
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        User user = registrationService.getVerificationToken(token).getUser();
        user.setEnabled(true);
        user.setHashPassword(passwordEncoder.encode(password));
        registrationService.confirmPassword(user);
        registrationService.remove(token);
        return "redirect:/home";

    }

}
