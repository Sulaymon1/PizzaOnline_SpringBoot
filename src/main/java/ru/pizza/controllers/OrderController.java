package ru.pizza.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import ru.pizza.models.OrderAddress;
import ru.pizza.models.Pizza;
import ru.pizza.models.User;
import ru.pizza.services.OrderServiceImpl;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

/**
 * Created by Sulaymon on 05.12.2017.
 */

@Controller
@RequestMapping("/order")
public class OrderController {


    @Autowired
    private OrderServiceImpl orderAddressService;


    @GetMapping
    public String orderPage(@ModelAttribute ("model")ModelMap modelMap){
        modelMap.addAttribute("url", "/");
        return "order";
    }

    @PostMapping
    public String orderPage(@ModelAttribute("model")ModelMap modelMap, WebRequest request,
                            RedirectAttributes redirectAttributes, HttpServletRequest httpServletRequest){
         Map<String,Pizza> pizzaList = new HashMap<>();

        if (request.getParameterNames().hasNext()){
            request.getParameterNames().forEachRemaining(item ->{
                String parameter = request.getParameter(item);
                    pizzaList.put(item,Pizza.builder()
                            .pizzaName(item)
                            .count(Long.valueOf(parameter))
                            .build());
            });
            List<Pizza> list = new LinkedList<>(pizzaList.values());
            redirectAttributes.addFlashAttribute("list", list);
            httpServletRequest.getSession().setAttribute("pizzaList",list );
        }

        return "redirect:/order";
    }

    @PostMapping("/decor")
    public String getOrdering( @ModelAttribute("formOformlenie")  ModelMap modelMap,
                              HttpServletRequest request, BindingResult error, RedirectAttributes attributes){

        String radiotype = request.getParameter("radiotype");


        User user = (User) request.getSession().getAttribute("user");
        if (radiotype.equals("send")){
            OrderAddress orderAddress = OrderAddress.builder()
                    .street(request.getParameter("streetAndHouse"))
                    .domofon(request.getParameter("domofon"))
                    .floor(request.getParameter("floor"))
                    .roomNum(request.getParameter("roomNumber"))
                    .user(user)
                    .build();
            System.out.println(orderAddress.toString());
            List<Pizza> pizzaList = (List<Pizza>) request.getSession().getAttribute("pizzaList");
            orderAddressService.addPizzaListToOrder(pizzaList, user);
            orderAddressService.addOrderAddress(orderAddress);
        }else if(radiotype.equals("takeme")){
            String id_magaz = request.getParameter("id_magaz");
            if (id_magaz.equals("1")){

            }
            List<Pizza> pizzaList = (List<Pizza>) request.getSession().getAttribute("pizzaList");
            orderAddressService.addPizzaListToOrder(pizzaList, user);
        }

        return "success_order";
    }

    @GetMapping("/decor")
    public String getOrdering(){
        return "order2";
    }

    @PostMapping("/successOrder")
    public String succOrder(){
        return "success_order";
    }
}
