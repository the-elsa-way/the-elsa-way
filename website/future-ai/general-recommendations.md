(future-ai-general)=
# General recommendations

Seven FUTURE-AI recommendations apply across all six principles {cite}`lekadir2025futureai`.

## G1: Engage interdisciplinary stakeholders throughout the lifecycle

*Research `++`, deployable `++`.* Involve healthcare professionals, patients, ethicists, data managers and legal experts from design to deployment, through working groups, advisory boards, interviews, co-creation meetings or surveys.

**→ See:** [Stakeholder engagement](../design/stakeholder-engagement.md)

## G2: Protect data privacy and security

*Research `++`, deployable `++`.* Use privacy-enhancing techniques, carry out a *data protection impact assessment* (DPIA, the risk assessment the GDPR {cite}`gdpr2016` requires before high-risk processing such as AI on health data), control access after deployment and protect the tool against attacks. In Dutch healthcare, NEN 7510 is the standard for information security.

**→ See:** [Privacy and security](../development/privacy-security.md)

## G3: Address the risks you identified

*Research `++`, deployable `++`.* Turn the risks found during design into measures in your modelling plan, such as data augmentation for robustness, transfer learning for new settings, or resampling to correct bias between groups.

**→ See:** [Risk management planning](../design/risk-management.md), [Addressing AI risks](../development/addressing-ai-risks.md)

## G4: Define an adequate evaluation plan

*Research `++`, deployable `++`.* Before you evaluate, fix the test data (kept strictly apart from the training data), the metrics, and a reference to compare against, such as current practice.

**→ See:** [Evaluation planning](../evaluation/evaluation-planning.md)

## G5: Identify and comply with regulatory requirements

*Research `+`, deployable `++`.* Identify early which rules apply, because they shape design choices. In the EU these include the GDPR, the MDR {cite}`mdr2017` or IVDR {cite}`ivdr2017` and the EU AI Act {cite}`euaiact2024`. The paper says the AI Act classes all healthcare AI as high-risk; the Act itself is narrower (see the [FUTURE-AI overview](overview.md)).

**→ See:** [Legal and regulatory considerations](../design/legal-regulatory.md), [Regulatory compliance](../deployment/regulatory-compliance.md)

## G6: Investigate and address application-specific ethical issues

*Research `+`, deployable `++`.* Beyond privacy, transparency, equity and autonomy, ask developers, clinicians and ethicists which ethical issues your particular application raises.

**→ See:** [Ethical review and approval](../design/ethical-review.md)

## G7: Investigate and address social and societal issues

*Research `+`, deployable `+`.* Consider effects on working conditions, professional skills (including their loss), relations between patients and professionals, and the tool's carbon footprint.

**→ See:** [Social and societal impact](../design/social-impact.md)

:::{admonition} Running case: sepsis early warning
:class: note
This example is fictional. For a hospital's in-house sepsis model, G5 starts with one question: is it a medical device? It gives information used for diagnostic and therapeutic decisions, so it is, at class IIa or higher under MDR Rule 11. While the hospital makes and uses it only in-house, it may rely on the MDR in-house exemption (Art. 5(5)) if it meets the conditions. If it shares the model with other hospitals, it needs CE marking after assessment by a Notified Body (an independent organisation designated to check conformity), which also makes it a high-risk AI system under the AI Act from 2 August 2027. The Commission has proposed postponing some of these deadlines, so check the current status.
:::
