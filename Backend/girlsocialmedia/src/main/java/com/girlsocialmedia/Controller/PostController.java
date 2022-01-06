package com.girlsocialmedia.Controller;

import com.girlsocialmedia.Model.PostModel;
import com.girlsocialmedia.Repository.PostRepository;
import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.net.http.HttpResponse;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@RestController
public class PostController {

    @Autowired
    private PostRepository _PostRepository;

    @RequestMapping(value = "/posts", method = RequestMethod.GET)
    public List<PostModel> GetAllPosts() {
        return _PostRepository.findAll();
    }

    @RequestMapping(value = "/posts/{id}", method = RequestMethod.GET)
    public Optional<PostModel> GetPostById(@PathVariable Integer id) {
        return _PostRepository.findById(id.longValue());
    }

    @RequestMapping(value = "/posts/new", method = RequestMethod.POST)
    public Boolean NewPost(@RequestBody PostModel post) {
        _PostRepository.save(post);
        return true;
    }

    @RequestMapping(value = "/posts/remove/{id}", method = RequestMethod.DELETE)
    public HttpStatus DeletePost(@PathVariable Long id){
        try {
            _PostRepository.deleteAllById(Collections.singleton(id));
            return HttpStatus.OK;
        } catch (Error err) {
            return HttpStatus.BAD_REQUEST;
        }
    }
}
