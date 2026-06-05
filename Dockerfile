# Stage 1: Build documentation site
FROM python:3.11-slim AS builder

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source configuration and docs
COPY mkdocs.yml .
COPY docs/ docs/

# Build static HTML site
RUN mkdocs build

# Stage 2: Production-ready Caddy server
FROM caddy:2-alpine

# Copy built static files to Caddy's default directory
COPY --from=builder /app/site /usr/share/caddy

# Copy Caddy configuration
COPY Caddyfile /etc/caddy/Caddyfile
