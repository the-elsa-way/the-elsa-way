(deployment-monitoring-auditing)=
# Monitoring and auditing

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 4** {cite}`lekadir2025futureai`: audit the tool periodically and update it when needed.
:::

Models degrade without anyone touching them. The patient population changes, a lab switches to a new assay, the EHR gets a new form, clinical practice moves on. Without monitoring and audits, the tool keeps being used as if it still performs as it did at validation.

:::{admonition} Running case: sepsis early warning
:class: note
In this book's fictional running case, the hospital's lab replaces the analyser it uses for lactate, a blood value the sepsis model relies on. The new assay reports slightly different values. The model's alert rate rises within a week, and the monitoring dashboard flags it before nurses start to complain about extra alerts.
:::

## Continuous performance monitoring

The true outcome (did the patient have sepsis?) often becomes known only days later. In the meantime, use proxy metrics: indicators you can measure straight away that move with performance, such as how often clinicians override the AI, how often an alert leads to action, or how often patients are escalated.

Statistical process control, a method from manufacturing, helps you tell real change from noise. You plot a metric over time on a control chart with limits based on its normal variation and investigate when it crosses them. Drift detection uses statistical tests to spot changes in the data. Covariate shift is a change in the inputs (for example, older patients or a new assay); concept drift is a change in how inputs relate to the outcome (for example, a new treatment that changes how sepsis develops).

:::{include} ../toolbox/_generated/passages/deployment-monitoring-auditing-continuous.md
:::

## Periodic auditing

Continuous monitoring catches sudden failures; periodic audits catch slow drift and systematic problems that stay below the alert thresholds. Choose the frequency based on risk, for example once or twice a year, and more often for high-stakes tools or settings that change quickly.

In each audit, compare the AI's outputs with the true outcome on a representative sample of recent cases. Look at every dimension you evaluated before go-live, including technical performance, fairness across patient groups and usability. Then compare the results with the performance measured at go-live and with the minimum thresholds you set in advance.

## Acting on monitoring and audit findings

Monitoring is only useful if findings lead to action, so decide in advance:

- how much degradation triggers escalation
- who is notified, and how they decide what to do
- which responses are available (recalibration, model update, suspending the tool, further investigation)
- how updates are validated and released, and what that means for regulatory status

Share audit reports with clinical staff and management as well as the technical team, so that the people accountable for the tool see the results.

## Reporting on model updates

When you retrain, fine-tune or recalibrate the model:
- record what changed and why
- re-run the standard evaluation
- update the model card, the short document that describes the model's intended use and performance {cite}`mitchell2019modelcards`
- check whether the update needs regulatory review
- tell users what changed and what it means for them
