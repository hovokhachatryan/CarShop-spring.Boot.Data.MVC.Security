package com.example.demo.contoller;

import com.example.demo.model.Post;
import com.example.demo.model.User;
import com.example.demo.model.UserType;
import com.example.demo.repository.PostRepository;
import com.example.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    @Autowired
    PostRepository postRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @PostMapping(value = "/addUser")
    public String addUser(@ModelAttribute("user") User user) {
        if (user.getName().equals("") || user.getSurname().equals("") || user.getEmail().equals("") || user.getPassword().equals("")) {
            return "redirect:/registerView";
        }
        user.setUserType(UserType.USER);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepository.save(user);
        return "redirect:/home";
    }

    @RequestMapping(value = "/registerView")
    public String register(ModelMap map) {
        map.addAttribute("user", new User());
        return "register";
    }

    @RequestMapping(value = "/loginView", method = RequestMethod.GET)
    public String loginView(ModelMap map) {
        return "login";
    }

    @GetMapping(value = "/profile")
    public String getProfile(@RequestParam("id") int id, ModelMap map) {
        User user = userRepository.findOneById(id);
        List<Post> posts = postRepository.findAllByUserId(id);
        map.addAttribute("posts", posts);
        map.addAttribute("user", user);
        return "profile";
    }


}
