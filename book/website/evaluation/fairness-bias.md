(evaluation-fairness-bias)=
# Fairness and Bias Assessment

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Fairness recommendation 3**: Evaluate fairness and debiasing measures.
:::

An AI model that is accurate on average may still systematically disadvantage specific groups of patients. Fairness evaluation makes this visible — and is a prerequisite for responsible deployment.

## Why average performance hides disparities

If 90% of your test set is from one population group and 10% from another, a model that performs well on the majority group and poorly on the minority group can still achieve a high aggregate accuracy. Reporting only aggregate metrics obscures this.

Fairness evaluation requires disaggregated reporting: performance measured separately for each relevant subgroup.

## Defining fairness

There are multiple mathematical definitions of fairness, and they are not all simultaneously achievable:

| Fairness criterion | Definition |
|---|---|
| **Demographic parity** | Equal positive prediction rates across groups |
| **Equal opportunity** | Equal true positive rates (sensitivity) across groups |
| **Equalised odds** | Equal sensitivity and specificity across groups |
| **Calibration** | Equal calibration (predicted probabilities match observed rates) across groups |
| **Individual fairness** | Similar individuals receive similar predictions |

For most clinical applications, **equal opportunity** (equal sensitivity) and **equalised odds** are the most clinically relevant — a screening tool that misses disease more often in one demographic group causes harm.

The choice of fairness criterion should be clinically motivated and documented.

## Subgroups to analyse

Specify subgroups for analysis in the evaluation plan (before accessing the test set). Relevant attributes depend on the application, but commonly include:

- **Age** (e.g., paediatric vs. adult vs. elderly)
- **Sex and gender**
- **Ethnicity** (where recorded; acknowledge limitations in self-reported ethnicity data)
- **Socioeconomic status** (where available — postcode, deprivation index)
- **Disease severity or subtype**
- **Acquisition site or equipment type**

## Measuring performance disparities

Calculate your primary performance metric(s) separately for each subgroup. Report:

- Point estimates for each subgroup
- Confidence intervals (subgroup samples may be small — confidence intervals will be wide)
- Statistical tests for significant differences between subgroups
- Clinical significance assessment: is the magnitude of disparity clinically meaningful?

## Statistical parity difference

A commonly used summary measure: the difference in positive prediction rates (or other metrics) between the best- and worst-performing subgroups. A value of 0 indicates equal performance; values near ±0.1 are generally considered acceptable; values above ±0.2 indicate substantial disparity.

## Reporting

Report all fairness analyses, including subgroups where no significant disparity was found. Selective reporting of fairness results is as problematic as selective reporting of accuracy results.
