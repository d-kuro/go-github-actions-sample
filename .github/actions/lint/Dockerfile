FROM golangci/golangci-lint:v1.12.5

LABEL "name"="GolangCI-Lint action" \
    "maintainer"="Dai Kurosawa <kurosawa7620@gmail.com>" \
    "com.github.actions.icon"="code" \
    "com.github.actions.color"="green-dark" \
    "com.github.actions.name"="golangci-lint" \
    "com.github.actions.description"="This is an action to run GolangCI-Lint"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
