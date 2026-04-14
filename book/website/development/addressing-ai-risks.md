(development-addressing-ai-risks)=
# Addressing AI Risks

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 3**: Implement measures to address AI risks; and **Robustness recommendation 3**: Evaluate and optimise robustness against real-world variations.
:::

The risk management process initiated in the design phase continues throughout development. As the system takes shape, new risks become visible and mitigation measures can be implemented and tested.

## Technical risk mitigation

### Robustness to distribution shift

AI models trained in one environment often degrade when deployed in another. Mitigation measures:

- **Domain adaptation**: fine-tune the model on data from the target deployment site
- **Domain generalisation**: train across multiple diverse sites to improve generalisation
- **Data augmentation**: simulate the variation expected at deployment (see [Data Collection](data-collection.md))
- **Transfer learning**: initialise with a model pre-trained on diverse data

### Adversarial robustness

Healthcare AI systems may be subject to adversarial attacks — deliberate perturbations designed to fool the model. Relevant in high-stakes applications (e.g., medical imaging for cancer screening):

- Adversarial training: include adversarial examples in training
- Input validation: detect and flag unusual inputs
- Ensemble methods: harder to fool than single models

### Handling missing or corrupted data

Real-world clinical data frequently contains missing values, corrupted fields, and data quality issues. The model should:

- Handle missing inputs gracefully (not crash or produce silent errors)
- Flag unusual inputs for human review
- Degrade predictably rather than catastrophically when input quality is poor

## Baseline AI model

Implement a baseline AI model as a reference point:

- Provides a lower bound for performance
- Allows quantification of the contribution of each design choice
- Required for comparison in FUTURE-AI Robustness 3 (evaluate robustness against real-world variations)

Conventional baselines include clinical rules, logistic regression, or established prior AI models.

## Security measures

Implement security measures against:

- **Model extraction attacks**: adversaries querying the model many times to reconstruct it
- **Data poisoning**: compromised training data that causes the model to behave maliciously
- **Input manipulation**: deliberate manipulation of inputs to alter model outputs

Document which threats are in scope for your threat model and what measures are implemented against each.
