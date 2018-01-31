package ru.pizza.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import ru.pizza.models.User;
import ru.pizza.security.Role.Role;
import ru.pizza.services.AuthenticationServiceImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.Optional;

/**
 * Created by Sulaymon on 15.12.2017.
 */
@Controller
public class AuthController {


    @Autowired
    private AuthenticationServiceImpl service;

    @GetMapping("/")
    public String login(Authentication authentication, HttpServletRequest request){
        if (authentication!=null){
            User user = service.getUserByAuthentication(authentication);
            request.getSession().setAttribute("user", user);
            if (user.getRole().equals(Role.USER)) {
                return "redirect:/user/profile";
            }
            else if (user.getRole().equals(Role.ADMIN)){
                return "redirect:/admin/users";
            }
        }
        return "redirect:/home";
    }
    @GetMapping("/user/profile")
    public String userProfile(HttpServletRequest servletRequest,Authentication authentication, @ModelAttribute("model")ModelMap modelMap) {
        if (authentication != null) {
            User user = service.getUserByAuthentication(authentication);
            modelMap.addAttribute(user);
            servletRequest.getSession().setAttribute("isLogin",Boolean.TRUE);
                return "userProfile";
        }
        return "redirect:/home";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, Authentication authentication){
        if (authentication != null){
            request.getSession().invalidate();
        }
        return "redirect:/home";
    }

}
