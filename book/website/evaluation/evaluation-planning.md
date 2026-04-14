(evaluation-evaluation-planning)=
# Evaluation Planning

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 4**: Define an adequate evaluation plan (eg, datasets, metrics, reference methods).
:::

A rigorous evaluation plan is written before the evaluation begins — ideally before the test data is accessed. Post-hoc selection of metrics and analyses that show the model in the best light is a form of reporting bias that has contributed to the replication crisis in AI research.

## Pre-specification

Pre-specify, in writing, before accessing test data:

1. **Primary evaluation metric**: what is the single most important measure of success?
2. **Success threshold**: what value of the primary metric constitutes a success?
3. **Secondary metrics**: additional metrics reported alongside the primary
4. **Comparison benchmark**: what is the AI compared against? (radiologist, clinical rule, previous AI)
5. **Subgroups for fairness analysis**: which demographic and clinical subgroups will performance be disaggregated by?
6. **Statistical analysis plan**: how will confidence intervals and statistical tests be computed?

Register your evaluation plan (e.g., on OSF or ClinicalTrials.gov) if possible.

## Selecting evaluation datasets

:::{admonition} FUTURE-AI
:class: tip
This supports **Universality recommendation 3**: Use external datasets and/or multiple sites.
:::

- The test set must be independent of the training set — never test on data the model was trained or tuned on
- Ideally, use data from a different institution than the training data (external validation)
- Use multiple datasets that reflect different acquisition conditions, populations, and sites
- Verify that no training data was used in evaluation datasets (de-duplication check)

## Choosing evaluation metrics

The choice of metric should match the clinical task and the consequences of different types of error:

| Task type | Commonly used metrics |
|---|---|
| Binary classification (detection) | Sensitivity, specificity, AUC-ROC, PPV, NPV, F1 |
| Multi-class classification | Per-class sensitivity/specificity, macro/micro AUC |
| Segmentation | Dice coefficient, Hausdorff distance, surface distance |
| Regression (survival, risk) | C-statistic, calibration, Brier score |
| Detection (object) | Average precision, IoU |

For clinical applications, statistical parity (equal performance across subgroups) and equalised odds are important fairness metrics alongside technical accuracy metrics.

## Reference methods

Always compare the AI against a meaningful reference:

- **Standard of care**: what clinicians currently do without AI
- **Clinician benchmark**: how well do clinicians perform on the same task?
- **Established AI baseline**: if prior AI systems exist for this task, compare against them

A model that outperforms a clinician on a held-out dataset in controlled conditions does not necessarily improve outcomes in the real world. The gap between benchmark performance and clinical benefit is a central challenge in healthcare AI evaluation.
