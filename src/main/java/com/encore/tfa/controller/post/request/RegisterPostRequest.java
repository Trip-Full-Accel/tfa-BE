package com.encore.tfa.controller.post.request;

import lombok.Getter;
import java.time.LocalDateTime;

@Getter
public class RegisterPostRequest {

    private final Long userId;
    private final String title;
    private final String content;
    private final LocalDateTime createdTime;

    public RegisterPostRequest(Long userId, String title, String content, LocalDateTime createdTime) {
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.createdTime = createdTime;
    }
}
