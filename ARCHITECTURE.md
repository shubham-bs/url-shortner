# Architecture

## Project Structure

```text
src/main/java/com/shubham/urlshortener
│
├── domain
│   ├── entities
│   └── models
│
├── repositories
│
├── services
│
└── web
    ├── controllers
    └── dtos
```

---

## System Overview

Browser
↓
Thymeleaf Templates
↓
HomeController
↓
ShortUrlService
↓
ShortUrlRepository
↓
PostgreSQL

---

## Core Components

### HomeController

Responsible for:

* Rendering the homepage
* Creating short URLs
* Redirecting short URLs

Endpoints:

* GET /
* POST /short-urls
* GET /{shortKey}

---

### ShortUrlService

Responsible for:

* URL creation workflow
* URL retrieval workflow
* Redirect resolution
* Business rules

---

### ShortUrlRepository

Responsible for:

* Storing URLs
* Looking up URLs by short key
* Retrieving public URLs

---

## Request Flows

### Homepage

GET /

Browser
↓
HomeController
↓
ShortUrlService
↓
ShortUrlRepository
↓
PostgreSQL

↓

List<ShortUrlDto>

↓

Thymeleaf

↓

Browser

---

### Create Short URL

POST /short-urls

Browser
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

↓

Redirect /

---

### Redirect Workflow

GET /{shortKey}

Browser
↓
HomeController
↓
ShortUrlService
↓
ShortUrlRepository
↓
PostgreSQL

URL Found?
├─ Yes → HTTP Redirect
└─ No  → GlobalExceptionHandler
↓
404.html

---

## Error Handling

### GlobalExceptionHandler

Responsible for:

* Handling missing short URLs
* Returning custom error pages

Current Errors:

* 404 Not Found

---

## Design Decisions

### CreateShortUrlForm

Represents user input submitted from the web layer.

---

### CreateShortURLCmd

Transfers validated data into the service layer.

Prevents service logic from depending on web-specific classes.

---

### DTO Usage

Domain entities are not exposed directly to Thymeleaf templates.

---

### Thin Controllers

Controllers orchestrate requests.

Business logic belongs inside services.

---

## Current URL Lifecycle

Create URL
↓
Persist URL
↓
Display URL
↓
Resolve Short Key
↓
Redirect User
↓
Handle Invalid URLs
