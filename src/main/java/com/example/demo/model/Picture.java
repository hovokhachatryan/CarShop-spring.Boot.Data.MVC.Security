package com.example.demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Table(name = "picture")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Picture {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private int id;
    @Column
    private String pic1;
    @Column
    private String pic2;
    @Column
    private String pic3;
    @Column
    private String pic4;
    @Column
    private String pic5;
    @Column
    private String pic6;


}
