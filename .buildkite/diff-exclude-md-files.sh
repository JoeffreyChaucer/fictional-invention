#!/bin/bash
set -euo pipefail

baseBranch=${BUILDKITE_PULL_REQUEST_BASE_BRANCH:-}
prBranch=${BUILDKITE_BRANCH:-}

git diff $baseBranch..$prBranch --name-only -- ':!*.md'
