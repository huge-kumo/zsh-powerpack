#!/bin/zsh

ENV_VARS=(
    "ICLOUD_PATH"
    "OPENAI_API_DOMAIN"
    "OPENAI_API_KEY"
)

print_env_vars() {
    for var in "${ENV_VARS[@]}"; do
        value="${(P)var}"
        echo "${var}=${value}"
    done
}

print_env_vars
