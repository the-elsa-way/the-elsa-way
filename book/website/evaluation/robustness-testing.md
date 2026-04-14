(evaluation-robustness-testing)=
# Robustness Testing

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Robustness recommendation 3**: Evaluate and optimise robustness against real-world variations.
:::

Robustness is the ability of an AI model to maintain reliable performance under the variations it will encounter in real-world deployment. Evaluating robustness requires actively testing the limits of the model — not just measuring performance on typical examples.

## Sources of real-world variation

### Acquisition variation
- Scanner manufacturer and model changes
- Protocol changes (field strength, sequence, contrast dose)
- Image reconstruction algorithm updates
- Operator experience differences

### Patient population variation
- Disease severity distribution (deployment population may differ from training population)
- Comorbidities not represented in training data
- Rare disease subtypes
- Edge cases: unusual presentations, artefacts, incidental findings

### Temporal variation (data drift)
Models trained on historical data may degrade as clinical practice evolves:
- Changes in clinical coding practices
- New treatment protocols affecting disease presentation
- Changes in population health (e.g., post-pandemic comorbidity shifts)
- Software updates to acquisition equipment

### Adversarial variation
- Synthetic data designed to fool the model
- Corrupted inputs (noise, artefacts)
- Adversarial patches in medical images

## Testing for robustness

### Real-world variation testing
Apply the same evaluation metrics across data collected under different conditions:

- Performance by scanner type/manufacturer
- Performance by acquisition protocol variant
- Performance by acquisition site
- Performance in cases with known data quality issues

### Simulated variation testing
Systematically simulate variations to test robustness:

- Add calibrated noise to inputs
- Apply domain-specific augmentations (slice thickness changes, contrast variations)
- Test on images from different temporal periods

### Stress testing
Test performance on challenging edge cases:

- Cases near the decision boundary
- Rare disease presentations
- Worst-case acquisition conditions
- Missing or partially available inputs

## Robustness metrics

Beyond standard performance metrics, assess:

- **Performance variance** across conditions (low variance = more robust)
- **Performance floor**: what is the worst-case performance under realistic variation?
- **Graceful degradation**: does performance degrade smoothly or catastrophically?

## Reporting

Report performance across all tested conditions, including conditions where robustness is limited. This information is essential for clinicians and procurement decision-makers to understand where the AI can and cannot be trusted.
