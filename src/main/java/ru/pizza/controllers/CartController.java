package ru.pizza.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import ru.itis.pizzaonline.models.Cart;
import ru.itis.pizzaonline.models.User;
import ru.itis.pizzaonline.services.implementations.AuthenticationServiceImpl;
import ru.itis.pizzaonline.services.implementations.CartServiceImpl;

import java.util.Arrays;
import java.util.List;

@Controller
public class CartController {

    @Autowired
    private AuthenticationServiceImpl service;

    @Autowired
    private CartServiceImpl cartService;


    @GetMapping("/cart")
    public String getAllClientPizza(ModelMap modelMap, Authentication authentication){
        User user = service.getUserByAuthentication(authentication);
        List<Cart> carts = cartService.getAllPizzas(user);
        System.out.println(Arrays.asList(carts));
        modelMap.addAttribute("carts", carts);
        return "client/cart";
    }

    @GetMapping("/deleteFromCart")
    public String fromCart(@PathVariable(value = "cartId", required = true) Long id, Authentication authentication) {

            if (authentication != null) {
                User user = service.getUserByAuthentication(authentication);
                cartService.deleteCartByIDandUser(id, user);
            }

        return "redirect:/cart";
    }
}
