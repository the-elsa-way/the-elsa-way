(development-privacy-security)=
# Privacy and Security

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 2**: Implement measures for data privacy and security.
:::

Patient data is among the most sensitive data there is. Healthcare AI development requires access to this data, but that access must be governed, controlled, and technically protected to prevent harm.

## Pseudonymisation and anonymisation

**Pseudonymisation** replaces direct identifiers (name, date of birth, NHS/BSN number) with codes, while retaining the ability to re-link to the original record (via a code table held separately). Most healthcare AI research operates on pseudonymised data.

**Anonymisation** removes or modifies data to the point where re-identification is not reasonably possible. Truly anonymous data falls outside GDPR scope, but true anonymisation is harder to achieve than it appears — medical images, for example, can contain identifying information in DICOM metadata, or in the images themselves (facial features on brain scans).

:::{tip}
Before sharing or publishing datasets, scrub DICOM headers of all identifying fields (patient name, DOB, study date, accession number, equipment serial numbers). For brain imaging, consider skull-stripping to remove facial features.
:::

## Access controls

Implement role-based access controls:

- Data scientists should access only the data necessary for their current task
- Access should be logged (who accessed what, when)
- Access should be reviewed periodically and revoked when no longer needed
- Download and export of raw patient data should require additional authorisation

## Technical security measures

- Encryption at rest and in transit for all patient data
- Secure storage in compliant environments (approved institutional or cloud infrastructure)
- Regular security audits and penetration testing
- Incident response plan for data breaches

## Privacy-preserving techniques

Where high-sensitivity data is involved, consider privacy-preserving machine learning:

- **Federated learning**: train models across multiple sites without centralising patient data
- **Differential privacy**: add calibrated noise to training to provide mathematical privacy guarantees
- **Secure multi-party computation**: collaborative computation without revealing individual inputs

These techniques involve trade-offs with model performance and should be evaluated in the context of your specific risk profile.

## Model output privacy

AI models themselves can leak information about their training data:

- **Model inversion attacks**: reconstructing training examples from model parameters
- **Membership inference attacks**: determining whether a specific patient's data was in the training set

For high-sensitivity applications, consider whether the model itself (especially if publicly released) poses a re-identification risk.
