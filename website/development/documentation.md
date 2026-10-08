(development-documentation)=
# Documentation

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 2**: document the AI tool, technically and clinically. FUTURE-AI completes this documentation in the evaluation phase; you start it during development {cite}`lekadir2025futureai`.
:::

Six months after training, someone will ask which data version the model saw, why a variable was dropped, or how the decision threshold was chosen. An auditor, a Notified Body (the independent organisation that assesses medical devices for CE marking) or a clinician investigating an incident needs the same answers. If you write them down while you work, you can give them; if you reconstruct them later, you will miss things.

```{figure} ../figures/documentation.jpg
:name: documentation
:alt: Illustration of documentation practices showing a person writing thorough records that enable others to understand and reproduce a process.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## What to document

### Model card

A model card is a short, standard document that describes a model and travels with it {cite}`mitchell2019modelcards`. It covers:

- Model details: architecture, version, training date, contact
- Intended use: main use, intended users, uses that are out of scope
- Factors: patient, environmental and technical factors that affect performance
- Metrics: which performance measures you report and why
- Training and evaluation data: what they contain, how diverse they are, their limitations
- Quantitative analyses: performance broken down by relevant subgroups
- Ethical considerations: risks and how you address them
- Caveats and recommendations: known limitations and what they mean in practice

:::{include} ../toolbox/_generated/passages/development-documentation-model-card.md
:::

### Datasheet for the data

A datasheet does for a dataset what a model card does for a model {cite}`gebru2021datasheets`. It answers why the dataset was created, what it contains, how data and labels were collected, what preprocessing was applied, which uses are appropriate and which are not, how it is distributed and under what licence, and who maintains it.

:::{include} ../toolbox/_generated/passages/development-documentation-datasheet.md
:::

### Technical documentation for regulators

If your system is a medical device, the MDR requires technical documentation (Annex II) before CE marking {cite}`mdr2017`. If it is also a high-risk AI system under the EU AI Act, Art. 11 and Annex IV add AI-specific content {cite}`euaiact2024`. Both expect, among other things:

- A general description of the system and its intended purpose
- Its components and how they interact
- How the model was trained and tested, and on which data
- Validation results
- Risk management documentation
- Instructions for use

A model card and datasheet do not replace this, but most of their content feeds into it.

## Version control

Keep code, configuration, preprocessing scripts and documentation under version control, using a standard system such as Git. Write commit messages that explain why a change was made as well as what changed. Tag each release that corresponds to a model version, and record for every model version the exact data version and code version used to train it.

:::{include} ../toolbox/_generated/passages/development-documentation-version-control.md
:::

## Reproducibility

A model is reproducible when someone else can retrain it from your records and get the same or very close results. Write the full preprocessing pipeline as code, with no manual steps. Pin every dependency in a lockfile and record the hardware and software environment (processor or GPU type, driver and library versions). Fix and record random seeds. On GPUs, seeds alone do not guarantee identical results, because some operations are non-deterministic; enable your framework's deterministic settings if you need exact repeats, or accept results that are close to identical and say so.
