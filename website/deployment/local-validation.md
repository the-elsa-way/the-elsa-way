(deployment-local-validation)=
# Local validation

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Universality recommendation 4** {cite}`lekadir2025futureai`: show that the tool is clinically valid at the site where it will be used.
:::

A model that did well at several external sites can still underperform at yours. Local validation checks, before go-live, that the tool works acceptably for your patients, with your equipment and inside your workflow.

## Why local validation matters

Each site differs in ways a model can notice. The local population may have a different disease prevalence, age profile or mix of conditions. Equipment differs too: other monitors, lab analysers or scanners, calibrated and set up in other ways. Workflow decides when measurements are taken and by whom, and local data systems differ in EHR format, coding conventions and how complete the records are.

If you find a shortfall before go-live, you can adapt the tool or the workflow. If you find it after go-live, patients may already have been harmed and clinicians will trust the tool less.

:::{admonition} Running case: sepsis early warning
:class: note
In this book's fictional running case, the hospital's sepsis model was validated externally on data from a second hospital. Before go-live it then runs in silent mode on its own wards: the model scores live patients, but nobody sees the alerts. The team compares the scores with which patients actually developed sepsis, and checks performance on wards and night shifts where fewer observations are recorded.
:::

## Conducting local validation

1. Select a sample of cases that represents your patients, including the range of ages, backgrounds and disease severity you expect.
2. Establish the reference standard (the "ground truth"): the best available judgement of the true outcome, such as expert review, pathology or the clinical outcome.
3. Run the AI on the sample and record its outputs, scores and any system flags.
4. Measure performance overall and for relevant subgroups.
5. Compare the results with the minimum thresholds you set before you started.
6. If performance falls short, find the cause and decide whether to adapt the tool before go-live.

## Local adaptation

If local performance is not good enough, there are three main options. You can fine-tune the model, meaning you retrain part of it on local data; this risks overfitting (the model learning quirks of a small local dataset) and can count as a change that needs regulatory review. You can recalibrate it, so that its predicted risks match the rates actually observed in your patients (calibration means that, of the patients given a 20% risk, about 20% have the outcome). Or you can adjust the configuration, for example by choosing a different alert threshold that suits local prevalence and clinical priorities.

Record every adaptation and the reasons for it. A change to the model itself may need a new regulatory assessment (see [Regulatory compliance](regulatory-compliance.md)).
