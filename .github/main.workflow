workflow "Sync Glitch on push" {
  on = "push"
  resolves = ["Sync changes"]
}

action "Sync changes" {
  uses = "glitch-tools/sync-glitch-github-action@master"
  secrets = ["GLITCH_PROJECT_ID", "GLITCH_TOKEN"]
}

workflow "New workflow" {
  on = "push"
  resolves = ["glitch-tools/sync-glitch-github-action"]
}

action "glitch-tools/sync-glitch-github-action" {
  uses = "glitch-tools/sync-glitch-github-action@master"
  secrets = ["GLITCH_PROJECT_ID", "GLITCH_TOKEN"]
}
