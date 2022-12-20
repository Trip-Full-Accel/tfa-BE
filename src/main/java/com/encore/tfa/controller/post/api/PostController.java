package com.encore.tfa.controller.post.api;

import com.encore.tfa.controller.post.request.RegisterPostRequest;
import com.encore.tfa.controller.post.request.UpdatePostRequest;
import com.encore.tfa.controller.post.response.PostDetailResponse;
import com.encore.tfa.controller.post.response.PostIdResponse;
import com.encore.tfa.controller.post.response.RegisterPostResponse;
import com.encore.tfa.controller.post.response.UpdatePostResponse;
import com.encore.tfa.service.post.PostService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/post")
@RequiredArgsConstructor
public class PostController {

    private final PostService postService;

    @GetMapping("/detail/{post-id}")
    public ResponseEntity<PostDetailResponse> postDetail(@PathVariable("post-id") Long postId) {
        return ResponseEntity.ok().body(postService.findPostById(postId));
    }

    @PostMapping("/create")
    public ResponseEntity<RegisterPostResponse> registerPost(@RequestBody RegisterPostRequest request) {
        return ResponseEntity.ok().body(postService.registerPost(request));
    }

    @PutMapping("/update/{post-id}")
    public ResponseEntity<UpdatePostResponse> updatePost(@PathVariable("post-id") Long postId, @RequestBody UpdatePostRequest request) {
        return ResponseEntity.ok().body(postService.updatePost(postId, request));
    }

    @DeleteMapping("/delete/{post-id}")
    public ResponseEntity<PostIdResponse> deletePost(@PathVariable("post-id") Long postId) {
        return ResponseEntity.ok().body(new PostIdResponse(postService.deletePostById(postId)));
    }

}
