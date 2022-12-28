package com.encore.tfa.controller.post.response;

import java.time.LocalDateTime;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class PostDetailResponse {
    private Long userId;
    private String nickname;
    private Long postId;
    private String title;
    private String content;
    private Integer hits;
    private String url;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public PostDetailResponse(Long userId, String nickname, Long postId, String title, String content, Integer hits,
        String url, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.userId = userId;
        this.nickname = nickname;
        this.postId = postId;
        this.title = title;
        this.content = content;
        this.hits = hits;
        this.url = url;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }
}
