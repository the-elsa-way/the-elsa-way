(design-bias-sources)=
# Identifying sources of bias

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Fairness recommendation 1** (F1): define potential sources of bias from an early stage. It also prepares **Fairness recommendation 2** (F2), collecting information on individual and data attributes, which you carry out during development.
:::

Bias enters an AI system through choices about data, labels and the question the model answers, long before anyone measures performance. Finding likely sources at the design stage costs less than correcting a trained model.

```{figure} ../figures/ai-fairness.jpg
:name: ai-fairness
:alt: Illustration representing AI fairness, showing scales and diverse data points to convey the concept of equitable outcomes across groups.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Types of bias in healthcare AI

### Historical bias
Medical records reflect how care was given in the past. If a condition was under-diagnosed in women, a model trained on those records learns to under-diagnose it too. Because the bias sits in the labels, the model can look accurate when you test it against the same kind of records.

### Representation bias
Some groups are under-represented in most datasets: ethnic minorities, older patients, patients with disabilities, patients from low-income areas and people with rare variants of a disease. A model sees fewer examples from these groups and often performs worse for them.

### Measurement bias
Equipment, protocols and staff produce different data. A model trained mostly on high-field MRI scans may do poorly on low-field scans because of the measurement, not the patients. In EHR data, the same applies to how often and how carefully observations are recorded.

### Labelling bias
Labels reflect the knowledge and habits of the people who make them. If all annotators come from one hospital or one specialty, their labels may not match practice elsewhere.

### Proxy bias
A model can pick up a stand-in for a sensitive attribute, such as postcode standing in for ethnicity or income, or an image artefact standing in for the type of scanner. It can then discriminate even though the attribute itself was never an input.

## Identifying bias sources in your project

Work through these questions at design time, with clinicians and patients in the room.

| Area | Questions |
|---|---|
| Data | Which groups are likely to be under-represented? Will differences in equipment, protocols or sites cause systematic differences in performance? Are there trends over time that could cause distribution shift (a change in the data the model sees after training)? |
| Labels | Who annotated the data, and do they reflect the range of clinical practice? How well do annotators agree? Is the reference standard itself shaped by past bias? |
| Problem framing | Do any inputs correlate with sensitive attributes? Could the model use proxies? Is the outcome you predict a fair measure for all groups? (Predicting healthcare use, for example, can reflect access to care rather than need.) |

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis project, the measurement question mattered most. Patients on wards that record vital signs less often, or patients admitted at night, have fewer observations in the EHR. A model may score them as lower risk simply because less is known about them. The team wrote this down as a bias source and planned to compare performance by ward and by time of day.
:::

## Attributes to monitor for bias

Decide which attributes you need to check performance across groups. Common ones are age, sex and gender, ethnicity, socioeconomic status and disability. Some of these are protected grounds under equal-treatment law. Others are not protected themselves but can act as proxies: geographic location, for instance, can stand in for ethnicity, income or access to care, and is worth recording for that reason.

Record these attributes where you can, so that bias can be measured in evaluation and monitored after deployment.

:::{warning}
Under the GDPR, data on health, ethnic origin and some other attributes is special category data (Art. 9) everywhere in the EU, and you need an Art. 9(2) condition as well as an Art. 6 lawful basis to process it. For high-risk AI systems, Art. 10(5) of the EU AI Act {cite}`euaiact2024` allows providers, as an exception, to process special category data to detect and correct bias, under strict safeguards. Agree the legal basis with your data protection officer before you add these fields.
:::
