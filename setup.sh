#!/usr/bin/env bash
set -euxo pipefail

# Install OpenJDK 17.
sudo apt install openjdk-17-jdk

# Download and extract DuckDB.
wget https://github.com/duckdb/duckdb/releases/download/v1.1.3/duckdb_cli-linux-amd64.zip
unzip duckdb_cli-linux-amd64.zip
rm duckdb_cli-linux-amd64.zip

# Download the workload.
# Note: currently hosted on Wan's Google Drive, link may be subject to change.
wget --no-check-certificate -r 'https://drive.usercontent.google.com/download?export=download&id=1f4HtlX6Y363VpmKJUmAhkdoXcfpUx_OP&confirm=yes' -O workload.tgz
