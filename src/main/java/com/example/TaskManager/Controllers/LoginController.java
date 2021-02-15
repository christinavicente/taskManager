package com.example.TaskManager.Controllers;

import com.example.TaskManager.entities.User;
import com.example.TaskManager.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    UserService userService;

    public String getCredentials(@RequestParam String name, @RequestParam String password ){


        return "login";
    }

    public String displayLoggedIn(){

        return "success";
    }

    public String displayError(){

        return "error";
    }

    private boolean authenticate(String name, String password){
        for(User user:userService.getAllUsers()){
                if((user.getName().equals(name))&&(user.getPassword().equals(password))){
                    return true;
                }
            }
        return false;
    }

}
