(design-risk-management)=
# Risk management planning

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 1** (T1): implement a risk management process throughout the AI lifecycle.
:::

ISO 14971 {cite}`iso14971` is the standard for risk management of medical devices, and the MDR and, for high-risk systems, the EU AI Act (Art. 9) {cite}`euaiact2024` both expect a risk management system that runs from design until the tool is withdrawn. You open the risk management file now and keep adding to it in every later phase.

```{figure} ../figures/error-management.jpg
:name: error-management
:alt: Illustration showing error and risk management, with people identifying, assessing, and mitigating risks in a structured process.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## What is a risk in healthcare AI?

A risk combines how likely a harm is and how severe it would be. Harms from healthcare AI come in several kinds. Clinical harm follows from a wrong output: a missed diagnosis delays treatment, a false alarm leads to unnecessary tests. Fairness harm arises when the tool works worse for one group of patients. Privacy harm includes re-identifying patients from model outputs. Operational harm happens when the tool fails or is unavailable and disrupts care. And some harms build up slowly across the system, such as clinicians losing skills, or trusting the tool too much (automation bias).

## The risk management process

### 1. Risk identification

List the clinical, technical, ethical and societal risks with the full interdisciplinary team. Developers see technical risks, clinicians see workflow risks, and ethicists and patients see risks that neither group would raise. Common entries are:

- worse performance for under-represented groups
- poor performance at new sites or with new equipment
- drift: the data changes over time, so a model trained on older data performs worse on new patients
- users not accepting the tool
- sensitivity to noisy or manipulated inputs
- data errors, such as a result linked to the wrong patient
- use outside the intended scope

:::{admonition} Running case: sepsis early warning
:class: note
The fictional sepsis team's first register included alert fatigue (nurses ignoring alerts because there are too many), lower performance for patients with fewer recorded observations, for example at night or on some wards, drift after the planned change in lactate assay or a change in EHR documentation, and nurses either over-relying on the score or ignoring it. The ward nurses added the first and last items; the developers had not listed them.
:::

:::{include} ../toolbox/_generated/passages/design-risk-management-identification.md
:::

### 2. Risk assessment

Rate each risk for likelihood (for example very unlikely, possible, likely, almost certain) and for consequence (negligible, minor, moderate, severe, catastrophic). The combination gives the risk level and the order in which you address risks. Agree the scales and what counts as acceptable before you start rating.

### 3. Risk mitigation

For each risk above the acceptable level, decide how to reduce it and at which stage. During development, that can mean more representative data, bias correction or robustness testing. At deployment, it can mean warnings in the interface, user training, or required human review of certain outputs. After deployment, it means monitoring with alert thresholds, audit triggers and a route for reporting incidents.

### 4. Risk monitoring

New risks will appear once the tool is in use. Plan how you will find them: a performance dashboard, a simple way for clinicians and patients to report problems, and a date for reviewing the register.

## The risk management file

ISO 14971, the MDR and, for high-risk systems, the EU AI Act all require you to document the process. The risk management file holds the risk identification log, the risk assessment matrix, the mitigation measures with their rationale, the assessment of residual risk (what remains after mitigation) and the evidence that the mitigations work.
