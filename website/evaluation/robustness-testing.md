(evaluation-robustness-testing)=
# Robustness testing

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Robustness recommendation 3** (R3): evaluate robustness against the variation the tool will meet in real use, and improve it where needed {cite}`lekadir2025futureai`.
:::

When a hospital replaces its lab analyser or changes how nurses record observations in the EHR, the numbers a model receives change, even though the patients have not. A robust model keeps performing acceptably through such changes. Robustness testing looks for the conditions under which performance drops, instead of measuring it only on typical cases.

```{figure} ../figures/reproducible-pipeline.jpg
:name: reproducible-pipeline
:alt: Illustration of a reproducible analysis pipeline showing standardised, well-documented steps that can be reliably re-run and tested across different conditions.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Sources of real-world variation

A change in the data a model receives compared with its training data is called distribution shift. It has four main sources.

**Measurement variation.** For imaging this means scanner make and model, acquisition protocol, reconstruction software and operator experience. For EHR-based models it means lab analysers and assays, monitoring devices, and how often and how completely staff record observations.

**Patient variation.** The deployment population may be sicker or healthier than the training population, have comorbidities that were rare in the training data, or include rare subtypes and unusual presentations.

**Change over time (data drift).** Clinical practice changes. Coding rules, treatment protocols, EHR forms and the health of the population all shift, and a model trained on older data can slowly lose accuracy.

**Deliberate manipulation.** Inputs can be altered on purpose to change the output (adversarial attacks), or be corrupted by noise and artefacts. This matters most for image models and for tools whose outputs affect money or access to care.

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis case, the team knows that the hospital plans to switch to a new lactate assay next year. It tests the model on a period from the second hospital, which already uses that assay, and on simulated data where lactate values are shifted by the expected difference between the two assays.
:::

## Testing for robustness

You can test robustness in three complementary ways.

1. **Real-world variation.** Compute your metrics separately for data collected under different conditions: per site, per device or assay, per period, per ward, and for records with known data quality problems.
2. **Simulated variation.** Change inputs on purpose and watch the output: add realistic noise, shift lab values, remove observations to mimic sparse recording, or for images change slice thickness or contrast.
3. **Stress testing.** Look at the hardest cases: patients near the alert threshold, rare presentations, the worst realistic data conditions, and records with missing inputs.

## Robustness metrics

Alongside the usual performance metrics, report how much performance varies across conditions (less variation means a more robust model), the worst performance you observed under realistic variation, and whether performance falls gradually or suddenly as conditions get worse. A sudden fall is more dangerous, because users get no warning.

## Reporting

Report performance for every condition you tested, including those where the model did poorly. Clinicians and the people who decide on purchase or deployment need this to know where the tool can be relied on and where it cannot. The same results also tell you what to watch for when you [monitor the tool after deployment](../deployment/monitoring-auditing.md).
