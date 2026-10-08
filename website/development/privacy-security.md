(development-privacy-security)=
# Privacy and security

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 2**: protect data privacy and security {cite}`lekadir2025futureai`.
:::

Training a clinical model means giving a development team access to the records of thousands of patients who did not choose to take part. That access needs a legal basis, technical protection and an audit trail. Under the GDPR, health data is special category data, and processing it on a large scale or with new technology such as AI requires a data protection impact assessment (DPIA: a documented analysis of the risks to patients' privacy and how you reduce them, Art. 35) before you start {cite}`gdpr2016`. Involve your hospital's data protection officer (in Dutch, the FG) early.

```{figure} ../figures/sensitive-data.jpg
:name: sensitive-data
:alt: Illustration depicting sensitive data protection, showing data locked behind security measures to prevent unauthorised access and protect patient privacy.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Pseudonymisation and anonymisation

**Pseudonymisation** replaces direct identifiers such as name, date of birth, patient number and BSN (the Dutch citizen service number) with a code. The key that links codes back to patients is stored separately, often by a trusted third party: an independent organisation that holds the key so that neither the data supplier nor the research team can re-identify patients on their own. Pseudonymised data is still personal data under the GDPR. Most healthcare AI development works with it.

**Anonymisation** goes further: the data is changed until no one can reasonably re-identify a person. Truly anonymous data falls outside the GDPR {cite}`gdpr2016`, but it is hard to achieve. Combinations of dates, rare diagnoses and postcodes can single out a patient, and medical images can carry identifying details in their DICOM metadata (the header fields stored with each image) or in the image itself, such as a face visible on a head scan.

:::{tip}
Before sharing or publishing a dataset, remove identifying fields from DICOM headers (patient name, date of birth, study date, accession number, device serial numbers) and shift or coarsen dates in EHR extracts. For head imaging, consider removing facial features from the image.
:::

:::{include} ../toolbox/_generated/passages/development-privacy-security-anonymisation.md
:::

## Access controls

Give each person access only to the data their current task needs, and review access regularly so that it ends when the task ends. Downloading or exporting raw patient data should need separate approval. Log who accessed which records and when: NEN 7513 describes this logging for electronic patient records in Dutch healthcare.

## Technical security measures

Dutch hospitals work to NEN 7510, the standard for information security in healthcare. For an AI project this means at least:

- Encryption of patient data at rest and in transit
- Storage in an approved environment, either the hospital's own or an approved cloud environment
- Regular security audits and penetration tests
- An incident response plan for data breaches, including the 72-hour notification to the Dutch Data Protection Authority under GDPR Art. 33

## Privacy-preserving techniques

When data cannot leave a hospital, or is especially sensitive, privacy-preserving machine learning can help. In federated learning the model travels to each hospital and trains there, and only model updates are shared. Differential privacy adds carefully sized random noise during training so that the model reveals little about any single patient. Secure multi-party computation lets several parties compute a joint result without seeing each other's data. Each technique costs some performance or adds complexity, so weigh it against the risks identified in your DPIA.

:::{include} ../toolbox/_generated/passages/development-privacy-security-techniques.md
:::

## Model output privacy

A trained model can leak information about its training data. In a model inversion attack, someone queries the model repeatedly and uses its outputs to reconstruct typical training examples or sensitive attributes. In a membership inference attack, someone uses the model's outputs to work out whether a specific patient's record was in the training set. Both risks grow if you publish the model or expose it through an open interface, so include them in your DPIA before sharing.
