package com.encore.tfa.service.post;

import com.encore.tfa.controller.post.request.RegisterPostRequest;
import com.encore.tfa.controller.post.request.UpdatePostRequest;
import com.encore.tfa.controller.post.response.PostDetailResponse;
import com.encore.tfa.controller.post.response.RegisterPostResponse;
import com.encore.tfa.controller.post.response.UpdatePostResponse;
import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.model.post.Post;
import com.encore.tfa.model.user.User;
import com.encore.tfa.repository.UserRepository;
import com.encore.tfa.repository.post.PostRepository;
import com.encore.tfa.util.mapper.PostMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PostService {

    private final PostRepository postRepository;
    private final UserRepository userRepository;

    public PostService(PostRepository postRepository, UserRepository userRepository) {
        this.postRepository = postRepository;
        this.userRepository = userRepository;
    }

    @Transactional(readOnly = true)
    public PostDetailResponse findPostById(Long postId) {
        Post post = postRepository.findById(postId)
                .orElseThrow(()-> new NonExistResourceException("Post could not be found"));

        post.increaseHits();

        return PostMapper.of().convertPostToDetailResponse(post);

    }

    @Transactional
    public RegisterPostResponse registerPost(RegisterPostRequest request) {
        Post post = postRepository.save(
                createPostInstance(request));

        return PostMapper.of().convertPostToRegisterResponse(post);
    }
    private Post createPostInstance(RegisterPostRequest request){
        User user = userRepository.findById(request.getUserId())
                .orElseThrow(()-> new NonExistResourceException("User could not be found"));

        return PostMapper.of().convertReigsterRequestToPost(request, user);
    }

    @Transactional
    public UpdatePostResponse updatePost(Long postId, UpdatePostRequest request) {
        User user = userRepository.findById(request.getUserId())
                .orElseThrow(()-> new NonExistResourceException("User could not be found"));

        Post post = postRepository.findById(postId)
                .orElseThrow(()-> new NonExistResourceException("Post could not be found"));

        post.updatePost(
                PostMapper.of().convertUpdateRequestToDTO(request, user));

        return PostMapper.of().convertPostToUpdateResponse(post);
    }

    @Transactional
    public Long deletePostById(Long postId) {
        Post post = postRepository.findById(postId)
                .orElseThrow(()-> new NonExistResourceException("Post could not be found"));

        post.deletePost();

        return postId;
    }
}
