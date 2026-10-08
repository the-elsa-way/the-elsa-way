(evaluation)=
# Guide for evaluation

Evaluation tests whether your AI system does what you claim, for the patients you built it for, in the places where it will be used. You check technical performance, then performance at other sites, then differences between patient groups, usability, robustness and explanations. Last, and hardest, you check whether patients are better off when clinicians use the tool.

:::{admonition} Running case: sepsis early warning
:class: note
This book follows a fictional example. A regional hospital in the Northern Netherlands has built a model, with a university partner, that estimates sepsis risk every hour from vital signs, lab results and nursing observations in its electronic health record (EHR). When the score crosses a threshold, the ward nurse and the physician on call get an alert. In the evaluation phase the team tests the model on held-out data from its own hospital, validates it on data from a second hospital, and then runs it in silent mode (scores are computed and stored but not shown to clinicians) before anyone relies on it.
:::

The FUTURE-AI guideline {cite}`lekadir2025futureai` places these recommendations in the evaluation phase: G4 (an adequate evaluation plan), Un3 (external datasets or several sites), F3 (evaluate bias and correct it where needed), R3 (robustness against real-world variation), E2 (evaluate explanations with end users), Us4 (user experience and acceptance, tested with independent end users), Us5 (clinical utility and safety) and T2 (documentation, including the evaluation results). You also return to F1, Un1 and E1 from the design phase, to check that the sources of bias, intended settings and explanation needs you defined then still hold.

## Chapters in this section

| Chapter | What you will learn |
|---|---|
| [Evaluation planning](evaluation-planning.md) | How to fix your metrics, thresholds and subgroups before you see the test data |
| [External and multi-site validation](external-validation.md) | Why performance at one hospital does not carry over to another, and how to test it |
| [Fairness and bias assessment](fairness-bias.md) | How to measure and report differences in performance between patient groups |
| [Usability and user experience](usability-ux.md) | How to test whether real users can work with the tool safely |
| [Clinical utility and safety](clinical-utility-safety.md) | How to show benefit to patients, find harms and weigh costs |
| [Robustness testing](robustness-testing.md) | How to test performance when the data change in realistic ways |
| [Explainability assessment](explainability-assessment.md) | How to check whether explanations are faithful and useful |
| [Reporting and transparency](reporting-transparency.md) | Which reporting guidelines apply and how to meet them |
