#!/bin/bash

# Install pre-commit for git hook
echo "(*) Installing pre-commit requirements ..."
pip install \
    "isort==5.12.0" \
    "pre-commit==3.5.0" \
    "ruff==0.1.6" \
    "sqlfluff==2.3.5" \
    "yamllint==1.33.0"

# install hadolint
echo "(*) Installing hadolint..."
HADOLINT_VERSION="2.12.0"
sudo wget -O /usr/local/bin/hadolint "https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64"
sudo chmod +x /usr/local/bin/hadolint

# install golangci-lint
GOLANGCI_LINT_VERSION="1.55.2"
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b "$(go env GOPATH)/bin v${GOLANGCI_LINT_VERSION}"
golangci-lint --version