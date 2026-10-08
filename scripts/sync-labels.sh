#!/usr/bin/env bash
# Create or update the issue labels used by the contribution workflow.
# Requires the GitHub CLI (gh) and write access to the repository.
# Usage: scripts/sync-labels.sh [owner/repo]
set -euo pipefail
repo="${1:-the-elsa-way/the-elsa-way}"

label() { gh label create "$1" --repo "$repo" --color "$2" --description "$3" --force; }

# Status: where an issue is in the workflow
label "status: needs triage" fbca04 "New; an editor has not looked at it yet"
label "status: needs info"   d4c5f9 "Waiting for more information from the person who opened it"
label "status: accepted"     0e8a16 "Agreed to go ahead; anyone can pick it up"
label "status: in progress"  1d76db "Someone is assigned and working on it"

# Type: what kind of change
label "type: correction"     d73a4a "Typo, broken link, factual error or outdated information"
label "type: content"        0075ca "New or improved book content"
label "type: tool"           5319e7 "A tool for the Toolbox"
label "type: infrastructure" bfdadc "Website, build or repository setup"
label "type: question"       d876e3 "A question or other comment"

# Review: the decision level from the Governance page
label "review: minor"        c2e0c6 "One editor approves (typos, clarifications, small additions)"
label "review: significant"  fef2c0 "Two editors approve (new sections in existing chapters)"
label "review: major"        f9d0c4 "Editorial board decides (new chapters, structural changes)"
