# Project Journal

## Commit 001 · Project Initialization
- Spring Boot setup
- Maven configuration
- Base package structure

## Commit 002 · Persistence Layer
- Domain entities
- Repository layer
- Database configuration

## Commit 003 · Homepage
- HomeController
- Thymeleaf integration
- URL listing page

## Commit 004-005 · URL Creation Workflow
- CreateShortUrlForm
- CreateShortURLCmd
- POST endpoint
- Validation
- User feedback

### Notes
Introduced separation between web-layer input and service-layer commands.

## Commit 006 · URL Redirection & Error Handling
### Objective
Complete the core URL shortening workflow by allowing short URLs to redirect users to their original destinations.

### Changes
* Added URL redirection endpoint
* Added lookup by short key
* Added custom 404 page
* Added global exception handling

### Request Flow
        Browser
           ↓
       Short URL
           ↓
     HomeController
           ↓
     ShortUrlService
           ↓
       Repository
           ↓
        Database
---------------------------
        If found:
           ↓
      HTTP Redirect
--------------------------
      If not found:
            ↓
    GlobalExceptionHandler
            ↓
         404.html

### Notes
This commit completes the primary lifecycle of a shortened URL:

      Create URL
          ↓
       Store URL
           ↓
      Resolve URL
           ↓
     Redirect User



