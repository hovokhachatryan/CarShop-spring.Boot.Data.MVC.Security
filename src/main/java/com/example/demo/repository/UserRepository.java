package com.example.demo.repository;

import com.example.demo.model.User;
import com.example.demo.model.UserType;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface UserRepository  extends JpaRepository<User,Integer> {

    User findOneByEmail(String email);
    User findOneById(int id);
    List<User> findAllByUserType(UserType userType);
    public boolean existsByEmail(String email);

}
