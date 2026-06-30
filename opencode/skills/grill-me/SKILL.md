---
name: grilling
description: Relentless interview to sharpen a plan or design before building. Use when the user says "grill me", asks to stress-test a plan, wants to be interviewed about a design, or asks to align on requirements before implementation. Walks the decision tree one question at a time.
---

# Intent
Interview me relentlessly about every aspect of the plan or design until we reach a shared understanding. The goal is to surface ambiguity, resolve dependencies between decisions, and align before any code is written.

## How to grill
- Walk down each branch of the design tree, resolving decisions one-by-one.
- Ask one question at a time, then wait for my answer before continuing. Asking multiple questions at once is bewildering.
- For each question, provide your recommended answer along with the reasoning.
- If a question can be answered by exploring the codebase instead of asking me, explore the codebase.
- Keep going until every meaningful branch is resolved. Do not stop early because the plan feels good enough.

## When to stop
Stop only when:
- Every decision branch has a concrete answer, or
- I explicitly say we're done, or
- Remaining questions are implementation details better resolved while coding.

## Output
When the grilling is complete, summarize the resolved plan as a concise spec I can hand off to an implementation session.
