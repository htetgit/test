#!/bin/bash
set -e

cd "$(dirname "$0")"

export GO111MODULE=on

echo "Go Version:"
go version

echo "Go Environment:"
go env

echo "Go Mod Tidy:"
go help mod tidy

echo "Running go mod tidy..."
go mod tidy

echo "Building the application..."
go build -o hello-world .
