package com.encore.tfa.controller.post.response;

import lombok.Getter;

@Getter
public class PostWithUserResponse {

    private final Long postId;
    private final Long userId;
    private final String title;
    private final String content;


    public PostWithUserResponse(Long postId, Long userId, String title, String content) {
        this.postId = postId;
        this.userId = userId;
        this.title = title;
        this.content = content;
    }
}
