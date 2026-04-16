(development-addressing-ai-risks)=
# Addressing AI Risks

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 3**: Implement measures to address AI risks; and **Robustness recommendation 3**: Evaluate and optimise robustness against real-world variations.
:::

Risk management does not stop at the end of the design phase. As the system takes shape, new risks become visible, and mitigation measures can be implemented and tested.

```{figure} ../figures/data-hazard.jpg
:name: data-hazard
:alt: Illustration of a data hazard symbol highlighting the potential risks and harms that can arise from AI systems using sensitive or biased data.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Technical risk mitigation

### Robustness to distribution shift

AI models trained in one environment often degrade when deployed in another. Mitigation measures:

- **Domain adaptation**: fine-tune the model on data from the target deployment site
- **Domain generalisation**: train across multiple diverse sites to improve generalisation
- **Data augmentation**: simulate the variation expected at deployment (see [Data Collection](data-collection.md))
- **Transfer learning**: initialise with a model pre-trained on diverse data

### Adversarial robustness

Healthcare AI systems may be subject to adversarial attacks: deliberate perturbations designed to fool the model. This is particularly relevant in high-stakes applications such as medical imaging for cancer screening:

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
