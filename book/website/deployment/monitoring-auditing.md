(deployment-monitoring-auditing)=
# Monitoring and Auditing

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 4**: Implement a system for periodic auditing and updating.
:::

Monitoring and auditing are the mechanisms by which problems with a deployed AI system are detected and corrected. Without them, a model that has degraded — because the patient population has changed, because equipment has been upgraded, or because clinical practice has evolved — continues to be used as if it still performs as validated.

## Continuous performance monitoring

Continuous monitoring tracks AI performance in real-time or near-real-time using available data:

- **Proxy metrics**: where ground truth is not immediately available, use proxy indicators (radiologist override rate, downstream clinical decision rate, escalation rate)
- **Statistical process control**: treat AI performance as a process and use control charts to detect statistically significant deviations
- **Drift detection**: statistical tests for changes in the distribution of inputs or outputs (covariate shift, concept drift)

## Periodic auditing

Continuous monitoring catches sudden failures. Periodic auditing catches gradual drift and systematic issues that are below the threshold of real-time detection:

- **Frequency**: biannual or annual is typical for most applications; higher frequency for high-stakes or rapidly evolving domains
- **Scope**: re-evaluate performance on a representative sample of recent cases against a ground truth standard
- **Dimensions**: include all evaluation dimensions — technical performance, fairness across subgroups, usability
- **Comparison**: compare audit results against baseline performance at deployment and against the pre-specified minimum thresholds

## Acting on monitoring and audit findings

Monitoring and auditing are only useful if findings lead to action. Define in advance:

- **Alert thresholds**: at what level of performance degradation is escalation required?
- **Escalation pathways**: who is notified? What is the decision tree?
- **Response options**: recalibration, model update, deployment suspension, investigation
- **Update procedures**: how are model updates validated and deployed? What regulatory implications do updates have?

Automatic sharing of audit reports with clinical stakeholders, not just technical teams, ensures that accountability is maintained.

## Reporting on model updates

When the model is updated (retrained, fine-tuned, or recalibrated):
- Document what changed and why
- Re-evaluate performance on the standard evaluation suite
- Update the model card
- Assess whether the update requires regulatory review
- Communicate the update to users
