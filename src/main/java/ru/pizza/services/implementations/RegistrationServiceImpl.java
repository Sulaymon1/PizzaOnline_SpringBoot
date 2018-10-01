package ru.pizza.services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.pizza.models.VerificationToken;
import ru.pizza.exceptions.EmailExistsException;
import ru.pizza.models.User;
import ru.pizza.repositories.UserRepository;
import ru.pizza.repositories.VerificationTokenRepository;
import ru.pizza.services.interfaces.RegistrationService;

/**
 * Created by Sulaymon on 08.12.2017.
 */
@Service
public class RegistrationServiceImpl implements RegistrationService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private VerificationTokenRepository verificationTokenRepository;

    @Autowired
    private EmailServiceImpl emailService;


    @Override
    public void createUserAccount(User user) throws EmailExistsException {
        if (!userRepository.findByEmailOrPhoneNumber(user.getEmail(),user.getPhoneNumber()).isPresent()){
            userRepository.save(user);
            emailService.sendMail(user);
        }
        else throw new EmailExistsException("There is an account with that email address:" + user.getEmail());
    }


    @Override
    public User getUserByToken(String token){
        return verificationTokenRepository.findByToken(token).getUser();
    }

    @Override
    public VerificationToken getVerificationToken(String verificationToken) {
        return verificationTokenRepository.findByToken(verificationToken);
    }

    @Override
    public void createVerificationToken(User user, String token) {
        VerificationToken verificationToken = new VerificationToken(user, token);
        verificationTokenRepository.save(verificationToken);
    }

    @Override
    public void confirmPassword(User user){
        userRepository.save(user);
    }

    @Override
    public void remove(String token){
        verificationTokenRepository.deleteByToken(token);
    }
}
