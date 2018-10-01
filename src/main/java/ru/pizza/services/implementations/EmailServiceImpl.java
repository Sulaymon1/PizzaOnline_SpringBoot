package ru.pizza.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import ru.pizza.models.User;
import ru.pizza.services.interfaces.EmailService;
import ru.pizza.services.interfaces.RegistrationService;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.util.UUID;

/**
 * Created by Sulaymon on 07.12.2017.
 */
@Service
public class EmailServiceImpl implements EmailService {

    private final JavaMailSender javaMailSender;
    @Autowired
    private RegistrationService registrationService1;


    @Autowired
    private EmailServiceImpl(JavaMailSender javaMailSender) {
        this.javaMailSender = javaMailSender;
    }

    @Override
    public void sendMail( User user) {
        MimeMessage message = javaMailSender.createMimeMessage();
        String token = UUID.randomUUID().toString().replace("-", "");
        String subject = "Confirm registration";
        registrationService1.createVerificationToken(user, token);
        try {
            message.setContent("Confirm to register", "text/html");
            MimeMessageHelper messageHelper = new MimeMessageHelper(message, true);
            messageHelper.setTo(user.getEmail());
            messageHelper.setSubject(subject);
            messageHelper.setText("http://localhost:8080"+ "/confirmRegistration?token="+token, true);
        } catch (MessagingException e) {
            throw new IllegalArgumentException(e);
        }

        javaMailSender.send(message);
    }
}
