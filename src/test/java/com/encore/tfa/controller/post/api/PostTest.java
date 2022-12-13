package com.encore.tfa.controller.post.api;

import com.encore.tfa.model.post.PostEntity;
import com.encore.tfa.repository.post.PostRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import static org.assertj.core.api.Assertions.assertThat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.restdocs.AutoConfigureRestDocs;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

//@WebMvcTest(controllers = PostController.class)
//@AutoConfigureRestDocs
@SpringBootTest
public class PostTest {

    @Autowired
    PostRepository postRepository;

    @Test
    @DisplayName("post insert test")
    void save() {
        PostEntity params = PostEntity.builder()
                .title("1번 게시글 제목")
                .content("1번 게시글 내용")
                .writer("kgh")
                .hits(0)
                .deleteYn('N')
                .build();
        System.out.println("dd");
        // 2. 게시글 저장
        postRepository.save(params);

        // 3. 1번 게시글 정보 조회
        PostEntity entity = postRepository.findById((long) 1).get();
        assertThat(entity.getTitle()).isEqualTo("1번 게시글 제목");
        assertThat(entity.getContent()).isEqualTo("1번 게시글 내용");
        assertThat(entity.getWriter()).isEqualTo("kgh");
    }

    @Test
    void findAll() {

        // 1. 전체 게시글 수 조회
        long boardsCount = postRepository.count();

        // 2. 전체 게시글 리스트 조회
        List<PostEntity> boards = postRepository.findAll();
    }

}
