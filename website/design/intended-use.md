(design-intended-use)=
# Intended Use and User Requirements

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 1**: Define intended use and user requirements from an early stage.
:::

Defining intended use is not a bureaucratic exercise for regulatory documentation. It is a design discipline that prevents the tool from being used in contexts where it will not work, and protects patients from harm caused by misapplication.

## Intended use statement

An intended use statement answers:

1. **What does the AI tool do?** (its function)
2. **Who is the intended user?** (role, training level, technical literacy)
3. **Who is the intended patient population?** (clinical indication, age group, exclusion criteria)
4. **In what clinical setting?** (primary care, hospital, specialist clinic; high-resource, mid-range, low-resource)
5. **At what point in the care pathway?** (screening, diagnosis, treatment planning, monitoring)
6. **What is the intended output?** (a quantitative score, a binary flag, a segmentation, a recommendation)
7. **What clinical decision does it support or influence?**

## User requirements

User requirements go beyond the clinical function to describe what users actually need to interact with the system effectively:

- **Roles**: Who are the users? Radiologists? Nurses? GPs? Patients themselves?
- **Technical literacy**: What level of AI literacy can you assume? What training will be required?
- **Workflow integration**: At what point in the user's workflow does the AI intervene? How much additional time does it add?
- **Interface requirements**: What information must be presented? In what format? On what device?
- **Language and accessibility**: What languages do users work in? Are there accessibility requirements?

## Defining clinical settings and cross-setting variations

:::{admonition} FUTURE-AI
:class: tip
This supports **Universality recommendation 1**: Define intended clinical settings and cross-setting variations.
:::

Healthcare AI is often developed in one setting and deployed in another. A model trained on data from a large academic hospital may fail when deployed in a rural primary care clinic. Clinical settings vary in:

- **Equipment and infrastructure**: MRI scanners differ in field strength, manufacturer, and protocol; EHR systems differ in coding schemes
- **Patient populations**: Demographics, disease prevalence, comorbidity profiles
- **Clinical workflows**: The same task may be performed differently across institutions
- **Resource levels**: High-end hospitals have specialist reviewers; low-resource settings may not

Document the settings the AI is intended for, and explicitly state the settings where it has not been validated. This information must be included in clinical documentation.

## Adjusting for user subgroups

Different users within the same institution may have different needs. A radiologist and a referring clinician looking at the same AI output have different informational needs, different workflows, and different levels of AI familiarity. Design for your real users, not an idealised average user.

:::{tip}
Use community-defined standards where available:
- Clinical terminology: SNOMED-CT, LOINC, ICD
- Imaging: DICOM, SNOMED-CT for imaging
- Data: HL7 FHIR
Using standard terminologies improves interoperability and supports the universality of the AI tool (FUTURE-AI Universality 2).
:::
