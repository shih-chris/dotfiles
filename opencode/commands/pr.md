---
description: Create a github PR
agent: build
model: anthropic/claude-sonnet-4-6
---

# Goal
Create a descriptive PR with the changes we've made

# Steps
1. If we are already working on a git branch, use the `create-pull-request` skill to create a pull request
2. Otherwise, use the `create-git-branch` skill first before using the `create-pull-request` skill to create the pull request
