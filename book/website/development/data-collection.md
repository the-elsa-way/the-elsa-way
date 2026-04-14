(development-data-collection)=
# Data Collection and Management

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Robustness recommendation 2**: Train with representative real-world data; and **Traceability recommendation 2**: Provide documentation (technical, clinical).
:::

Good data does not happen by accident. Collecting training data that is representative, well-annotated, and properly managed requires deliberate planning — much of which should happen in the design phase. This chapter covers the execution of that plan.

## Training data requirements

Training data for healthcare AI should:

- **Reflect the target population**: demographics, disease severity, comorbidities, presentation variants
- **Reflect the target environment**: equipment, acquisition protocols, clinical workflows at the deployment setting
- **Include sufficient rare cases**: models trained on class-imbalanced data will perform poorly on minority classes
- **Have accurate labels**: the quality of annotations is as important as the quantity of data

## Data collection protocols

For prospective data collection, establish and document:

- **Inclusion and exclusion criteria**: who is eligible to contribute data
- **Acquisition protocol**: standardised acquisition settings where possible, or documented variation
- **Consent process**: what patients are consented for, and how consent is recorded
- **Annotation protocol**: written guidelines for how each case is labelled, including instructions for ambiguous cases

## Data management

Track data throughout its lifecycle:

- **Data lineage**: record where each data point came from (site, acquisition date, equipment, operator)
- **Versioning**: use version control for datasets — know exactly which data was used to train each model
- **Data catalogue**: maintain a registry of all datasets used, with their properties
- **Access log**: record who accessed which data and when (required for GDPR compliance)

## Data splits

Construct train, validation, and test splits carefully:

:::{warning}
Data leakage — where information from the test set influences model training — is one of the most common sources of inflated performance in AI research. Common sources include:
- Multiple scans from the same patient split across train and test
- Test data from the same site as training data (use held-out site for external validation)
- Preprocessing statistics (mean, standard deviation) computed on the full dataset before splitting
:::

- **Patient-level splits**: never split at the scan or study level if multiple scans per patient exist
- **Site-level splits**: include a held-out site for external validation where possible
- **Stratified splits**: ensure the distribution of key covariates (disease prevalence, demographics) is comparable across splits

## Data augmentation

Data augmentation — applying transformations to training data to increase effective sample size and improve robustness — is standard practice in medical imaging AI. Common augmentations include:

- Geometric: rotation, flipping, cropping, elastic deformation
- Intensity: brightness, contrast, noise addition
- Domain-specific: simulating acquisition protocol variations, staining variations

:::{tip}
Augmentation should simulate realistic variations the model will encounter in deployment, not arbitrary transformations. Consult with clinicians and imaging scientists about what variations are clinically plausible.
:::
