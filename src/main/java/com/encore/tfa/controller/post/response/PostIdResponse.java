package com.encore.tfa.controller.post.response;

import lombok.Getter;

@Getter
public class PostIdResponse {

    private final Long postId;

    public PostIdResponse(Long postId) {
        this.postId = postId;
    }
}
