#!/bin/bash
set -euo pipefail

baseBranch=${BUILDKITE_PULL_REQUEST_BASE_BRANCH}
prBranch=${BUILDKITE_BRANCH:-}

echo $baseBranch
echo $prBranch

git diff $baseBranch --name-only -- . ':(exclude)*.md'
