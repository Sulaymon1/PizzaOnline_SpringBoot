package ru.pizza.services.interfaces;

import org.springframework.security.core.Authentication;
import ru.pizza.models.User;

/**
 * Created by Sulaymon on 15.12.2017.
 */
public interface AuthenticationService {
    User getUserByAuthentication(Authentication authentication);
}
