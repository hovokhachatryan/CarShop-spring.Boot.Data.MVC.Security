package com.example.demo.contoller;

import com.example.demo.model.UserType;
import com.example.demo.repository.PostRepository;
import com.example.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    @Autowired
    PostRepository postRepository;

    @Autowired
    UserRepository userRepository;

    @RequestMapping(value = "/adminPage",method = RequestMethod.GET)
    public String adminPage(ModelMap map){
        map.addAttribute("posts",postRepository.findAll());
        map.addAttribute("users",userRepository.findAllByUserType(UserType.USER));
        return "admin";
    }

    @GetMapping(value = "/deleteUser")
    public String deleteUser(@RequestParam("id") int id) {
        userRepository.delete(id);
        return "redirect:/adminPage";
    }

    @GetMapping(value = "/deletePost")
    public String deletePost(@RequestParam("id") int id) {
        postRepository.delete(id);
        return "redirect:/adminPage";
    }



}
