package ru.pizza.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import ru.pizza.models.Pizza;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Sulaymon on 24.11.2017.
 */

@Controller
public class HomeController {

    @GetMapping(value = "/home")
    public String home(HttpServletRequest request,@ModelAttribute("model")ModelMap modelMap, HttpServletRequest httpServletRequest){
        List<Pizza> pizzaList = (List<Pizza>) httpServletRequest.getSession().getAttribute("pizzaList");
        modelMap.addAttribute("list", pizzaList);
        return "home";
    }

}
