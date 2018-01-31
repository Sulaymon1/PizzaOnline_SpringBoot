package ru.pizza.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.pizza.models.User;
import ru.pizza.security.Role.Role;

import java.util.List;
import java.util.Optional;

/**
 * Created by Sulaymon on 07.12.2017.
 */
public interface UserRepository extends JpaRepository<User, Long> {
    List<User> findAll();
    Optional<User> findByEmailAndEnabled(String email, Boolean t);
    User findByEmail(String email);
    Optional<User> findOneByEmail(String email);
    Optional<User> findByEmailOrPhoneNumber(String email, Long phoneNumber);
    List<User> findAllByRole(Role role);
    void deleteByEmail(String email);
 }
