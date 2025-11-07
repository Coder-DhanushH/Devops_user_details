package com.user.details.service;
import com.user.details.model.User;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class UserService {
    public List<User> getAllUsers() {
        return List.of(
            new User("Dhanush H","Dhanu@gmail.com","7859468520"),
            new User("Doraemon","Doraemon@gmail.com","7859412200"),
            new User("Klien","Klien@gmail.com","9146468520")
        );
    }
}
