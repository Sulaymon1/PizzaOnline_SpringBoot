package ru.pizza.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.itis.pizzaonline.models.Cart;
import ru.itis.pizzaonline.models.Pizza;
import ru.itis.pizzaonline.models.User;

import java.util.List;
import java.util.Optional;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
    Optional<Cart> findFirstByPizza(Pizza pizza);
    List<Cart> findAllByUser(User user);
    void deleteByIdAndUser(Long id, User user);
    Optional<Cart> findFirstByIdAndUser(Long id, User user);

}
