package com.encore.tfa.controller.post.response;

import lombok.Builder;
import lombok.Getter;

import java.time.LocalDateTime;

@Getter
@Builder
public class RegisterPostResponse {

    private final Long postId;
    private final Long userId;
    private final String title;
    private final String content;
    private final String url;

    public RegisterPostResponse(Long postId, Long userId, String title, String content, String url) {
        this.postId = postId;
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.url = url;
    }
}
