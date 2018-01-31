package ru.pizza.models;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by Sulaymon on 16.12.2017.
 */
@Getter
@Setter
@Entity
@Table(name = "OrdersForPizzeria")
@ToString
public class OrdersForPizzeria {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(targetEntity = User.class, cascade = CascadeType.REMOVE,  fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "user_id")
    private User user;

    @NotNull
    @ManyToOne(targetEntity = Pizzerias.class, cascade = CascadeType.REMOVE, fetch = FetchType.LAZY)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JoinColumn(name = "pizzeria_id")
    private Pizzerias pizzerias;
}
