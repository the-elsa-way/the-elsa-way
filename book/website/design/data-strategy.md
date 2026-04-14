(design-data-strategy)=
# Data Strategy

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Robustness recommendation 1**: Define sources of data variation from an early stage; and **Universality recommendation 3**: Use external datasets and/or multiple sites.
:::

Data strategy is the plan for what data you will collect, from where, how it will be labelled, and how you will ensure it is representative of the population your AI will serve. Planning this before data collection begins is far less costly than discovering inadequacies mid-project.

## The representative data problem

An AI system trained on non-representative data will perform poorly on the groups that are underrepresented in training. In healthcare, non-representativeness is endemic:

- Clinical datasets over-represent patients from high-income countries, tertiary care centres, and majority ethnic groups
- Equipment and protocol variation across sites creates technical heterogeneity that models may not generalise across
- Historical datasets encode historical clinical practices, which may themselves reflect bias

Representativeness is not just a technical question — it is a fairness question. An AI system that works well for some patients and poorly for others will widen health disparities.

## Planning for data heterogeneity

Document the known sources of data variation for your specific application. These typically include:

**Equipment variation**
- Manufacturer, model, software version
- Acquisition protocol (field strength, scan parameters, staining protocols)
- Maintenance and calibration differences

**Operator variation**
- Differences between annotators (inter-rater variability)
- Differences in clinical practice across sites
- Experience level of operators

**Patient population variation**
- Demographic heterogeneity: age, sex, ethnicity, socioeconomic status
- Disease heterogeneity: subtype, severity, comorbidities
- Geographic variation in disease prevalence

**Context variation**
- Emergency versus elective settings
- Urban versus rural healthcare
- Resource level

## Multi-site data collection

Where possible, collect data from multiple sites. Single-site datasets produce models that routinely fail on external validation. Multi-site data is harder to organise but produces more robust models.

:::{tip}
When designing multi-site data collection, use shared data collection protocols and standardised annotation guidelines. Federated learning can enable multi-site training without centralising sensitive patient data.
:::

## Annotation and labelling

The quality of annotations determines the quality of what the model learns. Plan for:

- **Who annotates**: Clinicians with appropriate expertise (not crowdsourced non-experts for clinical tasks)
- **Annotation guidelines**: Written standards for how ambiguous cases are handled
- **Inter-rater agreement**: Measure and document disagreement between annotators
- **Gold standard**: For some tasks, define a process for resolving disagreements (consensus, expert adjudication)
- **Label quality**: Consider uncertainty in labels; some ground truth is itself uncertain

## Data minimisation

Collect only the data you need for the stated purpose. This is both a GDPR requirement and good practice. More data is not always better — more relevant, representative data is better.
