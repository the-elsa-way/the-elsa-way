(evaluation-external-validation)=
# External and multi-site validation

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Universality recommendation 3** (Un3): evaluate with external datasets, several sites, or both; and **Universality recommendation 4** (Un4): show that the tool performs well enough locally, in each setting where it will be used {cite}`lekadir2025futureai`.
:::

A systematic review of 86 deep learning algorithms for radiological diagnosis found that 70 of them performed worse on external data than on the data from their own development site, some of them substantially worse {cite}`yu2022external`. External validation tells you whether your model's performance carries over to data it has never seen, from people and places it was not built on. It does not show that patients benefit; that needs a prospective evaluation in practice (see [clinical utility and safety](clinical-utility-safety.md)).

## Why external validation matters

Models pick up whatever patterns separate the outcomes in their training data, including patterns specific to one hospital: how often nurses record vital signs, which lab analysers are used, how diagnoses are coded, which patients are admitted. The model then does well on internal test data from the same hospital and worse elsewhere. Statisticians call one form of this covariate shift: the patients or measurements at the new site differ from those in the training data, so the model meets inputs it has seen less often.

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis case, the second hospital measures lactate with a different analyser and its nurses record vital signs less often on surgical wards. The team expects lower sensitivity there and plans the external validation to measure how much lower, ward by ward.
:::

## Types of external validation

| Type | What you test on | What it shows |
|---|---|---|
| Temporal | Data from the same site, collected after the training period | Whether performance holds over time |
| Geographic | Data from another institution in the same country | Whether performance transfers to another hospital |
| Cross-national | Data from another country | Whether performance holds in a different health system and population |
| Cross-device | Data from other equipment, such as other scanners or lab analysers | Whether performance depends on how the data were measured |

Combining several types gives stronger evidence than any one alone.

:::{include} ../toolbox/_generated/passages/evaluation-external-validation-types.md
:::

## Factors affecting external validity

Document and investigate what may cause performance to differ between sites. Population differences include how common the disease is, age and comorbidity. Measurement differences include equipment, protocols and how often observations are taken. Workflow differs too: who records the data, when, and under what clinical conditions. Finally, labels can differ. If one hospital defines sepsis by its own coding practice and another by a chart review, the model is being judged against two different reference standards.

## Multi-site validation design

When you design a study across several sites:

- include sites that cover the range of settings where the AI will be used;
- include smaller or less well-resourced hospitals if the tool is meant for wide use;
- analyse each site separately to find site-specific patterns;
- report both pooled and per-site performance.

## Local clinical validity

Before go-live at a new site, test the AI on a representative sample of that site's own patients, even if it has passed multi-site validation. This local check confirms that performance is acceptable for the local population, identifies local factors (equipment, workflow, case mix) that need adaptation, and gives you the baseline you will compare against when you monitor the tool after deployment. A silent-mode run, where the model scores live patients without showing the result to clinicians, is one practical way to do this.
