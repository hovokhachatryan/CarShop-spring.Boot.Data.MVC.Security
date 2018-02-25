package com.example.demo.contoller;

import com.example.demo.model.User;
import com.example.demo.model.UserType;
import com.example.demo.repository.UserRepository;
import com.example.demo.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping(value = "/addUser")
    public String addUser(@ModelAttribute("user") User user) {
        user.setUserType(UserType.USER);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return "index";
    }

    @RequestMapping(value = "/registerView")
    public String register(ModelMap map) {
        map.addAttribute("user", new User());
        return "register";
    }

    @RequestMapping(value = "/loginView",method = RequestMethod.GET)
    public String loginView(ModelMap map) {
        return "login";
    }

    @RequestMapping(value = "/login")
    public String login(@ModelAttribute("user") User user,ModelMap map) {
        User user2 = userRepository.findOneByEmailAndPassword(user.getEmail(), user.getPassword());
        if (user2 != null) {
            map.addAttribute("user", new User());
            return "index";
        }
        return "login";
    }


}
