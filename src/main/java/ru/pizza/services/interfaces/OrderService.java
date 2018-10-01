package ru.pizza.services.interfaces;

import ru.pizza.models.OrderAddress;
import ru.pizza.models.Pizza;
import ru.pizza.models.User;

import java.util.List;

/**
 * Created by Sulaymon on 17.12.2017.
 */
public interface OrderService {
    void addOrderAddress(OrderAddress orderAddress);
    void addPizzaListToOrder(List<Pizza> pizzas, User user);

}
