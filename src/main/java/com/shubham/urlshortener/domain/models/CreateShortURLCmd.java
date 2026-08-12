package com.shubham.urlshortener.domain.models;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;

public record CreateShortURLCmd(String OriginalURL,
                                Boolean isPrivate,
                                Integer expirationInDays,
                                Long userId) {
}
