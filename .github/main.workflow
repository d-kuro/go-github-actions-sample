workflow "Golang workflow" {
  on = "push"
  resolves = ["Test", "Test2"]
}

action "GolangCI-Lint" {
  uses = "./.github/actions/lint"
}

action "Test" {
  needs = ["GolangCI-Lint"]
  uses = "./.github/actions/test"
}

action "GolangCI-Lint2" {
  uses = "./.github/actions"
  args = "lint"
}

action "Test2" {
  needs = ["GolangCI-Lint2"]
  uses = "./.github/actions"
  args = "test"
}
