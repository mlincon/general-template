#!/bin/bash

# Upgrade pip
python3.12 -m pip install --upgrade pip

# # Install dvc
# echo "(*) Installing DVC ..."
# pip install "dvc==3.59.0" "dvc-s3==3.2.0"

# Install pre-commit for git hook
echo "(*) Installing pre-commit requirements ..."
pip install \
    "isort==5.13.2" \
    "mypy==1.14.1" \
    "mypy-extensions==1.0.0" \
    "pre-commit==4.1.0" \
    "ruff==0.9.3" \
    "sqlfluff==3.3.0" \
    "yamllint==1.35.1" \
    "types-pytz==2023.3.1.1" \
    "types-PyYAML==6.0.12.20240311" \
    "typing-inspect==0.9.0" \
    "typing_extensions==4.12.2"

# Install Jupyterlab
pip install "jupyterlab==4.2.2" "ipykernel==6.29.4"

# install flyway at home directory
echo "(*) Installing Flyway..."
cd ~
FLYWAY_VERSION="10.1.0"
wget -qO- "https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/${FLYWAY_VERSION}/flyway-commandline-${FLYWAY_VERSION}-linux-x64.tar.gz" \
    | tar -xvz && sudo ln -s "$(pwd)/flyway-${FLYWAY_VERSION}/flyway" /usr/local/bin

# install hadolint
echo "(*) Installing hadolint..."
HADOLINT_VERSION="2.12.0"
sudo wget -O /usr/local/bin/hadolint "https://github.com/hadolint/hadolint/releases/download/v${HADOLINT_VERSION}/hadolint-Linux-x86_64"
sudo chmod +x /usr/local/bin/hadolint

# Install localstack for S3 mocking
pip install awscli-local
