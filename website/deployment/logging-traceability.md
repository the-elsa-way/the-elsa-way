(deployment-logging-traceability)=
# Logging and Traceability

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 5**: Implement a logging system for usage recording.
:::

Logging creates the audit trail that makes an AI system accountable. Without adequate logging, it becomes impossible to investigate incidents, demonstrate compliance with regulatory requirements, or trace how the AI contributed to a clinical decision.

## What to log

For each AI interaction, log at minimum:

| Log field | Purpose |
|---|---|
| Timestamp | When the AI was invoked |
| Patient ID (anonymised for non-operational logs) | Linking to clinical outcome data |
| User ID | Identifying who used the AI |
| AI inputs | What data was provided to the AI |
| AI outputs | What the AI predicted or recommended |
| Confidence score | The AI's confidence in its output |
| Clinical decision made | What the clinician decided (where capturable) |
| Override flag | Whether the clinician overrode the AI recommendation |
| Version identifier | Which model version was used |

## Logging principles

- **Completeness**: every AI interaction should be logged; logging gaps are a governance failure
- **Immutability**: logs must not be editable after the fact; use append-only storage
- **Access control**: logs contain sensitive patient data; access should be restricted and itself logged
- **Retention**: retain logs for the period required by regulation (typically 10 years for medical device records under MDR)
- **Searchability**: logs must be searchable for audit and investigation purposes

## Using logs for accountability

Logs enable:

- **Incident investigation**: if a patient harm occurs and the AI was involved, logs allow reconstruction of what the AI said and what the clinician did
- **Performance monitoring**: aggregate log analysis reveals trends in AI output and clinician response
- **Audit compliance**: logs are the primary evidence of regulatory compliance
- **Model improvement**: interaction logs (especially overrides) provide valuable signal for model retraining

## Privacy considerations

AI interaction logs are sensitive personal data. Apply:

- Pseudonymisation where possible
- Strict access control (only authorised personnel for investigation purposes)
- Retention policies aligned with data protection requirements
- Clear policies on who can access logs and for what purpose
