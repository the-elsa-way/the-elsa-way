(future-ai-robustness)=
# Robustness

The robustness principle states that healthcare AI tools should maintain reliable performance and accuracy under expected and unexpected variations in real-world input data. Robust AI does not fail catastrophically when confronted with inputs that differ from its training distribution.

## Robustness recommendations

### R1: Define sources of data variation from an early stage

Inventory the sources of variation the AI will encounter in deployment: equipment differences, acquisition protocol variations, population heterogeneity, temporal drift.

**→ See:** [Data Strategy](../design/data-strategy.md), [Identifying Sources of Bias](../design/bias-sources.md)

### R2: Train with representative real-world data

Training data should reflect the distribution of inputs the model will encounter at deployment — across equipment, sites, populations, and clinical conditions.

**→ See:** [Data Collection and Management](../development/data-collection.md)

### R3: Evaluate and optimise robustness against real-world variations

Systematically test performance under conditions that reflect real-world variation. Identify and address robustness weaknesses before deployment.

**→ See:** [Robustness Testing](../evaluation/robustness-testing.md)

## The robustness gap

A well-documented phenomenon in medical AI: models trained and evaluated in controlled conditions demonstrate high performance, but performance drops substantially in real-world deployment. This is the robustness gap.

Common causes:
- Training data not representative of deployment population
- Overfitting to site-specific acquisition characteristics
- Temporal drift (clinical practice and technology evolve)
- Edge cases not represented in training

Addressing the robustness gap requires deliberate effort throughout the lifecycle — not a single test at the end of development.
