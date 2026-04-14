(deployment-local-validation)=
# Local Validation

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Universality recommendation 4**: Evaluate and demonstrate local clinical validity.
:::

External multi-site validation is necessary but not sufficient. Before deploying an AI system at a specific clinical site, local validation confirms that the system performs acceptably for the local patient population, with local equipment, and in the local clinical workflow.

## Why local validation matters

Even a system that performed well across multiple external validation sites may underperform at a specific new site due to:

- **Local population characteristics**: disease prevalence, demographic profile, comorbidity patterns
- **Local equipment**: specific scanner models, calibration, acquisition protocols
- **Local workflow**: when scans are ordered, by whom, and under what conditions
- **Local data systems**: EHR format, coding conventions, data completeness

A local performance shortfall discovered before go-live can be addressed with targeted adaptation (fine-tuning on local data, workflow adjustment); the same shortfall discovered after go-live causes harm and erodes clinical trust.

## Conducting local validation

1. **Select a representative sample**: collect a set of cases representative of the local patient population, including demographic diversity and typical disease severity distribution
2. **Obtain ground truth labels**: use the local gold standard (clinician review, pathology confirmation, clinical outcome)
3. **Apply the AI to the sample**: record AI outputs, confidence scores, and any system flags
4. **Measure local performance**: calculate primary metrics and subgroup analyses
5. **Compare against minimum thresholds**: compare local performance against the pre-specified minimum acceptable performance thresholds
6. **Identify and address shortfalls**: if performance is below threshold, investigate the cause and consider adaptation before go-live

## Local adaptation

If local performance is inadequate:

- **Fine-tuning**: adapt the model on a local dataset (requires careful management of overfitting risk and regulatory implications)
- **Calibration adjustment**: re-calibrate confidence scores using local data
- **Workflow adaptation**: adjust the deployment configuration (e.g., different alert threshold) to match local prevalence and clinical priorities

Document all adaptations and their rationale. Local adaptations may require regulatory review if they change the model sufficiently.
