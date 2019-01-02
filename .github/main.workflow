workflow "Sync changes in your GitHub repository to glitch.com" {
  on = "push"
  resolves = ["Deploy"]
}

action "Deploy" {
  uses = "glitch-tools/sync-glitch-github-action@master"
  secrets = ["GLITCH_PROJECT_ID", "GLITCH_TOKEN"]
}
