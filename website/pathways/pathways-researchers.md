(pathways-researchers)=
# Pathway: Researchers

This pathway is for academic researchers who study, develop or validate AI for clinical use. It concentrates on the parts of the lifecycle where study design decides how much a result can be trusted: defining the problem, finding sources of bias, documenting data and models, and testing a model on data from other hospitals (external validation).

## Suggested reading order

1. [The FUTURE-AI framework](../foreword/future-ai.md)
2. [Design: problem definition and scoping](../design/problem-definition.md)
3. [Design: identifying sources of bias](../design/bias-sources.md)
4. [Design: risk management planning](../design/risk-management.md)
5. [Development: data quality and fairness](../development/data-quality-fairness.md)
6. [Development: documentation](../development/documentation.md)
7. [Evaluation: evaluation planning](../evaluation/evaluation-planning.md)
8. [Evaluation: external and multi-site validation](../evaluation/external-validation.md)
9. [Evaluation: fairness and bias assessment](../evaluation/fairness-bias.md)
10. [Evaluation: robustness testing](../evaluation/robustness-testing.md)
11. [Evaluation: reporting and transparency](../evaluation/reporting-transparency.md)
12. [FUTURE-AI principles](../future-ai/future-ai.md), with all 30 recommendations

## Reporting guidelines

Journals increasingly expect AI studies to follow a reporting guideline. Which one applies depends on the study design:

| Study | Guideline |
|---|---|
| Developing or validating a clinical prediction model, including machine learning models | TRIPOD+AI {cite}`tripodai2024` |
| AI in medical imaging | CLAIM {cite}`claim2020`, updated in 2024 |
| Protocol for a randomised trial of an AI intervention | SPIRIT-AI {cite}`spiritai2020` |
| Randomised trial of an AI intervention | CONSORT-AI {cite}`consortai2020` |
| First small-scale use of an AI decision support tool in live clinical care | DECIDE-AI {cite}`decideai2022` |

The Evaluation chapters refer to these guidelines where they apply.

If your study uses patient records from Dutch hospitals, check early whether it falls under the WMO (the Dutch Medical Research Involving Human Subjects Act). Research that only reuses existing records is usually outside the WMO and goes through the hospital's own review. [Design: ethical review and approval](../design/ethical-review.md) explains the routes.

## Tools

These tools from the [Toolbox](#toolbox) suit your role.

:::{include} ../toolbox/_generated/audiences/researchers.md
:::
