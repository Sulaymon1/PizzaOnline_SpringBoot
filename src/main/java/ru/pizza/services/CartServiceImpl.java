package ru.pizza.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.itis.pizzaonline.models.Cart;
import ru.itis.pizzaonline.models.Pizza;
import ru.itis.pizzaonline.models.User;
import ru.itis.pizzaonline.repositories.CartRepository;

import java.util.List;
import java.util.Optional;

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartRepository cartRepository;

    @Override
    public void addPizza(Cart cart) {
        cartRepository.save(cart);
    }

    @Override
    public Optional<Cart> getClientPizza(Pizza pizza) {
        return cartRepository.findFirstByPizza(pizza);
    }

    @Override
    public List<Cart> getAllPizzas(User user) {
        return cartRepository.findAllByUser(user);
    }

    @Override
    public void deleteCartByIDandUser(Long id, User user){
        if(cartRepository.findFirstByIdAndUser(id, user).isPresent()) {
            cartRepository.delete(id);
        }
    }
}
