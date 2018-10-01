package ru.pizza.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.pizza.models.Pizza;
import ru.pizza.models.User;
import ru.pizza.repositories.PizzaRepository;
import ru.pizza.repositories.UserRepository;
import ru.pizza.security.Role.Role;
import ru.pizza.services.interfaces.AdminService;

import java.util.List;

/**
 * Created by Sulaymon on 16.12.2017.
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private PizzaRepository pizzaRepository;

    @Autowired
    private EmailServiceImpl emailService;

    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getAllUsers() {
        return userRepository.findAllByRole(Role.USER);
    }

    @Override
    public List<Pizza> getAllPizzas() {
        return pizzaRepository.findAll();
    }

    @Override
    public List<User> getAllKurers() {
        return userRepository.findAllByRole(Role.KURER);
    }

    @Override
    public void addUser(User user) {
        userRepository.save(user);
        emailService.sendMail(user);
    }

    @Override
    public void addKurer(User user) {
        userRepository.save(user);
        emailService.sendMail(user);
    }
    @Override
    public User getUserByEmail(String email){
        return userRepository.findByEmail(email);
    }

    @Override
    public void deleteUser(String email){
        userRepository.deleteByEmail(email);
    }
}
