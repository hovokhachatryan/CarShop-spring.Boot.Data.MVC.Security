package com.example.demo.repository;

import com.example.demo.model.Picture;

import org.springframework.data.jpa.repository.JpaRepository;


public interface PictureRepository extends JpaRepository<Picture,Integer> {


}
