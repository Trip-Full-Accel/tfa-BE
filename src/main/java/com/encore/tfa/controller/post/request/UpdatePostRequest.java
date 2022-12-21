package com.encore.tfa.controller.post.request;

import lombok.Getter;

import java.time.LocalDateTime;

@Getter
public class UpdatePostRequest {

    private final Long userId;
    private final String title;
    private final String content;
    private final LocalDateTime modifiedDate;

    public UpdatePostRequest(Long userId, String title, String content, LocalDateTime modifiedDate) {
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.modifiedDate = modifiedDate;
    }
}
