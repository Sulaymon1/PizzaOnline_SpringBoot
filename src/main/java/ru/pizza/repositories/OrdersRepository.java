package ru.pizza.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import ru.pizza.models.Orders;

/**
 * Created by Sulaymon on 18.12.2017.
 */
public interface OrdersRepository extends JpaRepository<Orders, Long> {
}
