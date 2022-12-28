package com.encore.tfa.controller.post.response;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class PostsResponse {
	private final Long userId;
	private final String nickname;
	private final Long postId;
	private final String title;
	private final String content;
	private final Integer hits;
	private final String url;

	public PostsResponse(Long userId, String nickname, Long postId, String title, String content, Integer hits, String url) {
		this.userId = userId;
		this.nickname = nickname;
		this.postId = postId;
		this.title = title;
		this.content = content;
		this.hits = hits;
		this.url = url;
	}
}
