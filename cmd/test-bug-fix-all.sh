sweagent run \
  --config config/custom/deepseek.yaml \
  --env.deployment.image=python:3.12 \
  --env.repo.github_url=https://github.com/SWE-agent/test-repo \
  --problem_statement.text="Hey, can you fix all the bugs in the repository?"