package com.encore.tfa.controller.post.request;

import lombok.Getter;

@Getter
public class RegisterPostRequest {

    private final Long userId;
    private final String title;
    private final String content;
    private final String url;

    public RegisterPostRequest(Long userId, String title, String content, String url) {
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.url = url;
    }
}
