package ru.pizza.models;

import javax.persistence.*;

/**
 * Created by Sulaymon on 17.12.2017.
 */
@Entity
@Table(name = "pizzerias")
public class Pizzerias {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    @Column(unique = true)
    private String address;
    private Long phoneNumber;
}
