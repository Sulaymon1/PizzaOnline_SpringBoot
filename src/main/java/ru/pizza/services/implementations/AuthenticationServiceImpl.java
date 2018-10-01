package ru.pizza.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
import ru.pizza.models.User;
import ru.pizza.repositories.UserRepository;
import ru.pizza.security.details.UserDetailsImpl;
import ru.pizza.services.interfaces.AuthenticationService;

/**
 * Created by Sulaymon on 15.12.2017.
 */
@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public User getUserByAuthentication(Authentication authentication) {
        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        String email = userDetails.getUsername();
        return userRepository.findByEmail(email);
    }
}
