package com.encore.tfa.service.post.dto;

import lombok.Builder;
import lombok.Getter;

import java.time.LocalDateTime;

@Getter
@Builder
public class PostUpdateDTO {
    private String title;
    private String content;
    private LocalDateTime modifiedDate;

    public PostUpdateDTO(String title, String content, LocalDateTime modifiedDate) {
        this.title = title;
        this.content = content;
        this.modifiedDate = modifiedDate;
    }
}
