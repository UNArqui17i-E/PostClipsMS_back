#!/usr/bin/env sh

./../rancher-compose --project-name arqsoft-authentication-ms \
    --url http://192.168.99.100:8080/v1/projects/1a5 \
    --access-key 769E178D85FADF0A9182 \
    --secret-key USJqV5WbBP58DyianKAHH19wnwuochBMUHoQxS6U \
    -f docker-compose.yml \
    --verbose up \
    -d --force-upgrade \
    --confirm-upgrade
