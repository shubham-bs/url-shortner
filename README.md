# URL Shortener

A URL shortening service built with Spring Boot and PostgreSQL.

The project is being developed incrementally to explore backend application design, layered architecture, database migrations, request handling, validation, exception handling, and production-style development practices.

---

## Current Features

* Create short URLs
* List publicly available URLs
* Redirect short URLs to their original destination
* Form validation
* Custom 404 page
* Global exception handling
* Flyway database migrations

---

## Tech Stack

* Java 21
* Spring Boot
* Thymeleaf
* Spring Data JPA
* PostgreSQL
* Flyway
* Maven

---

## Architecture

The application follows a layered architecture:

Browser
↓
Thymeleaf
↓
Controller
↓
Service
↓
Repository
↓
PostgreSQL

See `ARCHITECTURE.md` for detailed request flows and design decisions.

---

## Project Documentation

* `ARCHITECTURE.md` → System design, request flows, and architectural decisions
* `JOURNAL.md` → Project evolution and milestone tracking

---

## Running Locally

### Clone Repository

```bash
git clone <repo-url>
cd urlshortener
```

### Start PostgreSQL

Configure database settings in:

```properties
src/main/resources/application.properties
```

### Run Application

```bash
./mvnw spring-boot:run
```

Application runs on:

```text
http://localhost:8080
```

---

## Roadmap

### Core Features

* User authentication
* User-owned URLs
* Custom aliases
* URL expiration

### Analytics

* Click tracking
* Usage statistics
* Top URLs dashboard

### Enhancements

* QR code generation
* Search and filtering
* URL management dashboard

---

## Current Status

Completed

* Project setup
* Database integration
* Flyway migrations
* Homepage
* URL creation workflow
* URL redirection
* Global exception handling
* Custom error pages

Next Focus

* Authentication
* User ownership
* Analytics
