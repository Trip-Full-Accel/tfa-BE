package com.encore.tfa.controller.board.api;

import com.encore.tfa.model.post.PostEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/post")
public class PostController {

    @GetMapping("/{post-id}")
    public ResponseEntity<PostEntity> getPostDetail(@PathVariable("post-id") Long postId) {
        return ResponseEntity.ok().body();
    }


}
