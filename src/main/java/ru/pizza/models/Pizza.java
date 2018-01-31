package ru.pizza.models;

import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.beans.factory.annotation.*;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Created by Sulaymon on 05.12.2017.
 */
@Setter
@Getter
@Entity
@Table(name = "products")
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class Pizza {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    private String pizzaName;

    @NotNull
    @Min(0)
    private Long price;

    @NotNull
    @Size(min = 5, max = 500)
    private String description;

    @NotNull
    private Long count;

    //@ManyToOne(fetch =FetchType.LAZY)
    //@JoinColumn(name = "one_id")
   // private User user;
}
