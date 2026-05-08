---
name: create-git-branch
description: Create a github branch with a name based on the work to be done
---

# Intent
Create a github branch with a name that describes the intended work to be done

## Step-by-Step Instructions
The following will be a step-by-step set of things to check. Each step is important to follow and will typically be needed for a successful PR to be created.

## Step 1a: Understand the intent of the work
The first thing to do is understand the intent of the work to be done. This will typically be included in the initial prompt, but if it is not, or there is additional information you need to clarify the intent, it is important to ask clarifying questions.

## Step 1b: If referenced, review the related github issue for more context
When possible, the initial prompt will also reference a github issue that the branch is intended to address. If this is the case, it is also important to read the github issue to gain additional context about the problem being solved.

## Step 2: Create the branch
Once the intent of the work is established, you can create the branch using the github cli (gh). Please name the branch based on the intent of the work, and ensure to prefix the branch name with `cshih/`.

If there is a github issue that was referenced in the initial prompt, please also included the issue number after the prefix (e.g., `cshih/100-` for issue number 100)
