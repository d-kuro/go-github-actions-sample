#!/bin/bash

echo "######################"

APP_DIR="/go/src/github.com/${GITHUB_REPOSITORY}/"

mkdir -p ${APP_DIR} && cp -r ./ ${APP_DIR} && cd ${APP_DIR}

echo "######################"

export GO111MODULE=on
go mod tidy
go mod verify

echo "######################"

if [[ "$1" == "lint" ]]; then
    echo "# Running GolangCI-Lint"
    golangci-lint --version
    golangci-lint run --enable-all --disable gochecknoglobals --disable gochecknoinits
fi

if [[ "$1" == "test" ]]; then   
    echo "# Running Test"
    go test ./... -race
fi
