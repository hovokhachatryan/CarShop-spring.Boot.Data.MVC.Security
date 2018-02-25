package com.example.demo.contoller;

import com.example.demo.model.Post;
import com.example.demo.model.User;
import com.example.demo.repository.PostRepository;
import com.example.demo.security.CurrentUser;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.List;

@Controller
public class PostController {

    @Autowired
    PostRepository postRepository;

    @Value("${eshop.product.upload.path}")
    private String imageUploadPath;

    @RequestMapping(value = "/addPostView",method = RequestMethod.GET)
    public String addPostView(ModelMap map) {
        List<String> marks = new LinkedList<>();
        marks.add("MERSEDES"); marks.add("BMW");marks.add("AUDI");marks.add("LEXUS");marks.add("TOYOTA");marks.add("OPEL");
        map.addAttribute("marks",marks);
        map.addAttribute("post", new Post());
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        return "addPost";
    }

    @RequestMapping(value = "/addPost", method = RequestMethod.POST)
    public String addBrand(@ModelAttribute(name = "post") Post post, @RequestParam(value = "image")MultipartFile file, @RequestParam(value = "id")User user) throws IOException {
        File dir = new File(imageUploadPath);
        if (!dir.exists()) {
            dir.mkdir();
        }
        String picName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
        File picture = new File(imageUploadPath + picName);
        file.transferTo(picture);
        post.setPicUrl(picName);
        post.setUser(user);
        postRepository.save(post);
        return "redirect:/home";
    }

    @RequestMapping(value = "/image", method = RequestMethod.GET)
    public void getImageAsByteArray(HttpServletResponse response, @RequestParam("fileName") String fileName) throws IOException {
        InputStream in = new FileInputStream("D:\\mvc\\" + fileName);
        response.setContentType(MediaType.IMAGE_JPEG_VALUE);
        IOUtils.copy(in, response.getOutputStream());
    }

}
