prBranch=${BUILDKITE_BRANCH:-}

buildkite-agent meta-data set "branch" "$prBranch"

buildkite-agent meta-data get "branch"
