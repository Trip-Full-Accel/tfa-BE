package com.encore.tfa.controller.post.response;

import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class MyPagePostResponse {

    private final List<PostDetailResponse> postDetailResponseList;

    public MyPagePostResponse(List<PostDetailResponse> postDetailResponseList) {
        this.postDetailResponseList = postDetailResponseList;
    }
}
