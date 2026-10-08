(development-data-collection)=
# Data collection and management

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Robustness recommendation 2**: train with data that reflects real-world variation; and **Traceability recommendation 2**: document the AI tool, a task that starts here and is completed during evaluation {cite}`lekadir2025futureai`.
:::

You planned your data in the design phase ([data strategy](../design/data-strategy.md)). This chapter covers carrying out that plan: getting the data, labelling it, keeping track of it and splitting it for training and testing.

```{figure} ../figures/data-curation.jpg
:name: data-curation
:alt: Illustration of data curation showing a person carefully selecting, organising, and managing data from multiple sources.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Training data requirements

Training data should match the patients the system will see (age, sex, disease severity, other conditions, how the disease presents) and the setting: the equipment, measurement protocols and documentation habits of the wards where it will run. Rare outcomes need enough examples for the model to learn them. And the labels must be right, because a model learns inconsistent labels as faithfully as correct ones.

:::{admonition} Running case: sepsis early warning
:class: note
In this fictional example, a hospital extracts several years of electronic health record (EHR) data on adult ward admissions to build a sepsis risk model. Nursing observations turn out to be sparser at night and on some wards, and the laboratory switched to a new lactate assay during the period, so values before and after the switch are not directly comparable. The team records both in the data documentation and asks clinicians for a sepsis label definition that two reviewers can apply to the same record and agree on.
:::

## Data collection protocols

For retrospective EHR data, the protocol states which patients, period and variables you extract and how you derive labels. In the Netherlands, research on existing records is usually not subject to the WMO (the Medical Research Involving Human Subjects Act) and goes through the hospital's local review. Health data still needs a lawful basis under GDPR Art. 6 and a condition under Art. 9(2), such as scientific research with safeguards (Art. 9(2)(j), together with Art. 24 of the UAVG, the Dutch GDPR Implementation Act, and Art. 7:458 of the Civil Code, which allows research use without consent under conditions if the patient has not objected) {cite}`gdpr2016`.

For prospective collection, also write down and document:

- Inclusion and exclusion criteria
- How data is acquired: standard settings where possible, or recorded variation
- The consent process: what patients agree to and how consent is recorded
- An annotation protocol with written instructions for labelling each case, including unclear cases

## Data management

Record where each data point came from (site, date, system or equipment, who entered it). Version your datasets so you know which data trained each model, and keep a catalogue of all datasets. The FAIR principles (data that is findable, accessible, interoperable and reusable) give a structure for this {cite}`wilkinson2016fair`, and in the Netherlands, mapping variables to Nictiz's zibs (standard Dutch health and care information models) makes data easier to combine across hospitals.

Log who accessed which data and when. GDPR Art. 32 requires appropriate security measures without listing specific ones; in Dutch healthcare, NEN 7513 sets out how access to electronic patient records is logged, and NEN 7510 covers information security more broadly.

## Data splits

Split your data into a training set (to fit the model), a validation set (to compare models and tune settings) and a test set (held back and used once for the final estimate).

:::{warning}
Data leakage means information from the test set influences training, so measured performance looks better than it will be in practice. Common causes:
- Records from the same patient or admission appear in both training and test sets
- Summary statistics (such as mean and standard deviation used for scaling) are computed on the whole dataset before splitting
- Inputs recorded after the moment of prediction, or that reflect a clinician's suspicion, are used as predictors
:::

Split at patient level, never at the level of single records or scans. Where possible, keep a separate site or time period for external validation. Stratify the split so that outcome prevalence and key patient characteristics are comparable across sets.

## Data augmentation

Data augmentation creates modified copies of training examples so the model sees more of the variation it will meet in practice. In medical imaging this includes rotation, cropping, changes in brightness and contrast, added noise and simulated differences between scanners or stains. For EHR data it can mean simulating missing measurements or the irregular timing of observations.

:::{tip}
Simulate variation the model will meet in deployment, and ask clinicians, laboratory staff or imaging scientists which variations are plausible.
:::
