#!/bin/bash
set -e

cd "C:/Program Files (x86)/Go Agent/pipelines/Hello-Test-App/src/hello-app"

export GO111MODULE=on

go version
go env
go mod tidy
go build -o hello-world .
