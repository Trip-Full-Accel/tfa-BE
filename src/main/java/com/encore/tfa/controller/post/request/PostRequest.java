package com.encore.tfa.controller.post.request;

import com.encore.tfa.model.post.PostEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class PostRequest {

    private String title; // 제목
    private String content; // 내용
    private String writer; // 작성자

    public PostEntity toEntity() {
        return PostEntity.builder()
                .title(title)
                .content(content)
                .writer(writer)
                .hits(0)
                .deleteYn('n')
                .build();
    }
}
