workflow "Golang workflow" {
  on = "push"
  resolves = ["Test"]
}

action "GolangCI-Lint" {
  uses = "./.github/actions/lint"
}

action "Test" {
  needs = ["GolangCI-Lint"]
  uses = "./.github/actions/test"
}
