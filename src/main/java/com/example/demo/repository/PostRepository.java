package com.example.demo.repository;

import com.example.demo.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PostRepository extends JpaRepository<Post,Integer> {

    List<Post> findAllByUserId(int id);
    List<Post> findAllByMarkAndYearAndPrice(String mark,int year,double price);
    List<Post> findAllByMarkAndYear(String mark,int year);
    List<Post> findAllByMarkAndPrice(String mark,int year);
    List<Post> findAllByYearAndPrice(int year,double price);
    List<Post> findAllByMark(String mark);
    List<Post> findAllByYear(int year);
    List<Post> findAllByPrice(int price);
}
