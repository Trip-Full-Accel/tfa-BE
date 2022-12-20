package com.encore.tfa.controller.post.response;

import lombok.Builder;
import lombok.Getter;

import java.time.LocalDateTime;

@Getter
@Builder
public class PostDetailResponse {
    private Long userId;
    private Long postId;
    private String title;
    private String content;
    private Integer hits;
    private LocalDateTime createdTime;
    private LocalDateTime modifiedTime;

    public PostDetailResponse(Long userId, Long postId, String title, String content, Integer hits, LocalDateTime createdTime, LocalDateTime modifiedTime) {
        this.userId = userId;
        this.postId = postId;
        this.title = title;
        this.content = content;
        this.hits = hits;
        this.createdTime = createdTime;
        this.modifiedTime = modifiedTime;
    }
}
