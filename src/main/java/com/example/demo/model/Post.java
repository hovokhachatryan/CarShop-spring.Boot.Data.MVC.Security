package com.example.demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.*;

@Entity
@Table(name = "post")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Post {

    @Id
    @GeneratedValue
    @Column
    private int id;
    @Column
    private String mark;
    @Column
    private String model;
    @Column
    private int year;
    @Column
    private double price;
    @Column
    private String color;
    @ManyToOne()
    private User user;
    @Column(name = "user_telephone")
    private int userTelephone;
    @Column
    private String timestamp;
    @Column(name = "pic_url")
    private String picUrl;

}
