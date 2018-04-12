package com.example.demo.contoller;

import com.example.demo.model.Post;
import com.example.demo.model.User;
import com.example.demo.model.UserType;
import com.example.demo.repository.PostRepository;
import com.example.demo.repository.UserRepository;
import com.example.demo.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
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
        if (user.getName().equals("") || user.getSurname().equals("") || user.getEmail().equals("") || user.getPassword().equals("")||userRepository.existsByEmail(user.getEmail())) {
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

    @GetMapping(value = "/update")
    public String update(@RequestParam("name") String name, @RequestParam("surname") String surname, @RequestParam("email") String email, @RequestParam("password") String password
            , @RequestParam("id") int id) {
        User user = userRepository.getOne(id);
        user.setName(name);
        user.setSurname(surname);
        user.setEmail(email);
        String userPassword = user.getPassword();
        if (!password.equals("")) {
            user.setPassword(passwordEncoder.encode(password));
        }

        user.setId(id);
        userRepository.save(user);
        return "redirect:/loginSuccess";
    }

    @RequestMapping(value = "/loginView", method = RequestMethod.GET)
    public String loginView(ModelMap map) {
        return "login";
    }

    @GetMapping(value = "/profile")
    public String getProfile(@RequestParam("id") int id, ModelMap map) {
        User user = userRepository.findOneById(id);
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<Post> posts = postRepository.findAllByUserId(principal.getId());
        map.addAttribute("posts", posts);
        map.addAttribute("user", principal);
        return "profile";
    }

    @GetMapping(value = "/profileLook")
    public String getProfileLook(@RequestParam("id") int id, ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user = userRepository.findOneById(id);
        if (principal.getUser().getId()==id){
            return "redirect:/profile?id=" + id;
        }
        List<Post> posts = postRepository.findAllByUserId(id);
        map.addAttribute("posts", posts);
        map.addAttribute("curentUser", user);
        map.addAttribute("user", principal);
        return "profileLook";
    }

}
