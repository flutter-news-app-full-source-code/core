<div align="center">
  <img src="https://avatars.githubusercontent.com/u/202675624?s=400&u=dc72a2b53e8158956a3b672f8e52e39394b6b610&v=4" alt="Flutter News App Toolkit Logo" width="220">
  <h1>Core Package</h1>
  <p><strong>The core data models and utilities for the Flutter News App Toolkit.</strong></p>
</div>

<p align="center">
  <img src="https://img.shields.io/badge/coverage-99%25-green?style=for-the-badge" alt="coverage">
  <a href="https://flutter-news-app-full-source-code.github.io/docs/"><img src="https://img.shields.io/badge/LIVE_DOCS-VIEW-slategray?style=for-the-badge" alt="Live Docs: View"></a>
  <a href="https://github.com/flutter-news-app-full-source-code"><img src="https://img.shields.io/badge/MAIN_PROJECT-BROWSE-purple?style=for-the-badge" alt="Main Project: Browse"></a>
</p>

This `core` package serves as the foundational shared library for the **Flutter News App Full Source Code Toolkit**. It defines the common language and data structures—including models for news content, user data, and remote configurations—that ensure consistency and accelerate development across the Flutter mobile app, web dashboard, and Dart Frog backend API.

## ⭐ Feature Showcase: The Foundation for a Robust News Platform

This package provides the critical building blocks for a professional news application ecosystem.

<details>
<summary><strong>🏗️ Foundational Data Architecture</strong></summary>

---

### 📰 Core Content Entities

Provides comprehensive models for all core news content, ensuring consistent representation across the entire toolkit.

> **Your Advantage:** A unified and robust data schema that simplifies content management and ensures data integrity across all applications.

---

### 🔄 Polymorphic Feed Items

Enables diverse content types (headlines, ads, suggested content) to coexist seamlessly within a single feed.

> **Your Advantage:** Flexible feed construction that supports rich, mixed-content experiences without complex type handling.

---

### 📊 Querying & API Communication

Offers models for building flexible, server-side queries with sorting and pagination capabilities.

> **Your Advantage:** Efficient data retrieval and reduced backend load through optimized query parameters.

---

### ✅ Standardized API Responses

Ensures consistent response wrappers for all API communication, guaranteeing predictable data structures.

> **Your Advantage:** Simplified API client development and robust error handling due to a uniform response format.

---

### 🚨 Predictable Error Handling

Includes a comprehensive set of custom exceptions for predictable and standardized error handling across all layers of the application.

> **Your Advantage:** Clear, actionable error messages that streamline debugging and improve application stability.

---

### 📈 Dashboard Analytics Summary

Provides a model for aggregated statistics, useful for administrative dashboards.

> **Your Advantage:** Quick and easy access to key performance indicators for administrative oversight.

</details>

<details>
<summary><strong>👤 User Identity & Personalization</strong></summary>

---

### 🔐 Secure User Management

Offers robust models for user profiles, roles, and permissions, enabling secure and personalized experiences.

> **Your Advantage:** A secure and flexible user authentication and authorization system that supports tiered access and custom permissions.

---

### ⚙️ User-Specific Settings

Provides detailed models for storing user-specific content preferences (e.g., followed topics, saved headlines) and application settings (e.g., theme, language).

> **Your Advantage:** Highly personalized user experiences through persistent storage of individual content interests and application configurations.

---

### 💾 Reusable Content Filters

Enables users to store and quickly re-apply complex content filters.

> **Your Advantage:** Enhanced user engagement and efficiency by enabling quick access to frequently used content filters.

</details>

<details>
<summary><strong>🔔 Dynamic Push Notifications</strong></summary>

---

### 📩 User-Defined Subscriptions

Allows users to create and manage their notification subscriptions, offering granular control over alert preferences.

> **Your Advantage:** Empower users with precise control over the notifications they receive, reducing noise and increasing relevance.

---

### 📱 Device Registration & Management

Manages user device registrations for push notifications, linking user accounts to specific device tokens.

> **Your Advantage:** Reliable and targeted delivery of notifications to the correct user devices across different platforms.

---

### ✉️ Standardized Notification Payloads

Defines a generic structure for push notification messages, ensuring consistent content delivery across various providers.

> **Your Advantage:** Simplified development of notification sending logic with a clear, consistent payload structure for all alerts.

---

### 🌐 Global Push System Configuration

Provides centralized management for the entire push notification system, including provider credentials and feature availability.

> **Your Advantage:** Centralized control over your push notification infrastructure, allowing for dynamic adjustments and provider switching without code changes.

</details>

<details>
<summary><strong>⚙️ Remote Configuration & Monetization</strong></summary>

---

### ☁️ Centralized App Control

Offers a central container for all dynamic application settings, fetched from a remote source, enabling real-time adjustments to app behavior.

> **Your Advantage:** Agility in managing application features and behavior without requiring app store updates.

---

### 💰 Flexible Ad Monetization

Provides master configuration for all advertising, featuring **highly flexible, role-based control** over ad visibility and frequency for various ad types.

> **Your Advantage:** Granular control over monetization strategies, allowing optimization of ad revenue and user experience per user segment.

---

### 🎯 Tiered User Feature Limits

Defines user preference limits (e.g., max followed items, saved headlines) tiered by user role.

> **Your Advantage:** Effective feature differentiation across user tiers (guest, standard, premium) and robust backend enforcement of limits.

---

### 🚧 Application Status Management

Manages application-wide status, including maintenance mode and force update directives.

> **Your Advantage:** Proactive communication with users during maintenance and seamless enforcement of critical updates.

---

### 🎨 Dynamic In-Feed Elements

Configures dynamic in-feed elements like calls-to-action and content collections, with role-based visibility.

> **Your Advantage:** Enhanced user engagement and promotional capabilities through dynamically injected content within the news feed.

</details>

<details>
<summary><strong>🧪 Development & Testing Accelerators</strong></summary>

---

### ⚡ Ready-to-Use Sample Data

Includes a set of pre-defined, in-memory fixture data for core models, facilitating rapid development and testing.

> **Your Advantage:** Rapid prototyping, reliable testing, and instant setup of development environments, significantly accelerating your workflow.

</details>

## 🔑 Licensing

This `core` package is an integral part of the [**Flutter News App Full Source Code Toolkit**](https://github.com/flutter-news-app-full-source-code). For comprehensive details regarding licensing, including trial and commercial options for the entire toolkit, please refer to the main toolkit organization page.
