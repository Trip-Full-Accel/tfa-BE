package com.encore.tfa.controller.post.request;

import lombok.Getter;

@Getter
public class PostListGetByUserIdRequest {

    private final Long userId;
    private final int pageNum;
    private final int amount;

    public PostListGetByUserIdRequest(Long userId, int pageNum, int amount) {
        this.userId = userId;
        this.pageNum = pageNum;
        this.amount = amount;
    }
}
