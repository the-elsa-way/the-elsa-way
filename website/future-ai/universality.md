(future-ai-universality)=
# Universality

The universality principle holds that healthcare AI tools should generalise to new clinical settings, equipment, and user populations beyond the setting where they were developed.

## Universality recommendations

### Un1: Define intended clinical settings and cross-setting variations

At the design stage, explicitly define:
- The clinical settings the AI is intended for
- The range of equipment and protocols expected at those settings
- Resource requirements (connectivity, computing, staff skills)

Document cross-setting variations that may affect performance.

**→ See:** [Intended Use and User Requirements](../design/intended-use.md)

### Un2: Use community-defined standards

Adopting interoperability standards reduces barriers to cross-setting deployment:
- Clinical terminologies: SNOMED-CT, LOINC, ICD
- Imaging: DICOM, BI-RADS
- Data: HL7 FHIR, HL7 Level Seven (HL7.7)
- Evaluation: validated metrics criteria (see Maier-Hein et al., Topf et al.)

### Un3: Use external datasets and/or multiple sites

Validate performance on data from at least one external site, different from the training site. Multi-site validation is the minimum standard for claiming generalisability.

**→ See:** [External and Multi-Site Validation](../evaluation/external-validation.md)

### Un4: Evaluate and demonstrate local clinical validity

Before deploying at a new site, perform local validation on a representative sample of local patients with locally obtained ground truth.

**→ See:** [Local Validation](../deployment/local-validation.md)

## The generalisability problem

Healthcare AI has a well-documented generalisability problem: models frequently perform substantially worse in external validation than in internal validation. The causes are understood (overfit to training site characteristics, non-representative training data, distribution shift), but addressing them requires deliberate effort at every phase of development.

Universality is not achieved at a single point. It requires designing for generalisability (representative data, standard formats), validating generalisability (external, multi-site validation), and then monitoring it in deployment (local validation, drift detection).
