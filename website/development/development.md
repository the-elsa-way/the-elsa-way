(development)=
# Guide for development

In the development phase you collect and prepare the data, train the model and build the screens that clinicians will use. Design decisions meet real data here, and some risks only become visible once you see what the hospital records contain: missing night-time observations, a lab assay that changed halfway through the dataset, labels that two clinicians disagree on.

FUTURE-AI places five recommendations in this phase {cite}`lekadir2025futureai`: collect representative real-world training data (R2), collect information on individuals' attributes and on where the data came from (F2), protect privacy and security (G2), put measures in place against the AI risks identified during design (G3) and build the mechanisms through which people work with and oversee the AI (Us2). Stakeholder engagement (G1) continues throughout. FUTURE-AI completes documentation (T2) in the evaluation phase, but you start writing it now, because records reconstructed afterwards are incomplete. Some chapters also point ahead to the evaluation-phase recommendations they prepare for, such as F3 (evaluate and correct bias) and R3 (evaluate robustness).

## Chapters in this section

| Chapter | What you will learn |
|---|---|
| [Data collection and management](data-collection.md) | How to collect representative training data and keep track of it throughout the project |
| [Data quality and fairness](data-quality-fairness.md) | How to check the quality of training data and whether all patient groups are fairly represented |
| [Privacy and security](privacy-security.md) | Technical and organisational measures that protect patient data |
| [Model development](model-development.md) | How to build, train and select a model that is reliable as well as accurate |
| [Human-AI interaction design](human-ai-interaction.md) | How to design the way the AI system presents its output to clinicians |
| [Documentation](documentation.md) | What to document, when and how, so that others can trace and reproduce your work |
| [Addressing AI risks](addressing-ai-risks.md) | Technical measures against the risks identified in the design phase |
