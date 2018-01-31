package ru.pizza.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.pizza.models.Pizza;

import java.util.List;
import java.util.Optional;

/**
 * Created by Sulaymon on 16.12.2017.
 */
public interface PizzaRepository extends JpaRepository<Pizza,Long> {
    Optional<Pizza> findAllByPizzaName(String name);
    List<Pizza> findAll();
    Pizza findByPizzaName(String name);
}
