package ru.pizza.services;

import ru.pizza.models.User;

/**
 * Created by Sulaymon on 07.12.2017.
 */
public interface EmailService  {
    void sendMail( User user);
}
