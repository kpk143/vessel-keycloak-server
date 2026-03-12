#!/bin/bash

# Start Keycloak with your custom configurations
docker run -p 8080:8080 \
  -v keycloak_data:/opt/keycloak/data \
  -e KEYCLOAK_ADMIN=admin \
  -e KEYCLOAK_ADMIN_PASSWORD=admin \
  -e KC_PROXY_HEADERS=xforwarded \
  -e KC_HOSTNAME=glowing-capybara-qv5794jj66f4g4p-8080.app.github.dev \
  quay.io/keycloak/keycloak:latest start-dev
