package com.zhanglei.springboot.service;

import com.zhanglei.springboot.entity.User;
import org.springframework.stereotype.Service;


@Service("UserService")
public class UserService {
    public User findByUsername(User user){
        User usertest = new User("test", "test", "test");
        return usertest;
    }
    public User findUserById(String userId) {
        User usertest = new User("test", "test", "test");
        return usertest;
    }

}
