#!/bin/bash
set -e

LOCAL_REPO_PATH=./playground/test-repo
REMOTE_REPO_URL=https://github.com/SWE-agent/test-repo

rm -rf $LOCAL_REPO_PATH # remove the local repo if it exists

git clone $REMOTE_REPO_URL $LOCAL_REPO_PATH

sweagent run \
  --config config/custom/deepseek.yaml \
  --env.deployment.image=python:3.12 \
  --env.repo.path=$LOCAL_REPO_PATH \
  --problem_statement.text="Hey, can you fix all the bugs in the repository (could be found under directory 'problem_statements')? \
    If the file you are reviewing already has bug or raises runtime error (this could be detected by running the scripts), please fix them first." \
  --actions.apply_patch_locally=True