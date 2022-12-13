package com.encore.tfa.model.post;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Table(name = "post")
@NoArgsConstructor  (access = AccessLevel.PROTECTED)
public class PostEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 30, nullable = false)
    private String title; // 제목
    @Column(length = 200, nullable = false)
    private String content; // 내용
    @Column(length = 30, nullable = false)
    private String writer; // 작성자
    private Integer hits; // 조회 수
    private Character deleteYn; // 삭제 여부

    private LocalDateTime createdDate = LocalDateTime.now(); // 생성일

    private LocalDateTime modifiedDate; // 수정일

    @Builder
    public PostEntity(String title, String content, String writer, Integer hits, Character deleteYn) {
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.hits = hits;
        this.deleteYn = deleteYn;
    }

    // 게시글 수정
    public void update(String title, String content, String writer) {
        this.title = title;
        this.content = content;
        this.writer = writer;
        this.modifiedDate = LocalDateTime.now();
    }

    // 조회 수 증가
    public void increaseHits() {
        this.hits++;
    }

    // 게시글 삭제
    public void delete() {
        this.deleteYn = 'y';
    }
}
