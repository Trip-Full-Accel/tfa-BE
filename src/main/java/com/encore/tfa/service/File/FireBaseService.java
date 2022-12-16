package com.encore.tfa.service.File;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.cloud.storage.Blob;
import com.google.cloud.storage.Bucket;
import com.google.firebase.auth.FirebaseAuthException;
import com.google.firebase.cloud.StorageClient;

@Service
public class FireBaseService {

    @Value("${app.firebase-bucket}")
    private String firebaseBucket;

    public String uploadFiles(MultipartFile file, String nameFile)
            throws IOException, FirebaseAuthException {


        String id = getUUID();

        Bucket bucket = StorageClient.getInstance().bucket(firebaseBucket);
        InputStream content = new ByteArrayInputStream(file.getBytes());
        Blob blob = bucket.create(id, content, file.getContentType());

        return blob.getMediaLink();

    }

    public String getUUID() {
        // UUID 생성 -> file 이름으로 넣을예정
        String uuid = UUID.randomUUID().toString();

        uuid = uuid.replace("-", "");
        return uuid;
    }
}