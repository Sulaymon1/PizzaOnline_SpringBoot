package ru.pizza.models;


import lombok.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;

@Setter
@Getter
@Entity
@Table(name = "carts")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(targetEntity = Pizza.class)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Pizza pizza;

    @ManyToOne(targetEntity = User.class, fetch = FetchType.LAZY)
    private User user;

    private Long count;

}
