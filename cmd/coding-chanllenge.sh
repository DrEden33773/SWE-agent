sweagent run \
    --config ./config/coding_challenge.yaml \
    --problem_statement.path=./playground/missing-positive/problem.md \
    --env.repo.path=./playground/missing-positive \
    --agent.model.name=deepseek/deepseek-chat \
    --actions.apply_patch_locally=True