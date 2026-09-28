# Multi-Tier Architecture

## Two-Tier Architecture

A two-tier architecture is a system divided into two main parts: the Web/Application Tier and the Database Tier.

## Web/Application Tier

The Web/Application Tier handles the user interface and processes HTTP requests. In this activity, Nextcloud serves as the web application.

## Database Tier

The Database Tier stores persistent information such as user accounts and file metadata. In this activity, MariaDB is used as the database.

## Why Separate Them?

Separating the web application and database into different containers makes the system easier to manage and maintain. Each container has a specific responsibility, and one component can be updated or managed without placing both services inside the same container.