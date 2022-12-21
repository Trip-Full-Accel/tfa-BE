package com.encore.tfa.service.post.dto;

import lombok.Builder;
import lombok.Getter;

import java.time.LocalDateTime;

@Getter
@Builder
public class PostUpdateDTO {
    private String title;
    private String content;
    private String url;

    public PostUpdateDTO(String title, String content, String url) {
        this.title = title;
        this.content = content;
        this.url = url;
    }
}
