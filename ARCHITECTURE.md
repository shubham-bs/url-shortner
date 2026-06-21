# Architecture

## System Overview

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
Database

---

## Layer Responsibilities

### Controller Layer

Responsible for receiving requests, validation and responses.

### Service Layer

Responsible for URL creation, retrieval and business rules.

### Repository Layer

Responsible for persistence and database access.

## Current Request Flows

### Homepage

GET /

Browser → HomeController → ShortUrlService → Repository → Database

### URL Creation

POST /short-urls

Browser → CreateShortUrlForm → HomeController → CreateShortURLCmd → ShortUrlService → Repository → Database

## Design Decisions

- CreateShortUrlForm represents web-layer input.
- CreateShortURLCmd transfers validated data into the service layer.
- Controllers remain thin.
- Domain objects are not exposed directly to the UI.
