package com.encore.tfa.exception;

import com.encore.tfa.exception.response.ExceptionResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(NonExistResourceException.class)
    protected ResponseEntity<ExceptionResponse> handleNoSuchElementFoundException(NonExistResourceException e){
        final ExceptionResponse exceptionResponse = ExceptionResponse.builder()
                .code("Non Exist Resource Exception")
                .message(e.getMessage())
                .build();
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(exceptionResponse);
    }

    @ExceptionHandler(WrongRequestException.class)
    protected ResponseEntity<ExceptionResponse> wrongRequestException(WrongRequestException e) {
        final ExceptionResponse exceptionResponse = ExceptionResponse.builder()
                .code("Wrong Request Exception")
                .message(e.getMessage())
                .build();
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(exceptionResponse);
    }
}
