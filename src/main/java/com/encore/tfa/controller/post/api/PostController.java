package com.encore.tfa.controller.post.api;

import com.encore.tfa.controller.post.request.RegisterPostRequest;
import com.encore.tfa.controller.post.request.UpdatePostRequest;
import com.encore.tfa.controller.post.response.*;
import com.encore.tfa.model.post.Post;
import com.encore.tfa.service.post.PostService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/posts")
@RequiredArgsConstructor
public class PostController {

    private final PostService postService;

    @GetMapping("/{post-id}")
    public ResponseEntity<PostDetailResponse> postDetail(@PathVariable("post-id") Long postId) {
        return ResponseEntity.ok().body(postService.findPostById(postId));
    }

    @PostMapping()
    public ResponseEntity<RegisterPostResponse> registerPost(@RequestBody RegisterPostRequest request) {
        return ResponseEntity.ok().body(postService.registerPost(request));
    }

    @PutMapping("/{post-id}")
    public ResponseEntity<UpdatePostResponse> updatePost(@PathVariable("post-id") Long postId, @RequestBody UpdatePostRequest request) {
        return ResponseEntity.ok().body(postService.updatePost(postId, request));
    }

    @DeleteMapping("/{post-id}")
    public ResponseEntity<PostIdResponse> deletePost(@PathVariable("post-id") Long postId) {
        return ResponseEntity.ok().body(new PostIdResponse(postService.deletePostById(postId)));
    }

    @GetMapping("/{user-id}")
    public ResponseEntity<MyPagePostResponse> myPagePost(@PathVariable("user-id") Long userId){
        return ResponseEntity.ok().body(postService.findPostByUserId(userId));
    }

}
