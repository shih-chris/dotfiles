---
name: create-pull-request
description: Create a github pull request
---

# Intent
Create a github pull request, using the github cli (gh), that describes the changes made on the current git branch, unless a specific branch is specified.

# Step-by-Step Instructions
The following will be a step-by-step set of things to check. Each step is important to follow and will typically be needed for a successful PR to be created.

## Step 1: Understand the changes
The first thing to do is understand the changes that have been made. Unless otherwise specified in the initial prompt, you can assume that the current branch checked out is the one that contains the work that has been done.

## Step 2: Understand the intent of the branch
The next thing is to understand the intent of the branch. This typically comes from a combination of the changes made, the name of the branch, and additional context from previous agent discussion (i.e. when creating a branch via an agent, the intent is typically discussed)

## Step 3: Commit the changes that are related to the branch's intent
Once the intent and changes have been understood, we then want to commit the changes in logical chunks in order to make it easier for a reviewer to understand what work has been done. You can use the github cli (gh) to make these commits.

## Step 4: Push the branch and create a PR
Lastly, once the changes have been committed, we need to push the branch and create a PR. When creating the PR we should aim to be concise but thorough to provide the reviewer with an overview of:

1. the problem we intend to solve
2. any relevant context/research done to understand the root of the problem
3. the changes made to solve the problem
4. any tests done to ensure that the solve addresses the problem

# Example PR Summary
## Summary
- Separates partitions_to_load (8 days) from partitions_to_replace (6 days) in the rpt_breakout_usage model
- Fixes an issue where day-over-day telemetry comparisons were incorrectly showing null values for previous day data

## Problem
The model performs day-over-day comparisons of telemetry data. Previously, both the data loading window and partition replacement window used the same 6-day lookback via partitions_to_replace.

This caused a critical issue: when loading data for day N, the model needs data from day N-1 for comparison. However, if both windows are identical, the earliest day in the load window (day N-6) has no previous day data available (day N-7 wasn't loaded), causing all historical values to register as having null previous day comparisons.

## Solution
- Created separate partitions_to_load variable with 8-day window for loading source data from CTEs
- Kept partitions_to_replace at 6 days for the final partition replacement strategy
- This ensures we load 2 extra days of historical data to support proper day-over-day calculations
- Updated source CTEs (product_org_stats_daily, core_org_stats_daily) to use partitions_to_load
- Added final WHERE clause using partitions_to_replace to control which partitions are actually replaced

## Test plan
- [x] Verify model compiles successfully
- [x] Run incremental build and confirm 6 partitions are replaced
- [x] Verify source data includes 8 days for proper lookback calculations
- [x] Check that day-over-day comparisons now have proper previous day values (no nulls)
