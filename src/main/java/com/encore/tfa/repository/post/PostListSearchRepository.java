package com.encore.tfa.repository.post;

import com.encore.tfa.controller.post.response.PostWithUserResponse;

import com.encore.tfa.model.post.Post;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PostListSearchRepository extends JpaRepository<Post, Long> {
//    Page<PostWithUserResponse> getPostListPage(Long userId, Pageable pageable);
    Page<PostWithUserResponse> getPostByUserId(Long userId, Pageable pageable);

}
