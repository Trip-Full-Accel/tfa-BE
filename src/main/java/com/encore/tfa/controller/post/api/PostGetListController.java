package com.encore.tfa.controller.post.api;

import com.encore.tfa.controller.post.request.PostListGetByUserIdRequest;
import com.encore.tfa.controller.post.response.PostListGetByUserIdResponse;
import com.encore.tfa.service.post.PostGetListService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/post-lists")
public class PostGetListController {

    private final PostGetListService postGetListService;

    public PostGetListController(PostGetListService postGetListService) {
        this.postGetListService = postGetListService;
    }

    @GetMapping
    public ResponseEntity<PostListGetByUserIdResponse> getPostListByUserId(
            @ModelAttribute PostListGetByUserIdRequest postListGetByUserIdRequest){
        return ResponseEntity.ok().body(postGetListService.getPostListLByUserId(postListGetByUserIdRequest));
    }
}
