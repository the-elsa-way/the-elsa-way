(design-risk-management)=
# Risk Management Planning

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 1**: Implement a risk management process throughout the AI lifecycle.
:::

Risk management in healthcare AI is not a one-time gate at the end of development — it is a continuous process that begins at design and persists through deployment. ISO 14971 provides the standard framework.

## What is a risk in healthcare AI?

A risk is a combination of the probability of harm occurring and the severity of that harm if it does. In healthcare AI, harms may be:

- **Clinical**: incorrect diagnosis leading to missed treatment; false alarms causing unnecessary procedures
- **Fairness-related**: worse performance for a patient subgroup leading to inequitable care
- **Privacy**: re-identification of patients from AI outputs or model inversion attacks
- **Operational**: AI failure or unavailability disrupting clinical workflows
- **Systemic**: over-reliance on AI leading to de-skilling of clinicians; automation bias

## The risk management process

### 1. Risk identification

Identify all possible clinical, technical, ethical, and societal risks. Do this with the full interdisciplinary team — developers will identify technical risks; clinicians will identify workflow risks; ethicists and patients will identify risks developers may not see.

Risks to consider:
- Bias against under-represented subgroups
- Low generalisation to new sites or equipment
- Data drift over time (model trained on 2020 data may degrade on 2026 data)
- Lack of acceptance by end users
- Sensitivity to noisy or adversarial inputs
- Incorrect data flows (wrong patient matched to result)
- Misuse outside intended scope

### 2. Risk assessment

For each identified risk, assess:
- **Likelihood**: very unlikely / possible / likely / almost certain
- **Consequence**: negligible / minor / moderate / severe / catastrophic
- **Risk level**: the combination of likelihood and consequence

### 3. Risk mitigation

For each risk above an acceptable threshold, define mitigation measures:

- **During development**: data augmentation, bias correction techniques, robustness testing
- **At deployment**: warnings in the UI, user training, mandatory human oversight for certain outputs
- **Post-deployment**: monitoring alerts, audit triggers, incident reporting mechanisms

### 4. Risk monitoring

Establish mechanisms to detect new risks that emerge after deployment:
- Performance monitoring dashboards
- Incident reporting pathways for clinicians and patients
- Periodic re-assessment of the risk register

## The risk management file

Document everything in a risk management file (required under ISO 14971 and EU AI Act):
- Risk identification log
- Risk assessment matrix
- Mitigation measures and their rationale
- Residual risk assessment
- Evidence that mitigation measures are effective
