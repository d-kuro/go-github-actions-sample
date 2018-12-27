FROM golang/1.11.4

LABEL "name"="Golang test" \
    "maintainer"="Dai Kurosawa <kurosawa7620@gmail.com>" \
    "com.github.actions.icon"="code" \
    "com.github.actions.color"="green-dark" \
    "com.github.actions.name"="golangci-lint" \
    "com.github.actions.description"="This is an action to run tests"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
