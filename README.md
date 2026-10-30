# Mini Azure DevOps Backend

A lightweight Node.js and Express backend starter inspired by Azure DevOps workflows. This project provides a simple foundation for building a backend that can later be extended with features such as repositories, work items, build pipelines, pull requests, and team collaboration APIs.

## Overview

This repository is intentionally minimal and easy to extend. It currently exposes a basic Express server and is structured so you can add new routes, services, and business logic as the application grows.

## Tech Stack

- Node.js
- Express.js
- Docker

## Project Structure

- `server.js` – application entry point and HTTP server setup
- `src/` – place for application modules, routes, and future backend logic
- `Dockerfile` – container configuration for running the app in Docker
- `package.json` – project scripts and dependencies

## Getting Started

### Prerequisites

- Node.js 18 or later
- npm

### Install dependencies

```bash
npm install
```

### Run the application

```bash
npm start
```

The server will start on:

```text
http://localhost:3000
```

### Available endpoint

| Method | Route | Description |
| --- | --- | --- |
| GET | `/` | Returns a simple welcome response |

Example response:

```text
Hello, World!
```

## Docker

Build the Docker image:

```bash
docker build -t mini-azure-devops-backend .
```

Run the container:

```bash
docker run -p 3000:3000 mini-azure-devops-backend
```

## Notes

This is a basic backend starter intended as a foundation for a more complete Azure DevOps-like application. You can expand it with authentication, project management APIs, CI/CD integration, database models, and more as your project evolves.
