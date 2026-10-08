(future-ai-fairness)=
# Fairness

A model can score well on average and still miss more cases in one group of patients than in another. The fairness principle asks that a healthcare AI tool performs the same, or at least very similarly, across individuals and groups, including groups that are under-represented or disadvantaged {cite}`lekadir2025futureai`. Perfect fairness may be out of reach, so the guideline asks you to find, report and reduce bias as far as you can.

## Fairness recommendations

### F1: Identify possible sources of bias early

*Research `++`, deployable `++`.* During design, bring together clinicians, patients, epidemiologists and ethicists to list where bias could enter your tool. Look at three kinds of source:

- attributes of patients, such as sex, gender, age, ethnicity, socioeconomic status and comorbidities or disability;
- factors specific to your application, for example skin colour in skin cancer detection or breast density in breast cancer screening, which the paper gives as examples;
- human and technical bias in how data are collected, labelled and curated, and in which input features you choose.

**→ See:** [Identifying sources of bias](../design/bias-sources.md)

### F2: Record attributes of patients and data

*Research `+`, deployable `+`.* You can only check for bias in groups you can identify. Record the patient attributes from F1 and attributes of the data itself, such as the site, the device and how labels were made. Collecting sensitive attributes needs a lawful basis and ethical approval, and the paper asks you to weigh the benefit for non-discrimination against the risk of re-identifying patients.

**→ See:** [Data collection and management](../development/data-collection.md)

### F3: Evaluate bias and, where needed, correct it

*Research `+`, deployable `++`.* Measure performance separately for each group you recorded. If you find a gap that matters clinically, test correction methods (such as resampling the training data) and check what they do to both fairness and overall accuracy. Report any bias that remains.

**→ See:** [Fairness and bias assessment](../evaluation/fairness-bias.md)

## Choosing a fairness measure

The right fairness measure depends on which error does more harm. For screening, a missed case is often the worst outcome, so you compare sensitivity (the share of true cases the tool catches) between groups; equal sensitivity is called *equal opportunity*. When false alarms also cause harm, aim for *equalised odds*: equal true positive and false positive rates across groups. The *statistical parity difference* compares how often each group gets a positive prediction, whatever their true condition. No clinically validated threshold says when a difference becomes unacceptable, so decide that with the clinicians and patients on your team.

:::{admonition} Running case: sepsis early warning
:class: note
This example is fictional. A regional hospital in the Northern Netherlands builds a model that estimates sepsis risk every hour from vital signs, lab results and nursing observations in its electronic health record. Under F1 the team notes that patients have fewer recorded observations at night and on some wards, so the model may see less data for them. Under F2 it records ward, time of day and number of observations alongside age and sex. Under F3 it compares sensitivity and false alarm rates across those groups before deciding where to set the alert threshold.
:::
