package com.encore.tfa.controller.post.api;

import com.encore.tfa.controller.post.request.PostRequest;
import com.encore.tfa.controller.post.response.PostResponse;
import com.encore.tfa.service.post.PostService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/post")
@RequiredArgsConstructor
public class PostController {

    private final PostService postService;

    // 전체 게시글 조회
    @GetMapping("/list")
    public List<PostResponse> postList() {
        return postService.getPostList();
    }

    // 게시글 상세 조회
    @GetMapping("/detail/{id}")
    public PostResponse postDetail(@PathVariable Long id) {
        return postService.getPostDetail(id);
    }

    // 게시글 생성
    @PostMapping("/create")
    public String postCreate(@RequestBody PostRequest params) {
        return "id:" + postService.savePost(params) + " post created!";
    }

    // 게시글 수정
    @PutMapping("/update/{id}")
    public String postUpdate(@PathVariable Long id, @RequestBody PostRequest params) {
        return "id:" + postService.updatePost(id, params) + " post updated!";
    }

    // 게시글 삭제
    @DeleteMapping("/delete/{id}")
    public String postDelete(@PathVariable Long id) {
        return "id:" + postService.deletePost(id) + " post deleted...";
    }

}
