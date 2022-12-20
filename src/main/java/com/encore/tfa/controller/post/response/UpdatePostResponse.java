package com.encore.tfa.controller.post.response;

import lombok.Builder;
import lombok.Getter;

import java.time.LocalDateTime;

@Getter
@Builder
public class UpdatePostResponse {

    private final Long postId;
    private final String title;
    private final String content;
    private final Integer hits;
    private final LocalDateTime modifiedDate;

    public UpdatePostResponse(Long postId, String title, String content, Integer hits, LocalDateTime modifiedDate) {
        this.postId = postId;
        this.title = title;
        this.content = content;
        this.hits = hits;
        this.modifiedDate = modifiedDate;
    }
}
