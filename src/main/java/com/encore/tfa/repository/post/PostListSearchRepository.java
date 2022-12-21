package com.encore.tfa.repository.post;

import com.encore.tfa.controller.post.response.PostWithUserResponse;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


public interface PostListSearchRepository {
    Page<PostWithUserResponse> getPostListPage(Long userId, Pageable pageable);

}
