package com.encore.tfa.service.post;

import com.encore.tfa.controller.post.request.PostRequest;
import com.encore.tfa.controller.post.response.PostResponse;
import com.encore.tfa.model.post.PostEntity;
import com.encore.tfa.repository.post.PostRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.swing.text.html.Option;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class PostService {

    private final PostRepository postRepository;

    // 전체 게시글 조회
    public List<PostResponse> getPostList() {

        Sort sort = Sort.by(Sort.Direction.DESC, "id", "createdDate");
        List<PostEntity> list = postRepository.findAll(sort);

        List<PostResponse> postList = new ArrayList<>();

        for (PostEntity entity : list) {
            postList.add(new PostResponse(entity));
        }

        return postList;
    }

    // 게시글 상세 조회
    @Transactional
    public PostResponse getPostDetail(Long id) {

        Optional<PostEntity> post = postRepository.findById(id);

        if (post.isPresent()) {
            PostEntity entity = post.get();
            entity.increaseHits(); // 조회 수 증가
            PostResponse postResponse = new PostResponse(entity);

            return postResponse;
        }
        return null;
    }

    // 게시글 생성
    @Transactional
    public Long savePost(final PostRequest params) {

        PostEntity entity = postRepository.save(params.toEntity());
        return entity.getId();
    }

    // 게시글 수정
    @Transactional
    public Long updatePost(Long id, PostRequest params) {

        Optional<PostEntity> post = postRepository.findById(id);
        PostEntity entity = post.get();
        entity.update(params.getTitle(), params.getContent(), params.getWriter());

        return id;
    }

    // 게시글 삭제
    @Transactional
    public Long deletePost(Long id) {

        Optional<PostEntity> post = postRepository.findById(id);

        if (post.isPresent()) {
            PostEntity entity = post.get();
            entity.delete();

            return id;
        }
        return null;
    }
}
