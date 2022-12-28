package com.encore.tfa.controller.image.api;

import com.encore.tfa.service.file.FireBaseService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequestMapping("/images")
public class ImageController {

    private final FireBaseService fireBaseService;

    public ImageController(FireBaseService fireBaseService) {
        this.fireBaseService = fireBaseService;
    }
    @PostMapping("/files")
    public String uploadFile(@RequestPart MultipartFile file, String fileName)
            throws IOException {
        if (file.isEmpty()) {
            return "is empty";
        }
        return fireBaseService.uploadFiles(file, file.getName());
    }
}
