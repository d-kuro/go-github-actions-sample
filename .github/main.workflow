workflow "Golang workflow" {
  on = "push"
  resolves = ["GolangCI-Lint", "Test"]
}

action "GolangCI-Lint" {
  uses = "./.github/actions/lint"
}

action "Test" {
  uses = "./.github/actions/test"
}
