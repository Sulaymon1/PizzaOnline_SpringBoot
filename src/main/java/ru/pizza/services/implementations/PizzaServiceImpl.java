package ru.pizza.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.pizza.models.Pizza;
import ru.pizza.repositories.PizzaRepository;
import ru.pizza.services.interfaces.PizzaService;

/**
 * Created by Sulaymon on 16.12.2017.
 */
@Service
public class PizzaServiceImpl implements PizzaService {

    @Autowired
    private PizzaRepository pizzaRepository;

    @Override
    public void addPizza(Pizza pizza) {
        pizzaRepository.save(pizza);
    }
}
