package com.encore.tfa.controller.post.response;

import lombok.Getter;

import java.util.List;

@Getter
public class PostListGetByUserIdResponse {
    private final int endPage;
    private final int selectPage;
    private final int amountItem;
    private final List<PostWithUserResponse> postWithUserResponse;

    public PostListGetByUserIdResponse(int endPage, int selectPage, int amountItem, List<PostWithUserResponse> postWithUserResponse) {
        this.endPage = endPage;
        this.selectPage = selectPage;
        this.amountItem = amountItem;
        this.postWithUserResponse = postWithUserResponse;
    }
}
