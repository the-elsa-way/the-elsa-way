(evaluation-reporting-transparency)=
# Reporting and Transparency

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 2**: Document AI tool including evaluations.
:::

Transparent reporting of AI evaluation results is both a scientific obligation and a safety requirement. Selective reporting — publishing only favourable results, chosen metrics, or favourable subgroup analyses — leads to overestimation of AI performance, failed deployment, and patient harm.

## International reporting standards

Several reporting standards have been developed specifically for healthcare AI:

| Standard | Scope |
|---|---|
| **TRIPOD-AI** | Clinical prediction models using ML/AI |
| **CLAIM** | AI studies in medical imaging (checklist) |
| **CONSORT-AI** | Randomised controlled trials involving AI |
| **SPIRIT-AI** | Protocols for RCTs involving AI |
| **DECIDE-AI** | Early-stage clinical evaluation of decision support AI |
| **PROBAST-AI** | Risk of bias assessment for prediction model studies |

Use the standard most appropriate for your study design. These are not mutually exclusive — TRIPOD-AI and CLAIM may both be applicable to an imaging prediction study.

## What to report

### Study design and data
- Full description of training, validation, and test datasets
- Sample sizes for all datasets, including subgroups
- Data collection dates and sites
- Inclusion and exclusion criteria

### Model
- Model architecture, with enough detail for replication
- Training procedure, hyperparameters, and selection strategy
- Software versions and computational environment

### Performance
- Primary and secondary metrics with confidence intervals
- Calibration plots and calibration metrics
- Subgroup performance (disaggregated by pre-specified attributes)
- Comparison against benchmark

### Limitations
- Known failure modes
- Populations where validation has not been conducted
- Data limitations (missing attributes, historical biases)
- Generalisability limitations

## Negative results

AI research has a strong publication bias towards positive results. Negative results — models that do not work as hoped, evaluations that reveal unexpected failure modes — are equally scientifically valuable and may prevent other teams from making the same mistakes.

Report negative results alongside positive ones. If submitting to a journal, consider venues that publish negative results, or use preprint servers for rapid dissemination of findings that may not meet publication criteria.

## Study registration

Pre-register your evaluation study where possible:

- Clinical trials: ClinicalTrials.gov
- Observational studies: OSF.io, ISRCTN
- AI model evaluation: OSF.io

Pre-registration makes it possible to distinguish confirmatory from exploratory analyses and reduces the risk of post-hoc outcome switching.
