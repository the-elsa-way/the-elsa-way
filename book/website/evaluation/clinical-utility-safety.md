(evaluation-clinical-utility-safety)=
# Clinical Utility and Safety

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 5**: Evaluate clinical utility and safety (eg, effectiveness, harm, cost-benefit).
:::

Technical performance on a benchmark dataset is not clinical utility. Clinical utility means that the AI, when used in real clinical practice, leads to better outcomes for patients — better diagnoses, better treatment decisions, fewer harms, or more efficient care. It is the most important evaluation criterion, and it is the hardest to demonstrate.

## Why clinical utility is not the same as accuracy

A model may achieve high accuracy on a held-out test set and yet:

- Not change clinical decisions that matter (clinicians already make correct decisions on easy cases)
- Be ignored or overridden in practice due to poor usability
- Introduce new errors via automation bias
- Improve outcomes for some patients while worsening them for others
- Perform worse in the deployment environment than in the test set

The only way to establish clinical utility is through rigorous prospective evaluation in the clinical setting.

## The clinical evaluation plan

:::{admonition} FUTURE-AI
:class: tip
This supports **General recommendation 4**: Define an adequate evaluation plan.
:::

Define a clinical evaluation plan that specifies:

- **Primary clinical outcome**: what patient outcome will improve if the AI is beneficial? (disease missed, treatment delayed, hospital stay, cost)
- **Study design**: what level of evidence is achievable? (RCT, prospective cohort, stepped-wedge)
- **Comparator**: what is the AI compared against? (standard of care without AI)
- **Population**: which patients are included?
- **Setting**: which clinical environment is evaluated?
- **Duration**: over what period?

## Evidence pyramid for clinical AI evaluation

| Level | Design | Evidence strength |
|---|---|---|
| 5 | Retrospective performance on historical data | Weakest — necessary but not sufficient |
| 4 | Prospective performance on new cases | Shows real-world performance |
| 3 | Impact study: comparing decisions with/without AI | Shows influence on clinical decision-making |
| 2 | Prospective randomised trial | Shows causal effect on patient outcomes |
| 1 | Systematic review and meta-analysis | Highest level |

Most published AI studies remain at level 5. Deployment decisions should ideally be supported by level 3 or higher.

## Assessing safety

Safety evaluation asks: can this AI cause harm?

- **Adverse events**: incorrect AI outputs that lead to patient harm
- **Automation bias incidents**: cases where clinicians over-relied on incorrect AI output
- **Near-misses**: cases where harm was narrowly avoided
- **Failure modes**: systematic error patterns (specific disease subtypes, demographics, acquisition conditions)

Document and report all identified safety issues — not just successes.

## Cost-effectiveness

For health technology assessment and procurement decisions, cost-effectiveness evidence is increasingly required:

- Reduction in clinician time (diagnostic efficiency)
- Reduction in unnecessary downstream procedures
- Health economic modelling of outcome improvements
- Infrastructure and licensing costs

Cost-effectiveness should not be an afterthought. If clinical utility cannot be demonstrated, the cost of AI deployment is not justified.
