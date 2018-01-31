package ru.pizza.launcher;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

/**
 * Created by Sulaymon on 24.11.2017.
 */

@SpringBootApplication
@ComponentScan("ru.pizza")
@EntityScan(basePackages = {"ru.pizza.models", "ru.pizza.form", "ru.pizza.entities"})
@EnableJpaRepositories(basePackages = "ru.pizza.repositories")
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
