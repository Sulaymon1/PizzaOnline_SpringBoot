package ru.pizza.services.interfaces;

import ru.pizza.models.Pizza;
import ru.pizza.models.User;

import java.util.List;

/**
 * Created by Sulaymon on 16.12.2017.
 */
public interface AdminService {
    List<User> getAllUsers();
    List<Pizza> getAllPizzas();
    List<User> getAllKurers();
    void addUser(User user);
    void addKurer(User user);
    User getUserByEmail(String email);
    void deleteUser(String email);
}
