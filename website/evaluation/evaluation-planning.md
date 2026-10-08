(evaluation-evaluation-planning)=
# Evaluation planning

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 4** (G4): plan the evaluation properly, including the datasets, the metrics and the methods you compare against {cite}`lekadir2025futureai`.
:::

Write your evaluation plan before the evaluation starts, and before anyone opens the test data. If you choose metrics and analyses after seeing the results, you can, without meaning to, pick the ones that make the model look best. Readers then cannot tell which findings were planned and which were found by searching.

## Pre-specification

Before you access the test data, write down:

1. **Primary metric**: the single measure that decides whether the evaluation succeeded.
2. **Success threshold**: the value of the primary metric that counts as success.
3. **Secondary metrics**: other measures you will report.
4. **Comparator**: what the AI is compared against, such as current practice or an existing clinical score.
5. **Subgroups**: the patient groups for which you will report performance separately.
6. **Statistical analysis plan**: how you will compute confidence intervals and any statistical tests.

Register the plan where you can, for example on OSF or ClinicalTrials.gov, so that others can compare it with what you report.

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis case, the team picks sensitivity at a fixed alert rate as its primary metric: of the patients who develop sepsis, how many get an alert at least a few hours earlier, if the wards receive no more alerts per day than the nurses agreed they can handle. The comparator is the early warning score the wards already use. Subgroups include age bands, sex, ward and patients with few recorded observations, such as those admitted at night.
:::

:::{include} ../toolbox/_generated/passages/evaluation-evaluation-planning-prespecification.md
:::

## Selecting evaluation datasets

:::{admonition} FUTURE-AI
:class: tip
This supports **Universality recommendation 3** (Un3): evaluate with external datasets, several sites, or both.
:::

During development you used a validation set to choose between models and tune their settings. The test set is different: you keep it apart for the whole of development and use it once, for the final estimate. Never evaluate on data the model was trained or tuned on, and check for duplicates, such as the same admission appearing in both training and test data. Where you can, add data from another hospital (external validation) and from different periods, patient groups and recording practices.

## Choosing evaluation metrics

Choose metrics that match the clinical task and the consequences of each type of error. A missed sepsis case costs more than an unnecessary bedside check, but too many unnecessary alerts lead to alert fatigue.

| Task type | Common metrics |
|---|---|
| Binary classification (disease yes or no) | Sensitivity, specificity, positive and negative predictive value, AUC |
| Multi-class classification | Sensitivity and specificity per class, averaged AUC |
| Segmentation (outlining structures in images) | Dice coefficient, Hausdorff distance |
| Risk prediction and survival | C-statistic, calibration, Brier score |
| Object detection in images | Average precision, intersection over union |

Some of these terms need a short explanation. The AUC (area under the receiver operating characteristic curve) is the probability that the model gives a higher score to a random patient with the condition than to a random patient without it; 0.5 is chance and 1.0 is perfect. The C-statistic is the same idea for risk and survival models. Calibration describes whether predicted risks match what happens: of all patients given a 20% risk, about 20% should develop the condition. The Brier score combines discrimination and calibration in one number. The Dice coefficient measures how much an outline drawn by the model overlaps with one drawn by an expert, from 0 (no overlap) to 1 (identical).

Report fairness metrics alongside these. Statistical parity difference is the rate of positive predictions in one group minus the rate in another. Equal opportunity asks for equal sensitivity (true positive rates) across groups, and equalised odds asks for equal true and false positive rates. The [fairness chapter](fairness-bias.md) explains how to choose between them.

## Reference methods

Compare the AI with something meaningful:

- current practice without AI;
- clinicians doing the same task, if you can measure that;
- existing models or scores for the same task.

Beating a clinician on a retrospective dataset under controlled conditions does not show that patients will do better. The [clinical utility chapter](clinical-utility-safety.md) describes the prospective studies that answer that question.
