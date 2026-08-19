package com.shubham.urlshortener.web.dtos;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;

public class CreateShortUrlForm {

    @NotBlank(message = "Original URL is required")
    private String originalUrl;

    private boolean isPrivate;

    @Min(1)
    @Max(356)
    private Integer expirationInDays;

    public CreateShortUrlForm() {
    }

    public CreateShortUrlForm(
            String originalUrl,
            boolean isPrivate,
            Integer expirationInDays) {
        this.originalUrl = originalUrl;
        this.isPrivate = isPrivate;
        this.expirationInDays = expirationInDays;
    }

    public String getOriginalUrl() {
        return originalUrl;
    }

    public void setOriginalUrl(String originalUrl) {
        this.originalUrl = originalUrl;
    }

    public boolean getIsPrivate() {
        return isPrivate;
    }

    public void setIsPrivate(boolean isPrivate) {
        this.isPrivate = isPrivate;
    }

    public Integer getExpirationInDays() {
        return expirationInDays;
    }

    public void setExpirationInDays(Integer expirationInDays) {
        this.expirationInDays = expirationInDays;
    }
}