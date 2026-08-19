package com.shubham.urlshortener.domain.models;

public record CreateShortUrlCmd(String OriginalURL,
                                Boolean isPrivate,
                                Integer expirationInDays,
                                Long userId) {
}
