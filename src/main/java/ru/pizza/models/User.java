package ru.pizza.models;

import lombok.*;
import org.hibernate.validator.constraints.Email;
import ru.pizza.security.Role.Role;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

/**
 * Created by Sulaymon on 07.12.2017.
 */
@Getter
@Setter
@Entity
@Table(name = "users")
@AllArgsConstructor
@Builder
@ToString
@EqualsAndHashCode
public class User {

    public User() {
        this.enabled = false;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "enabled")
    private boolean enabled;

    @Column(name = "name")
    private String name;


    @NotNull
    @Email
    @Column(name = "email", unique = true)
    private String email;

    @NotNull
    @Column(name = "phoneNumber", unique = true)
    private Long phoneNumber;

    //@OneToMany(fetch = FetchType.LAZY, mappedBy = "users")
    //private List<Pizza> pizzas;

    @Column(name = "hashPassword")
    private String hashPassword;


    @Enumerated(EnumType.STRING)
    private Role role;
}
