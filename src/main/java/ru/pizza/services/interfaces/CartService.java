package ru.pizza.services.interfaces;

import ru.itis.pizzaonline.models.Cart;
import ru.itis.pizzaonline.models.Pizza;
import ru.itis.pizzaonline.models.User;

import java.util.List;
import java.util.Optional;

public interface CartService {
    void addPizza(Cart cart);
    Optional<Cart> getClientPizza(Pizza pizza);

    List<Cart> getAllPizzas(User user);

    void deleteCartByIDandUser(Long id, User user);
}
