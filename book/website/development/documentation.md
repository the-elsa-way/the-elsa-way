(development-documentation)=
# Documentation

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 2**: Provide documentation (eg, technical, clinical).
:::

Documentation is the foundation of traceability and accountability. An AI system that cannot be documented cannot be audited, reproduced, or safely updated. It cannot satisfy regulatory requirements and cannot be trusted by clinicians or patients.

## What to document

### Model card

A model card is a standardised document that describes an AI model and is intended to be shared alongside the model. Key fields:

- **Model details**: architecture, version, training date, contact information
- **Intended use**: primary use case, intended users, out-of-scope uses
- **Factors**: population, environmental, and technical factors affecting performance
- **Metrics**: evaluation metrics and their values across population subgroups
- **Training data**: description of training data, including diversity and limitations
- **Evaluation data**: description of evaluation data
- **Quantitative analyses**: performance disaggregated by key subgroups
- **Ethical considerations**: risks and mitigations
- **Caveats and recommendations**: known limitations and what they mean for use

### Data sheet / data documentation

A data sheet describes a dataset and is intended to accompany dataset releases. Key fields:

- Motivation: why was this dataset created?
- Composition: what does the dataset contain? How was it collected?
- Collection process: how were data and labels collected?
- Preprocessing: what preprocessing was applied?
- Uses: for what tasks is this dataset appropriate? What uses should be avoided?
- Distribution: how is the dataset distributed? Under what licence?
- Maintenance: who maintains the dataset?

### Technical documentation (for regulatory purposes)

Under EU AI Act and MDR/IVDR, high-risk AI systems require formal technical documentation:

- General description of the system and its intended purpose
- Description of system components and their interaction
- Training and testing methodology
- Validation results
- Risk management documentation
- Instructions for use

## Version control

All code, configuration, data preprocessing scripts, and documentation should be under version control. Use a standard system (Git) and follow good practices:

- Commit messages that describe why a change was made, not just what changed
- Tag releases that correspond to model versions
- Link model versions to the exact data version and code version used to train them

## Reproducibility

A model is reproducible if someone else can train it from scratch and get the same result. Ensure:

- Random seeds are fixed and documented
- Hardware environment is documented (GPU type, driver versions, library versions)
- The full preprocessing pipeline is code, not manual steps
- Dependencies are pinned (use a lockfile)
