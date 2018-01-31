package ru.pizza;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.lang.reflect.Field;
import java.util.Scanner;
import java.util.UUID;

/**
 * Created by Sulaymon on 14.12.2017.
 */
public class Main {
    public static void main(String[] args) throws ClassNotFoundException, IllegalAccessException, InstantiationException {
 /*       BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        String admin = "123user";
        String encode = bCryptPasswordEncoder.encode(admin);
        System.out.println(admin+" : "+encode);
        boolean matches = bCryptPasswordEncoder.matches(admin, encode);
        System.out.println(matches);*/
        Scanner scanner = new Scanner(System.in);
        final String PACKAGE_VALIDATOR = "ru.pizza.models";
        String className ;
        className = PACKAGE_VALIDATOR + "." + scanner.next();
        //System.out.println(classes);
        Class aClass = Class.forName(className);

        Object anObject = aClass.newInstance();

        Field fields[] = aClass.getDeclaredFields();

        for (Field field: fields ) {
            System.out.println("Enter value of field:");
            System.out.println(field.getType()+ " " + field.getName());
            Object fieldValue;

            switch (field.getType().getName()){
                case "int": fieldValue = scanner.nextInt(); break;
                case "java.lang.String": fieldValue = scanner.next();break;
                default: throw new IllegalArgumentException("Не поддерживаемый тип");
            }
            field.setAccessible(true);
            field.set(anObject, fieldValue);
        }

        System.out.println(anObject);
    }
}
