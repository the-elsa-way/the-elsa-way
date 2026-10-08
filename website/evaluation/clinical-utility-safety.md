(evaluation-clinical-utility-safety)=
# Clinical utility and safety

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 5** (Us5): evaluate clinical utility and safety, for example effectiveness, harm and the balance of costs and benefits {cite}`lekadir2025futureai`.
:::

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis case, the model reached a good AUC (a measure of how well it ranks patients who develop sepsis above those who do not) on held-out data from both hospitals. That result says nothing yet about whether patients get antibiotics sooner, whether fewer of them end up in intensive care, or whether nurses start ignoring the alerts after a few weeks. To find out, the team first runs the model in silent mode on live patients and then plans a study in which wards use the alerts.
:::

Clinical utility means that patients are better off when clinicians use the AI in real practice: better diagnoses, better treatment decisions, fewer harms or more efficient care. It is the most important question in evaluation and the hardest one to answer.

## Why clinical utility differs from accuracy

A model can score well on a held-out test set and still fail to help, because:

- it changes no decisions that matter (clinicians already get the easy cases right);
- clinicians ignore or override it because it is hard to use;
- clinicians follow it when it is wrong (automation bias), introducing new errors;
- it improves outcomes for some patients and worsens them for others;
- it performs worse in the clinic than on the test set.

Retrospective and external validation show how well the model predicts. Only a prospective evaluation in clinical practice can show that patients benefit.

## The clinical evaluation plan

:::{admonition} FUTURE-AI
:class: tip
This supports **General recommendation 4** (G4): plan the evaluation properly.
:::

Your clinical evaluation plan should state the primary clinical outcome (for sepsis, for example, time to antibiotics or unplanned ICU admission), the study design, the comparator (usually care without the AI), the patients included, the setting and the duration. For an early live evaluation, follow the DECIDE-AI guideline {cite}`decideai2022`. For a randomised trial, use SPIRIT-AI for the protocol {cite}`spiritai2020` and CONSORT-AI for the report {cite}`consortai2020`.

A study in which the AI's output affects patient care may be research under the Dutch Medical Research Involving Human Subjects Act (WMO), which requires review by an accredited medical research ethics committee (METC). Ask your METC early whether your design falls under the WMO.

:::{include} ../toolbox/_generated/passages/evaluation-clinical-utility-safety-plan.md
:::

## Levels of evidence for clinical AI

The table orders study designs from weakest to strongest evidence of benefit.

| Step | Design | What it shows |
|---|---|---|
| 1 | Retrospective performance on historical data from the development site | How well the model predicts on data like its training data |
| 2 | External validation on data from other sites or periods | Whether that performance carries over to new data |
| 3 | Prospective silent mode: the model scores live patients, clinicians do not see the output | Performance on current patients and workflows, without risk to them |
| 4 | Impact study: clinical decisions with and without the AI | Whether the AI changes what clinicians do |
| 5 | Randomised or stepped-wedge trial (wards or hospitals switch to the AI in random order) | Whether the AI causes better patient outcomes |
| 6 | Systematic review and meta-analysis of several such studies | Whether the benefit holds across settings |

Steps 1 and 2 are needed but do not show benefit to patients. Claims of clinical utility need evidence from step 4 or higher. Where a randomised trial is not feasible, say why and describe how your design limits bias.

## Assessing safety

Ask how this AI could harm a patient, and look for evidence of each route:

- adverse events, where an incorrect output led to harm;
- automation bias, where clinicians followed an incorrect output;
- near misses, where harm was narrowly avoided;
- failure modes, meaning systematic errors in particular patient groups, conditions or data situations.

Record and report every safety issue you find. If the tool is a medical device, serious incidents after it is placed on the market must be reported through MDR vigilance {cite}`mdr2017`.

## Cost-effectiveness

Hospitals, insurers and health technology assessment bodies want to know whether the benefit justifies the cost. Relevant inputs include clinician time saved or added (for example, time spent responding to false alerts), unnecessary tests or treatments avoided, the value of improved outcomes from health economic modelling, and the costs of infrastructure, licences, maintenance and monitoring. Collect these data during your prospective studies, because you cannot reconstruct most of them afterwards.
