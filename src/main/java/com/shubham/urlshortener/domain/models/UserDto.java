package com.shubham.urlshortener.domain.models;

import java.io.Serializable;

/**
 * DTO for {@link com.shubham.urlshortener.domain.entities.User}
 */
public record UserDto(Long id, String name) implements Serializable {
}