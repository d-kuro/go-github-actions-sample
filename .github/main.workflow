workflow "Golang workflow" {
  on = "push"
  resolves = ["GolangCI-Lint"]
}

action "GolangCI-Lint" {
  uses = "./.github/actions/lint"
}

action "Test" {
  needs = ["GolangCI-Lint"]
  uses = "./.github/actions/test"
}
