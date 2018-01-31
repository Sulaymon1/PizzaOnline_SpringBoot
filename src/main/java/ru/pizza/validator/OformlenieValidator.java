package ru.pizza.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import ru.pizza.models.Oformlenie;

/**
 * Created by Sulaymon on 17.12.2017.
 */
@Component
public class OformlenieValidator implements Validator {


    @Override
    public boolean supports(Class<?> aClass) {
        return aClass.getName().equals(Oformlenie.class.getName());
    }

    @Override
    public void validate(Object target, Errors errors) {
        Oformlenie oformlenie = (Oformlenie)target;

        System.out.println("yes");
        if (oformlenie.getRadiotype().equals("takeme")){
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "id_magaz", "empty.num", "выберите пицерию");
        }else if (oformlenie.getRadiotype().equals("send")){
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "streetAndHouse", "empty.address","Заполните поле адрес");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "floor", "empty.floor","Заполните поле этаж");
            ValidationUtils.rejectIfEmptyOrWhitespace(errors, "roomNumber", "empty.room","Заполните поле квартира");
        }else errors.reject("bad.type", "Выберите один из типов");
    }
}
