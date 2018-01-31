package ru.pizza.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.method.P;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.pizza.form.UserRegistrationForm;
import ru.pizza.models.Pizza;
import ru.pizza.models.User;
import ru.pizza.security.Role.Role;
import ru.pizza.services.AdminServiceImpl;
import ru.pizza.services.PizzaServiceImpl;
import ru.pizza.validator.PizzaFormValidator;
import ru.pizza.validator.UserRegistrationFormValidator;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

/**
 * Created by Sulaymon on 16.12.2017.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private PizzaServiceImpl pizzaService;

    @Autowired
    private AdminServiceImpl adminService;

    @Autowired
    private PizzaFormValidator pizzaFormValidator;

    @Autowired
    private UserRegistrationFormValidator userRegistrationFormValidator;

    @InitBinder("userForm")
    public void initPizzaValidator(WebDataBinder dataBinder){
        dataBinder.addValidators( userRegistrationFormValidator);
    }

    @GetMapping("/users")
    public String getUsersPage(@ModelAttribute("model")ModelMap modelMap){
        List<User> users = adminService.getAllUsers();
        modelMap.addAttribute("users", users);
        return "usersPage";
    }

    @PostMapping("/users")
    public String addUser(@Valid @ModelAttribute("userForm") UserRegistrationForm userRegistrationForm, BindingResult errors, RedirectAttributes attributes){
        if (errors.hasErrors())
            attributes.addFlashAttribute("errors", errors.getAllErrors().get(0).getDefaultMessage());
        else {
            User user = User.builder()
                    .name(userRegistrationForm.getName())
                    .email(userRegistrationForm.getEmail())
                    .phoneNumber(userRegistrationForm.getPhoneNumber())
                    .role(Role.USER)
                    .build();
            adminService.addUser(user);
        }
        return "redirect:/admin/users";
    }
    @PostMapping("/kurers")
    public String addKurer(@Valid @ModelAttribute("userForm") UserRegistrationForm userRegistrationForm, BindingResult errors, RedirectAttributes attributes){
        if (errors.hasErrors())
            attributes.addFlashAttribute("errors", errors.getAllErrors().get(0).getDefaultMessage());
        else{
            User user = User.builder()
                    .name(userRegistrationForm.getName())
                    .email(userRegistrationForm.getEmail())
                    .phoneNumber(userRegistrationForm.getPhoneNumber())
                    .role(Role.KURER)
                    .build();
            adminService.addKurer(user);
        }
        return "redirect:/admin/kurers";
    }

    @GetMapping("/kurers")
    public String getKurersPage(@ModelAttribute("model")ModelMap modelMap){
        List<User> users = adminService.getAllKurers();
        modelMap.addAttribute("users", users);
        return "kurersPage";
    }

    @GetMapping("/pizzas")
    public String getPizzas(@ModelAttribute("model")ModelMap modelMap){
        List<Pizza> pizzas = adminService.getAllPizzas();
        modelMap.addAttribute("pizzas", pizzas);
        return "pizzasPage";
    }

    @PostMapping("/pizzas")
    public String addPizza(@Valid @ModelAttribute("pizzaForm") Pizza pizza, BindingResult errors, RedirectAttributes attributes){
        if (errors.hasErrors())
            attributes.addAttribute("errorPizza", errors.getAllErrors().get(0).getDefaultMessage());
        else pizzaService.addPizza(pizza);
        return "redirect:/pizzas";
    }

    @GetMapping("/editUser")
    public String editUser(){
        return "editUser";
    }

    @PostMapping("/editUser")
    public String editUser(@ModelAttribute("model")ModelMap modelMap, HttpServletRequest request){
        String email = request.getParameter("email");
        User user = adminService.getUserByEmail(email);
        modelMap.addAttribute("user", user);

        return "editUser";
    }

    @Transactional
    @PostMapping("/deleteUser")
    public String deleteUser(HttpServletRequest request){
        String email = request.getParameter("email");
        adminService.deleteUser(email);
        return "redirect:/admin/users";
    }


}
