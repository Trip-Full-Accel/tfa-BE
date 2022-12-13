package com.encore.tfa.controller.board.response;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.time.LocalDate;

@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class PostResponse {

    private Long postId;
    private String title;
    private String content;
    private LocalDate updatedAt;


}
