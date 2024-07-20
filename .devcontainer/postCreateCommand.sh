#!/bin/bash

# install pre-commit
pre-commit install

# # create and install libraries for pgvector
# conda create -y --name pgvector python=3.11
# conda init
# conda activate pgvector && \
#     pip install -r pgvector/requirements.txt