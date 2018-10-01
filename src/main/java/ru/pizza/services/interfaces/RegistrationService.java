package ru.pizza.services.interfaces;

import ru.pizza.models.VerificationToken;
import ru.pizza.exceptions.EmailExistsException;
import ru.pizza.form.UserRegistrationForm;
import ru.pizza.models.User;

/**
 * Created by Sulaymon on 08.12.2017.
 */
public interface RegistrationService {
    void createUserAccount(User user) throws EmailExistsException;
    void createVerificationToken(User user, String token);
    VerificationToken getVerificationToken(String token);
    User getUserByToken(String token);
    void confirmPassword(User user);
    void remove(String token);
}
