package com.encore.tfa.service.post;

import com.encore.tfa.controller.post.request.RegisterPostRequest;
import com.encore.tfa.controller.post.request.UpdatePostRequest;
import com.encore.tfa.controller.post.response.MyPagePostResponse;
import com.encore.tfa.controller.post.response.PostDetailResponse;
import com.encore.tfa.controller.post.response.PostsResponse;
import com.encore.tfa.controller.post.response.UpdatePostResponse;
import com.encore.tfa.controller.post.response.ViewPostsResponse;
import com.encore.tfa.exception.NonExistResourceException;
import com.encore.tfa.exception.WrongRequestException;
import com.encore.tfa.model.post.Post;
import com.encore.tfa.model.user.User;
import com.encore.tfa.repository.user.UserRepository;
import com.encore.tfa.repository.post.PostRepository;
import com.encore.tfa.util.mapper.PostMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

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

        return PostMapper.convertPostToDetailResponse(post);
    }

    @Transactional
    public PostDetailResponse registerPost(RegisterPostRequest request) {
        Post post = postRepository.save(
                createPostInstance(request));

        return PostMapper.convertPostToDetailResponse(post);
    }

    @Transactional
    public UpdatePostResponse updatePost(Long postId, UpdatePostRequest request) {
        User user = userRepository.findById(request.getUserId())
                .orElseThrow(()-> new NonExistResourceException("User could not be found"));

        Post post = postRepository.findById(postId)
                .orElseThrow(()-> new NonExistResourceException("Post could not be found"));

        checkUserIsMatch(user, post.getUser());

        post.updatePost(
                PostMapper.convertUpdateRequestToDTO(request));

        return PostMapper.convertPostToUpdateResponse(post);
    }

    @Transactional
    public Long deletePostById(Long postId) {
        Post post = postRepository.findById(postId)
                .orElseThrow(()-> new NonExistResourceException("Post could not be found"));

        post.deletePost();

        return postId;
    }

    @Transactional
    public ViewPostsResponse viewPosts(){
        List<Post> posts = postRepository.findAll();
        List<PostsResponse> postsResponses = new ArrayList<>();

        for (Post post : posts){
            postsResponses.add(PostMapper.convertPostsToViewResponse(post));
        }

        return new ViewPostsResponse(postsResponses);
    }

    @Transactional(readOnly = true)
    public MyPagePostResponse findPostByUserId(Long userId){
        User user = userRepository.findById(userId)
                .orElseThrow(()-> new NonExistResourceException("User could not be found"));

        List<Post> postList = postRepository.findAllByUserId(user.getId());

        if(postList.isEmpty()) throw new NonExistResourceException("Post does note exist");

        List<PostDetailResponse> postDetailResponseList = new ArrayList<>();

        for (Post post : postList){
            postDetailResponseList.add(PostMapper.convertPostToDetailResponse(post));
        }

        return new MyPagePostResponse(postDetailResponseList);
    }

    private Post createPostInstance(RegisterPostRequest request){
        User user = userRepository.findById(request.getUserId())
                .orElseThrow(()-> new NonExistResourceException("User could not be found"));

        return PostMapper.convertReigsterRequestToPost(request, user);
    }

    private void checkUserIsMatch(User expect, User result) {
        if (!expect.equals(result)) {
            throw new WrongRequestException("user inconsistency");
        }
    }
}
