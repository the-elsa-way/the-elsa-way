(evaluation-external-validation)=
# External and Multi-Site Validation

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Universality recommendation 3**: Use external datasets and/or multiple sites; and **Universality recommendation 4**: Evaluate and demonstrate local clinical validity.
:::

Single-site validation is not sufficient for a healthcare AI system that will be deployed beyond the site where it was developed. Performance in the lab does not predict performance in the clinic. External validation is the minimum standard for claiming clinical utility.

## Why external validation matters

AI models are highly sensitive to the statistical properties of their training data. A model may learn features that are specific to one hospital's imaging protocol, coding practices, or patient population — rather than the clinically meaningful signal. This results in models that appear to perform well on internal validation but fail when tested in a new environment.

A systematic review of 130 AI studies in medical imaging found that performance consistently degraded in external validation compared to internal validation. This is not a bug — it is a predictable consequence of training on non-representative data.

## Types of external validation

- **Temporal validation**: testing on data collected later than the training data, at the same site (validates that performance holds over time)
- **Geographic validation**: testing at a different institution in the same country
- **Cross-national validation**: testing at institutions in different countries (different healthcare systems, patient populations, equipment)
- **Cross-device validation**: testing on images from different equipment manufacturers or models

The strongest validation combines multiple types.

## Factors affecting external validity

Document and investigate factors that may cause performance variation across sites:

- **Population differences**: disease prevalence, demographic profile, comorbidities
- **Acquisition differences**: scanner make/model, protocol, contrast agents
- **Workflow differences**: who performs the scan, when, under what clinical conditions
- **Label differences**: different annotation practices, different ground truth definitions

## Multi-site validation design

When designing a multi-site validation study:

- Include sites that represent the range of settings where the AI will be deployed
- Include at least one low-resource or community setting if the AI is intended for broad deployment
- Stratify analysis by site to identify site-specific performance patterns
- Report both aggregated and per-site performance

## Local clinical validity

Even after external multi-site validation, **local clinical validation** is recommended before deployment at a new site. This involves testing the AI on a representative sample of local patients to:

- Confirm that performance is acceptable in the local population
- Identify local factors (equipment, workflow, patient demographics) that require adaptation
- Establish local performance baselines for ongoing monitoring
