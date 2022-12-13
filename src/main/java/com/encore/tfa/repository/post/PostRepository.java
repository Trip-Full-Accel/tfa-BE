package com.encore.tfa.repository.post;

import com.encore.tfa.model.post.PostEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PostRepository extends JpaRepository<PostEntity, Long> {

}
