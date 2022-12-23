package com.encore.tfa.controller.image.api;

import com.encore.tfa.controller.user.response.UserDetailResponse;
import com.encore.tfa.service.File.FireBaseService;
import com.encore.tfa.service.image.ImageService;
import com.google.firebase.auth.FirebaseAuthException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequestMapping("/images")
@CrossOrigin("http://localhost:3000")
public class ImageController {

    private final ImageService imageService;

    private final FireBaseService fireBaseService;

    public ImageController(ImageService imageService, FireBaseService fireBaseService) {
        this.imageService = imageService;
        this.fireBaseService = fireBaseService;
    }

    @GetMapping("/{user-id}")
    public ResponseEntity<UserDetailResponse> userDetails(@PathVariable("user-id") String userId){
        return ResponseEntity.ok().body(imageService.findUserDetails(userId));
    }

    @PostMapping("/files")
    public String uploadFile(@RequestPart MultipartFile file)
            throws IOException, FirebaseAuthException {
        if (file.isEmpty()) {
            return "is empty";
        }
        return fireBaseService.uploadFiles(file, file.getName());
    }
}
