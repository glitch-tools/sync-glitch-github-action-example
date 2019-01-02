workflow "Sync Glitch on push" {
  on = "push"
  resolves = ["Sync changes"]
}

action "Sync changes" {
  uses = "glitch-tools/sync-glitch-github-action@master"
  secrets = ["GLITCH_PROJECT_ID", "GLITCH_TOKEN"]
}
