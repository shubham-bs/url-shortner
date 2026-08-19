# URL Shortener

A production-style URL shortening service built with Spring Boot and PostgreSQL.

The project demonstrates backend application development using layered architecture, authentication, database persistence, validation, exception handling, Docker, and Docker Compose.

---

## Features

- Create short URLs
- Redirect short URLs
- User authentication
- User owned URLs
- Public and private URLs
- URL expiration
- Click tracking
- Pagination
- Delete user owned URLs
- URL validation
- Form validation
- Global exception handling
- Custom error pages
- Flyway database migrations
- Docker containerization
- Docker Compose
- Docker Hub image deployment

---

## Tech Stack

| Technology | Purpose                          |
|---|----------------------------------|
| Java 21 | Backend language                 |
| Spring Boot | Application framework            |
| Spring Security | Authentication and authorization |
| Thymeleaf | Server side UI                   |
| Spring Data JPA | Database access                  |
| PostgreSQL | Relational database              |
| Flyway | Database migrations              |
| Maven | Build and dependency management  |
| Docker | Application containerization     |
| Docker Compose | Multi container setup            |
| Docker Hub | Container image hosting          |

---

### Architecture

The application follows a layered architecture with Spring Security handling authentication and authorization.

```text
Browser
   ↓
Thymeleaf
   ↓
Spring Security
   ↓
Controller
   ↓
Service
   ↓
Repository
   ↓
PostgreSQL
```

### Main Components

```text
src/main/java/com/shubham/urlshortener
│
├── config
│   └── WebSecurityConfig
│
├── domain
│   ├── entities
│   │   ├── ShortUrl
│   │   └── User
│   │
│   ├── exceptions
│   │   └── ShortUrlNotFoundException
│   │
│   └── models
│       ├── CreateShortUrlCmd
│       ├── CreateUserCmd
│       ├── PagedResult
│       ├── Role
│       ├── ShortUrlDto
│       └── UserDto
│
├── repositories
│   ├── ShortUrlRepository
│   └── UserRepository
│
├── services
│   ├── EntityMapper
│   ├── SecurityUserDetailsService
│   ├── ShortUrlService
│   ├── UrlExistenceValidator
│   └── UserService
│
└── web
    ├── controllers
    │   ├── AdminController
    │   ├── HomeController
    │   └── UserController
    │
    ├── dtos
    │   ├── CreateShortUrlForm
    │   └── RegisterUserRequest
    │
    ├── GlobalExceptionHandler
    └── SecurityUtils
```

### Request Flow

#### Homepage

```text
GET /
   ↓
HomeController
   ↓
ShortUrlService
   ↓
ShortUrlRepository
   ↓
PostgreSQL
   ↓
Thymeleaf
   ↓
Browser
```

#### Create Short URL

```text
POST /shorturls
   ↓
CreateShortUrlForm
   ↓
HomeController
   ↓
CreateShortURLCmd
   ↓
ShortUrlService
   ↓
ShortUrlRepository
   ↓
PostgreSQL
```

#### Redirect Short URL

```text
GET /{shortKey}
   ↓
HomeController
   ↓
ShortUrlService
   ↓
ShortUrlRepository
   ↓
PostgreSQL
   ↓
HTTP Redirect
```

If the short URL cannot be found or cannot be accessed, the application handles the error through its global exception handling and custom error page.

### Design Principles

- Controllers coordinate requests and responses.
- Business logic is kept inside services.
- Repositories handle persistence.
- DTOs and command objects separate web layer input from servicelayer logic.
- Domain entities are not exposed directly to the web layer.
- Database schema changes are managed through Flyway migrations.

---

# Running with Docker

Docker is the recommended way to run the application.

You do not need to install Java or PostgreSQL separately when using the Docker setup.

## Prerequisites

- Git
- Docker Desktop

## 1. Clone the repository

```bash
git clone https://github.com/shubham-bs/url-shortner.git
cd url-shortner
```

## 2. Start the application

```bash
docker compose -f Docker/compose.yaml up -d
```

Docker Compose starts:

- Spring Boot application
- PostgreSQL database

The Spring Boot container uses:

```text
bag0dock/urlshortener:latest
```

## 3. Open the application

Visit:

```text
http://localhost:8086
```

## 4. Check running containers

```bash
docker compose -f Docker/compose.yaml ps
```

Expected containers:

```text
spring-boot-url-shortener
urlshortener-postgres
```

## 5. View application logs

```bash
docker compose -f Docker/compose.yaml logs -f spring-boot-url-shortener
```

## 6. Stop the application

```bash
docker compose -f Docker/compose.yaml down
```

---

# Running Locally with Maven

For development, the application can also be run directly with Maven.

```bash
./mvnw spring-boot:run
```

PostgreSQL configuration is located at:

```text
src/main/resources/application.properties
```

Run the test suite:

```bash
./mvnw clean test
```

---

# Database

PostgreSQL is used as the primary database.

Flyway manages database schema migrations.

Migration files are located at:

```text
src/main/resources/db/migration
```

When running through Docker Compose, the Spring Boot application connects to PostgreSQL through the Docker Compose network.

```text
Spring Boot Application
          │
          │ Docker Network
          ▼
      PostgreSQL
```

---

# Docker Image

The application is packaged as a Docker image using Spring Boot's build-image support.

Docker Hub image:

```text
bag0dock/urlshortener:latest
```

Build the image locally:

```bash
./mvnw spring-boot:build-image
```

The Docker Compose configuration is located at:

```text
Docker/compose.yaml
```

---

# Project Structure

```text
urlshortner/
│
├── Docker/
│   └── compose.yaml
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   └── resources/
│   │
│   └── test/
│
├── ARCHITECTURE.md
├── README.md
├── pom.xml
├── mvnw
└── mvnw.cmd
```

---

# Current Status

## Completed

- Project setup
- Layered architecture
- PostgreSQL integration
- Flyway migrations
- Homepage
- URL creation
- URL validation
- URL redirection
- Global exception handling
- Custom error pages
- User authentication
- User ownership
- Public/private URLs
- URL expiration
- Click tracking
- Pagination
- URL deletion
- Docker image creation
- Docker Compose setup
- Docker Hub deployment

---

# Future Improvements

- Custom URL aliases
- Analytics dashboard
- Search and filtering
- QR code generation
- Rate limiting
- Production deployment
- Monitoring and observability
