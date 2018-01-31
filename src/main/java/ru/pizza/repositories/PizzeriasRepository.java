package ru.pizza.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.pizza.models.Pizzerias;

/**
 * Created by Sulaymon on 18.12.2017.
 */
public interface PizzeriasRepository extends JpaRepository<Pizzerias, Long> {

}
