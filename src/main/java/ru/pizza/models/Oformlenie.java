package ru.pizza.models;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

/**
 * Created by Sulaymon on 17.12.2017.
 */
@Entity
@Getter
@Setter
@ToString
@Builder
public class Oformlenie {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String payment;
    private Long id_magaz;
    private String radiotype;
    private String streetAndHouse;
    private String floor;
    private String roomNumber;
    private String domofon;
}
