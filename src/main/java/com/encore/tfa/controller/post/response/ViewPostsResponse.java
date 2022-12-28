package com.encore.tfa.controller.post.response;

import java.util.List;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class ViewPostsResponse {
	private final List<PostsResponse> postsResponses;

	public ViewPostsResponse(List<PostsResponse> postsResponses) {
		this.postsResponses = postsResponses;
	}
}
