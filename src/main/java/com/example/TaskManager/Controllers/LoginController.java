package com.example.TaskManager.Controllers;

import com.example.TaskManager.entities.User;
import com.example.TaskManager.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String getCredentials(ModelMap model, @RequestParam String name, @RequestParam String password ){
        User user;
        if(authenticate(name,password)){
            model.addAttribute("Username", name);
            return "login";
        }else {
            model.put("Error", "Not-Found-Error");
        }

        return "login";
    }

    @RequestMapping(value = "/login", method=RequestMethod.GET)
    public String loadTasks(){

        return "display-tasks";
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
