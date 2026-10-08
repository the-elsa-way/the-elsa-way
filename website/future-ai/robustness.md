(future-ai-robustness)=
# Robustness

Clinical data change when a lab switches assay, a monitor is replaced or a ward starts recording observations differently. The robustness principle asks that a healthcare AI tool keeps its performance and accuracy under such variations in its input data, both expected and unexpected {cite}`lekadir2025futureai`. The paper notes that even small, invisible changes in the input can push a model into wrong decisions.

## Robustness recommendations

### R1: Define sources of data variation early

*Research `++`, deployable `++`.* During design, list what could vary in the data the tool will meet in practice: equipment and its faults, acquisition and annotation protocols, operators' experience and fatigue, noise and artefacts, and context, such as lower data quality in emergency care or at busy times. Deliberate attacks on the input belong on the list too.

**→ See:** [Data strategy](../design/data-strategy.md), [Identifying sources of bias](../design/bias-sources.md)

### R2: Train with representative real-world data

*Research `++`, deployable `++`.* Select and enrich the training data so that it covers the variation you listed under R1: across devices, sites, populations and clinical conditions. Representative data also gives you better estimates of bias for the fairness checks.

**→ See:** [Data collection and management](../development/data-collection.md)

### R3: Evaluate and optimise robustness against real-world variation

*Research `++`, deployable `++`.* Test the tool under conditions that mimic real practice, with stress tests and repeatability tests across data, equipment, staff, patients and sites. Where it fails, try countermeasures such as data augmentation (adding varied copies of training examples), data harmonisation or domain adaptation, and test again.

**→ See:** [Robustness testing](../evaluation/robustness-testing.md)

## Why good test results can mislead

A model's performance is first measured on a *held-out test set*: data set aside from training and used once for the final estimate. That test set usually comes from the same hospital and period as the training data. It tells you little about how the model copes with a different device or a new documentation routine. Robustness work therefore starts at R1 and continues after go-live, when monitoring (see [Traceability](traceability.md), T4) picks up drift.

:::{admonition} Running case: sepsis early warning
:class: note
This example is fictional. The hospital's sepsis model uses lab values such as lactate and C-reactive protein. Under R1, the team lists a change of lab assay, a new EHR documentation template and missing night-time observations as likely variations. Under R3, it tests the model on records with observations removed and with lab values shifted by the difference between the old and new assays, and agrees with the lab to be told before any assay change.
:::
