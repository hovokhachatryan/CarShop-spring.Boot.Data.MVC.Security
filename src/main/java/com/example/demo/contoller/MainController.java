package com.example.demo.contoller;

import com.example.demo.model.Post;
import com.example.demo.model.UserType;
import com.example.demo.repository.PostRepository;
import com.example.demo.security.CurrentUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

    @Autowired
    PostRepository postRepository;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public String homePage(ModelMap map) {
        map.addAttribute("posts", postRepository.findAll());
        map.addAttribute("post", new Post());
        return "index";
    }


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main(ModelMap map) {
        return "redirect:/home";
    }

    @RequestMapping(value = "/loginSuccess", method = RequestMethod.GET)
    public String loginSuccess() {
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal.getUser().getUserType() == UserType.USER) {
            return "redirect:/addPostView";
        }
        return "redirect:/";
    }
}
