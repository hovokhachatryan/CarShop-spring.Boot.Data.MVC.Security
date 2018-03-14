package com.example.demo.contoller;

import com.example.demo.model.Post;
import com.example.demo.model.User;
import com.example.demo.model.UserType;
import com.example.demo.repository.PostRepository;
import com.example.demo.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

@Controller
public class MainController {

    @Autowired
    PostRepository postRepository;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String homePage(ModelMap map, Locale locale) {
        List<String> marks = new LinkedList<>();
        List<Integer> year = new LinkedList<>();
        marks.add("MERSEDES");
        marks.add("BMW");
        marks.add("AUDI");
        marks.add("LEXUS");
        marks.add("TOYOTA");
        marks.add("OPEL");
        for (int i = 2000; i < 2019; i++) {
            year.add(i);
        }
        map.addAttribute("marks", marks);
        map.addAttribute("years", year);
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
        return "redirect:/home";
    }
}
