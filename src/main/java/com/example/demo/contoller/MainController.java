package com.example.demo.contoller;

import com.example.demo.model.Post;
import com.example.demo.model.UserType;
import com.example.demo.repository.PostRepository;
import com.example.demo.repository.UserRepository;
import com.example.demo.security.CurrentUser;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

@Controller
public class MainController {

    @Autowired
    PostRepository postRepository;

    @Autowired
    UserRepository userRepository;


    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String homePage(ModelMap map, Locale locale) {
        map.addAttribute("posts", postRepository.findAll());
        map.addAttribute("post", new Post());
            return "index";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main(ModelMap map) {
        return "redirect:/home";
    }

    @RequestMapping(value = "/loginSuccess", method = RequestMethod.GET)
    public String loginSuccess(ModelMap map) {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal.getUser().getUserType() == UserType.USER) {
            map.addAttribute("posts", postRepository.findAll());
            map.addAttribute("post", new Post());
            map.addAttribute("user", principal);
            return "indexLogin";
        }
        if (principal.getUser().getUserType() == UserType.ADMIN) {
            map.addAttribute("posts",postRepository.findAll());
            map.addAttribute("users",userRepository.findAllByUserType(UserType.USER));
            map.addAttribute("user", principal);
            return "admin";
        }
        return "redirect:/home";
    }

    @RequestMapping(value = "/*")
    public String errorHandler(){

        if (new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR).getStatusCodeValue()== HttpStatus.INTERNAL_SERVER_ERROR.value()){
            return "error404";
        }
        return "redirect:/home";
    }


}
