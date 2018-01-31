package ru.pizza.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.pizza.models.VerificationToken;

/**
 * Created by Sulaymon on 08.12.2017.
 */
public interface VerificationTokenRepository extends JpaRepository<VerificationToken, Long> {
    VerificationToken findByToken(String vToken);
    void deleteByToken(String token);

}
