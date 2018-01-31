package ru.pizza.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ru.pizza.models.Pizza;
import ru.pizza.repositories.PizzaRepository;

import java.util.Optional;

/**
 * Created by Sulaymon on 16.12.2017.
 */
@Component
public class PizzaFormValidator implements Validator {

    @Autowired
    private PizzaRepository pizzaRepository;

    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.getName().equals(Pizza.class.getName());
    }

    @Override
    public void validate(Object target, Errors errors) {
        Pizza pizza = (Pizza) target;
        Optional<Pizza> pizzaOptional = pizzaRepository.findAllByPizzaName(pizza.getPizzaName());

        if (pizzaOptional.isPresent()){
            errors.reject("bad.name", "Уже существует такая пицца");
        }
        if (pizza.getPrice()<=0){
            errors.reject("bad.price", "Укажите положителную цену");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pizzaName", "empty.name", "заполните поле имя");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "description", "empty.description", "заполните поле описание");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "empty.price", "заполните поле цены");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "count", "empty.count", "заполните поле количество");
    }
}
