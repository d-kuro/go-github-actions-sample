FROM golangci/golangci-lint:v1.12.5

LABEL "name"="GolangCI-Lint action"
LABEL "maintainer"="Dai Kurosawa <kurosawa7620@gmail.com>"
LABEL "version"="0.0.1"

LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="green-dark"
LABEL "com.github.actions.name"="golangci-lint"
LABEL "com.github.actions.description"="This is an action to run GolangCI-Lint"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
