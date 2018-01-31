package ru.pizza.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.pizza.models.OrderAddress;

/**
 * Created by Sulaymon on 17.12.2017.
 */
public interface OrderAddressRepository extends JpaRepository<OrderAddress, Long> {

}
