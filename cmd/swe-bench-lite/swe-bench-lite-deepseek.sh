sweagent run-batch \
    --config config/default.yaml \
    --agent.model.name deepseek/deepseek-chat \
    --num_workers 4 \
    --instances.type swe_bench \
    --instances.subset lite \
    --instances.split dev  \
    --instances.slice :4 \
    --instances.shuffle=True \
    --instances.evaluate=True