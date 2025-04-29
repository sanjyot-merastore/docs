# MeraStore Development Plan

---

## ✅ Phase 1: Foundation Setup (Completed)

- [x] Shared Libraries
  - [x] Core Domain Abstractions
  - [x] Exception Handling
  - [x] Logging SDK (Console, Elasticsearch, File sink with builder pattern)
  - [x] Caching Library (Redis, In-Memory)
  - [ ] Configuration Management
  - [ ] Tracing (OpenTelemetry)
  - [ ] WebAPI Middleware (Validation, Error Handling, Rate Limiting)
  - [ ] HTTP Client (Retry, Circuit Breaker, Logging)
  - [ ] Security (JWT, API Keys, RBAC)
  - [ ] Cryptography Utilities
  - [ ] Rate Limiting Tools
  - [ ] Multi-Tenancy Support
  - [ ] Messaging Abstractions (Kafka/RabbitMQ/EventStore)
  - [ ] Audit Logging
  - [ ] Search Abstraction (Elasticsearch/OpenSearch)

- [x] Persistence Layer
  - [x] EF Core Base Repository
  - [x] Unit of Work

- [x] Centralized Logging Architecture
- [x] Masking Strategies for Logs (Email, Credit Card, etc.)
- [] Webhook Processing Architecture (Separate Project)

---

## 🚧 Phase 2: Core Infrastructure & Platform Services

- [ ] CI/CD Automation
  - [ ] GitHub Actions for all repos
  - [ ] ArgoCD / GitOps integration

- [ ] Secrets Management
  - [ ] Vault or Self-Hosted Solution

- [ ] Service Mesh Integration
  - [ ] Istio or Linkerd Setup

- [ ] Monitoring & Observability
  - [ ] Prometheus + Grafana Dashboards
  - [ ] Jaeger for Distributed Tracing
  - [ ] Alerting Pipelines (e.g., Alertmanager)

- [ ] API Gateway
  - [ ] Ocelot or NGINX Configuration
  - [ ] Routing, CORS, and Throttling Rules

---

## 🚀 Phase 3: Essential Domain & Commerce Services

> These services form the transactional and operational core of the system.

- [ ] `auth-service`
  - [ ] JWT issuance and validation
  - [ ] Role-based access control (RBAC)
  - [ ] API key support

- [ ] `user-service`
  - [ ] User registration, profile management
  - [ ] Tenant-aware identity separation

- [ ] `product-service`
  - [ ] Product catalog, variants, categories
  - [ ] Media management, metadata

- [ ] `inventory-service`
  - [ ] Stock levels and availability
  - [ ] Reservations and warehouse linkage

- [ ] `order-service`
  - [ ] Full order lifecycle: create → paid → shipped
  - [ ] State machine, status updates, event publishing

- [ ] `cart-service`
  - [ ] Session and persistent carts
  - [ ] Merge handling, discount sync

- [ ] `payment-service`
  - [ ] Payment initiation, status polling, and retries
  - [ ] Refund processing and audit trail

---

## 📦 Phase 4: High-Value Supporting Services

> Improves customer experience and enriches commerce workflows.

- [ ] `discount-service`
  - [ ] Coupons, vouchers, and promotions
  - [ ] Eligibility and conflict resolution engine

- [ ] `notification-service`
  - [ ] Email, SMS, and push notifications
  - [ ] Event-driven dispatch

- [ ] `search-service`
  - [ ] Indexing via Elasticsearch/OpenSearch
  - [ ] Autocomplete, filters, and facets

- [ ] `review-service`
  - [ ] Product reviews and ratings
  - [ ] Moderation, flagging, visibility settings

- [ ] `warehouse-service`
  - [ ] Warehouse entity management
  - [ ] Inventory assignment and auditing

---

## 🧠 Phase 5: Intelligence, Analytics, and Observability

> Adds operational intelligence and post-transactional insights.

- [ ] `analytics-service`
  - [ ] Sales, traffic, funnel, and product analytics
  - [ ] Time-series dashboards

- [ ] `fraud-detection-service`
  - [ ] Rule-based fraud scoring
  - [ ] Event flagging for anomalies

- [ ] `logging-service`
  - [ ] Central ingestion, processing, forwarding
  - [ ] Log masking and enrichment pipeline

---

## 🧩 Phase 6: Optional / Pluggable Services

> Useful enhancements, can be plugged in later as the system grows.

- [ ] `admin-service`
  - [ ] Internal dashboards
  - [ ] Order and inventory visibility for operators

- [ ] `developer-tools-service`
  - [ ] Test data seeding
  - [ ] Sandbox environment tools

- [ ] `configuration-service`
  - [ ] Dynamic feature flags
  - [ ] Central config registry (if needed)

- [ ] `event-bus-service`
  - [ ] Centralized pub/sub hub
  - [ ] Event reprocessing and replay tools

---

## 🧪 Phase 7: Testing, Quality & Dev Experience

- [ ] Unit Testing (xUnit, FluentAssertions)
- [ ] Integration Testing (TestContainers, In-Memory DB)
- [ ] Load & Performance Testing
- [ ] End-to-End Tests (Selenium, Playwright)
- [ ] API Documentation (Swagger/OpenAPI)
- [ ] Internal Developer Portal (Backstage or Custom)

---

## 🌟 Phase 8: Future Enhancements & AI/ML

- [ ] AI/ML Capabilities
  - [ ] Recommendation engine (collaborative or content-based)
  - [ ] Demand prediction / sales forecasting

- [ ] Mobile SDKs or API Clients
  - [ ] TypeScript SDK
  - [ ] Android/iOS SDKs

- [ ] Marketplace / Multi-Vendor Support
  - [ ] Seller portals
  - [ ] Seller catalog and order routing

---

## 📁 Repository Overview

- [ ] `merastore-template`
- [ ] `infra-config`
- [ ] `shared-kernel`
- [ ] `docs`
- [ ] `logging-service`
- [ ] Microservices Repos:
  - [ ] `auth-service`, `user-service`, `product-service`, `order-service`, etc.
- [ ] Gateway and tooling repos:
  - [ ] `api-gateway`, `admin-service`, `developer-tools-service`