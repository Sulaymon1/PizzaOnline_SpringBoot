package ru.pizza.exceptions;

/**
 * Created by Sulaymon on 08.12.2017.
 */
@SuppressWarnings("serial")
public class EmailExistsException extends Throwable {

    public EmailExistsException(final String message) {
        super(message);
    }

}

