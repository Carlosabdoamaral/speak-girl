package com.girlsocialmedia.Controller;

import com.girlsocialmedia.Model.UserModel;
import com.girlsocialmedia.Repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

@RestController
public class UserController {

    @Autowired
    private UserRepository _UserRepository;

    @GetMapping("/users")
    public List<UserModel> getUsers() {
        return _UserRepository.findAll();
    }

    @PostMapping("/users/new")
    public HttpStatus newUser(@RequestBody UserModel u) {
        try {
            _UserRepository.save(u);
            return HttpStatus.OK;
        } catch(Error e) {
            return HttpStatus.BAD_REQUEST;
        }
    }

    @DeleteMapping("/users/delete/{id}")
    public HttpStatus deleteUser(@PathVariable Long id){
        try {
            _UserRepository.deleteAllById(Collections.singleton(id));
            return HttpStatus.OK;

        } catch(Error e) {
            return HttpStatus.BAD_REQUEST;
        }
    }
}
