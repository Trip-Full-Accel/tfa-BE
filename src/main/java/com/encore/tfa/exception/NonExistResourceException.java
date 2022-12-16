package com.encore.tfa.exception;

public class NonExistResourceException extends NullPointerException{

    public NonExistResourceException(String s){
        super(s);
    }
}