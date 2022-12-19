package com.encore.tfa.exception;

public class WrongRequestException extends SecurityException{
    public WrongRequestException(String s) {
        super(s);
    }
}
