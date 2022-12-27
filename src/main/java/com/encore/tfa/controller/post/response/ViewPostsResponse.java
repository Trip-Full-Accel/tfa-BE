package com.encore.tfa.controller.post.response;

import java.util.List;

import com.encore.tfa.model.post.Post;

import lombok.Getter;

@Getter
public class ViewPostsResponse {
	private final List<Post> posts;
	public ViewPostsResponse(List<Post> posts) {
		this.posts = posts;
	}
}
