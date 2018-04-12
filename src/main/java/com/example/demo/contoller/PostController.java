package com.example.demo.contoller;

import com.example.demo.model.Picture;
import com.example.demo.model.Post;
import com.example.demo.model.User;
import com.example.demo.repository.PictureRepository;
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
import java.util.Locale;

@Controller
public class PostController {

    @Autowired
    PostRepository postRepository;

    @Autowired
    PictureRepository pictureRepository;

    @Value("${eshop.product.upload.path}")
    private String imageUploadPath;

    @RequestMapping(value = "/addPostView", method = RequestMethod.GET)
    public String addPostView(ModelMap map) {
        List<String> marks = new LinkedList<>();
        List<Integer> year = new LinkedList<>();
        marks.add("Alfa Romeo");
        marks.add("Audi");
        marks.add("Bentley");
        marks.add("Bmw");
        marks.add("Bugatti");
        marks.add("Cadillac");
        marks.add("Chevrolet");
        marks.add("Citroen");
        marks.add("Ford");
        marks.add("Honda");
        marks.add("Hummer");
        marks.add("Hyundai");
        marks.add("Kia");
        marks.add("Land Rover");
        marks.add("Lexus");
        marks.add("Mazda");
        marks.add("Mercedes-Benz");
        marks.add("Mitshubishi");
        marks.add("Nissan");
        marks.add("Niva");
        marks.add("Opel");
        marks.add("Porsche");
        marks.add("Toyota");

        for (int i = 1990; i < 2019; i++) {
            year.add(i);
        }
        map.addAttribute("marks", marks);
        map.addAttribute("years", year);
        map.addAttribute("post", new Post());
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("currentUser", principal);
        return "addPost";
    }

    @RequestMapping(value = "/addPost", method = RequestMethod.POST)
    public String addBrand(@ModelAttribute(name = "post") Post post, @RequestParam(value = "image1") MultipartFile file1, @RequestParam(value = "image2") MultipartFile file2,
                           @RequestParam(value = "image3") MultipartFile file3, @RequestParam(value = "image4") MultipartFile file4,
                           @RequestParam(value = "image5") MultipartFile file5, @RequestParam(value = "image6") MultipartFile file6, @RequestParam(value = "id") User user) throws IOException {

        if (post.getMark() == null || post.getModel() == null || post.getPrice() == 0 || post.getYear() == 0 || post.getColor() == null) {
            return "redirect:/addPostView";
        } else  {
            File dir = new File(imageUploadPath);
            if (!dir.exists()) {
                dir.mkdir();
            }
            String pic1 = System.currentTimeMillis() + "_1" + file1.getOriginalFilename();
            File picture1 = new File(imageUploadPath + pic1);
            file1.transferTo(picture1);

            String pic2 = System.currentTimeMillis() + "_2" + file2.getOriginalFilename();
            File picture2 = new File(imageUploadPath + pic2);
            file2.transferTo(picture2);

            String pic3 = System.currentTimeMillis() + "_3" + file3.getOriginalFilename();
            File picture3 = new File(imageUploadPath + pic3);
            file3.transferTo(picture3);

            String pic4 = System.currentTimeMillis() + "_4" + file4.getOriginalFilename();
            File picture4 = new File(imageUploadPath + pic4);
            file4.transferTo(picture4);

            String pic5 = System.currentTimeMillis() + "_5" + file5.getOriginalFilename();
            File picture5 = new File(imageUploadPath + pic5);
            file5.transferTo(picture5);

            String pic6 = System.currentTimeMillis() + "_6" + file6.getOriginalFilename();
            File picture6 = new File(imageUploadPath + pic6);
            file6.transferTo(picture6);

            Picture picture = new Picture();
            picture.setPic1(pic1);
            picture.setPic2(pic2);
            picture.setPic3(pic3);
            picture.setPic4(pic4);
            picture.setPic5(pic5);
            picture.setPic6(pic6);
            pictureRepository.save(picture);
            post.setPicture(picture);
            post.setUser(user);
            postRepository.save(post);
        }
        return "redirect:/loginSuccess";
    }


    @RequestMapping(value = "/image", method = RequestMethod.GET)
    public void getImageAsByteArray(HttpServletResponse response, @RequestParam("fileName") String fileName) throws IOException {
        InputStream in = new FileInputStream("D:\\mvc\\" + fileName);
        response.setContentType(MediaType.IMAGE_JPEG_VALUE);
        IOUtils.copy(in, response.getOutputStream());
    }

    @GetMapping(value = "/getPost")
    public String getPost(@RequestParam("id") int id, ModelMap map,Locale locale) {
        Post post = postRepository.getOne(id);
        map.addAttribute("post", post);
        return "postView";
    }

    @GetMapping(value = "/getPostLogin")
    public String getPostLogin(@RequestParam("id") int id, ModelMap map) {
        Post post = postRepository.getOne(id);
        map.addAttribute("post", post);
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("user",principal);
        return "postViewLogin";
    }

    @GetMapping(value = "/getPostByMark")
    public String getPostByMark(@RequestParam("mark") String mark, ModelMap map) {
        List<Post> cars = postRepository.findAllByMark(mark);
        map.addAttribute("posts", cars);
        return "resultPosts";
    }

    @GetMapping(value = "/getPostByMarkLogin")
    public String getPostByMarkLogin(@RequestParam("mark") String mark, ModelMap map) {
        List<Post> cars = postRepository.findAllByMark(mark);
        map.addAttribute("posts", cars);
        CurrentUser principal = (CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        map.addAttribute("user",principal);
        return "resultPostsLogin";
    }

    @GetMapping(value = "/deleteMyPost")
    public String deletePostUser(@RequestParam("id") int id) {
        postRepository.delete(id);
        return "redirect:/loginSuccess";
    }

    @GetMapping(value = "/deletePost")
    public String deletePost(@RequestParam("id") int id) {
        postRepository.delete(id);
        return "redirect:/adminPage";
    }

}
