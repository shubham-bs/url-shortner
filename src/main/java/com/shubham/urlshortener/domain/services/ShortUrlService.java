package com.shubham.urlshortener.domain.services;

import com.shubham.urlshortener.domain.entities.ShortUrl;
import com.shubham.urlshortener.domain.repositories.ShortUrlRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShortUrlService {
    private final ShortUrlRepository shortUrlRepository;

    public ShortUrlService(ShortUrlRepository shortUrlRepository) {
        this.shortUrlRepository = shortUrlRepository;
    }

    public List<ShortUrl> findAllPublicShortUrls() {
        return shortUrlRepository.findPublicShortUrls();
    }
}