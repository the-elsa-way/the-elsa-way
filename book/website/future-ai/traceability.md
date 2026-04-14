(future-ai-traceability)=
# Traceability

The traceability principle states that healthcare AI tools should be developed, validated, deployed, and maintained with transparency and accountability mechanisms throughout their lifecycle. Traceability enables accountability when things go wrong — and they will.

## Traceability recommendations

### T1: Implement a risk management process throughout the AI lifecycle

Risk management is continuous, not a one-time gate. Establish a risk management file from the design phase and update it throughout development, evaluation, and deployment.

**→ See:** [Risk Management Planning](../design/risk-management.md)

### T2: Provide documentation (eg, technical, clinical)

Documentation includes: model cards, data sheets, technical documentation for regulatory purposes, clinical documentation (instructions for use, clinical evidence summary).

**→ See:** [Documentation](../development/documentation.md), [Reporting and Transparency](../evaluation/reporting-transparency.md)

### T3: Define mechanisms for quality control of AI inputs and outputs

Implement automated checks on AI inputs (data quality, completeness, range) and outputs (plausibility, consistency).

**→ See:** [Quality Control](../deployment/quality-control.md)

### T4: Implement a system for periodic auditing and updating

Establish a periodic audit schedule. Define update procedures and their regulatory implications.

**→ See:** [Monitoring and Auditing](../deployment/monitoring-auditing.md)

### T5: Implement a logging system for usage recording

Log all AI interactions with sufficient detail for audit, investigation, and performance monitoring.

**→ See:** [Logging and Traceability](../deployment/logging-traceability.md)

### T6: Establish mechanisms for AI governance

Assign roles and responsibilities for AI governance. Establish an AI governance committee with clinical, technical, and patient representation.

**→ See:** [Governance and Accountability](../deployment/governance-accountability.md)

## Why traceability matters in healthcare

When an AI-assisted clinical decision leads to patient harm, traceability determines whether the AI was responsible and who should be held accountable. Without logging, documentation, and governance:
- It may be impossible to establish whether the AI was used in the incident
- It may be impossible to determine whether the AI performed as validated
- Accountability defaults to the clinician, regardless of whether the AI malfunctioned
- Systemic problems may not be identified until many patients have been harmed

Traceability is not bureaucracy — it is the infrastructure of accountability.
