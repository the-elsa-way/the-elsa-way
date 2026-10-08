(future-ai-traceability)=
# Traceability

When a patient comes to harm after an AI-supported decision, someone will ask what the tool showed, which version was running and who acted on it. The traceability principle asks you to document and monitor the tool from development to daily use, so that those questions can be answered {cite}`lekadir2025futureai`.

## Traceability recommendations

### T1: Run a risk management process throughout the lifecycle

*Research `+`, deployable `++`.* Start a risk management file in design and keep it current: estimate each risk's likelihood and severity, decide on mitigations and check that they work. Risks named in the paper include misuse after too little training, use outside the target population and incorrect input data. For medical devices, ISO 14971 {cite}`iso14971` sets out the process.

**→ See:** [Risk management planning](../design/risk-management.md)

### T2: Provide documentation

*Research `++`, deployable `++`.* Write for each audience: an information leaflet for patients and clinicians, technical documentation for developers and regulators, a publication following a reporting guideline such as TRIPOD+AI {cite}`tripodai2024`, and the risk management file. Model cards {cite}`mitchell2019modelcards` and datasheets {cite}`gebru2021datasheets` are common templates.

**→ See:** [Documentation](../development/documentation.md), [Reporting and transparency](../evaluation/reporting-transparency.md)

### T3: Check the quality of inputs and outputs

*Research `+`, deployable `++`.* Check automatically for missing, out-of-range or wrongly formatted inputs and for implausible outputs, and show users how certain the tool is about each result.

**→ See:** [Quality control](../deployment/quality-control.md)

### T4: Audit and update on a schedule

*Research `+`, deployable `++`.* Decide which data you will re-evaluate on and how often. Audits look for *drift* (changes in the data or in what the outcome means), new biases and falling performance. Under EU law, an update may need a new conformity assessment unless you described it in advance in the technical documentation.

**→ See:** [Monitoring and auditing](../deployment/monitoring-auditing.md)

### T5: Log usage

*Research `+`, deployable `++`.* Record, with privacy safeguards, which data the tool used, what it predicted, what the clinician decided and any problems. The EU AI Act {cite}`euaiact2024` requires automatic logging for high-risk systems, with logs kept for at least six months.

**→ See:** [Logging and traceability](../deployment/logging-traceability.md)

### T6: Set up governance

*Research `+`, deployable `++`.* Assign roles for risk management, audits, maintenance and supervision, and agree how responsibility for errors is shared between clinicians, hospital and manufacturer, including support for patients harmed by an AI error.

**→ See:** [Governance and accountability](../deployment/governance-accountability.md)

:::{admonition} Running case: sepsis early warning
:class: note
This example is fictional. Suppose a ward patient develops septic shock without an alert from the hospital's sepsis model. The logs (T5) show which model version ran and that no score was produced for three hours because a lab feed failed, which the input checks (T3) should have flagged. The hospital can fix the feed, update its risk file (T1) and report the incident through the right channel.
:::
