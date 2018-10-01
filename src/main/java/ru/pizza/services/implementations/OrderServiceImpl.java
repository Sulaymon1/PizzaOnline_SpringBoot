package ru.pizza.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.pizza.models.OrderAddress;
import ru.pizza.models.Orders;
import ru.pizza.models.Pizza;
import ru.pizza.models.User;
import ru.pizza.repositories.OrderAddressRepository;
import ru.pizza.repositories.OrdersRepository;
import ru.pizza.repositories.PizzaRepository;
import ru.pizza.services.interfaces.OrderService;

import java.util.List;

/**
 * Created by Sulaymon on 17.12.2017.
 */
@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private PizzaRepository pizzaRepository;

    @Autowired
    private OrderAddressRepository orderAddressRepository;

    @Autowired
    private OrdersRepository ordersRepository;

    @Transactional
    @Override
    public void addOrderAddress(OrderAddress orderAddress){
        orderAddressRepository.save(orderAddress);
    }

    @Transactional
    @Override
    public void addPizzaListToOrder(List<Pizza> pizzas, User user) {
        pizzas.forEach(item ->{
            Pizza pizza = pizzaRepository.findByPizzaName(item.getPizzaName());
            ordersRepository.save(Orders.builder()
                    .count(item.getCount())
                    .pizza(pizza)
                    .price(pizza.getPrice())
                    .user(user).build());
        });
    }


}
