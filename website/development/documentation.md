(development-documentation)=
# Documentation

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 2**: Provide documentation (eg, technical, clinical).
:::

Documentation is the foundation of traceability and accountability. An AI system that cannot be documented cannot be audited, reproduced, or safely updated. It will not satisfy regulatory requirements, and it cannot be trusted by clinicians or patients.

```{figure} ../figures/documentation.jpg
:name: documentation
:alt: Illustration of documentation practices showing a person writing thorough records that enable others to understand and reproduce a process.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## What to document

### Model card

A model card is a standardised document that describes an AI model and is intended to be shared alongside the model {cite}`mitchell2019modelcards`. Key fields:

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

A data sheet describes a dataset and is intended to accompany dataset releases {cite}`gebru2021datasheets`. Key fields:

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

A model is reproducible if someone else can train it from scratch and get the same result. To achieve this:

- Fix and document random seeds
- Document the hardware environment (GPU type, driver versions, library versions)
- Implement the full preprocessing pipeline as code, not manual steps
- Pin all dependencies (use a lockfile)
