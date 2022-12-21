package com.encore.tfa.controller.post.request;

import lombok.Getter;

import java.time.LocalDateTime;

@Getter
public class UpdatePostRequest {

    private final Long userId;
    private final String title;
    private final String content;
    private final String url;

    public UpdatePostRequest(Long userId, String title, String content, String url) {
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.url = url;
    }
}
