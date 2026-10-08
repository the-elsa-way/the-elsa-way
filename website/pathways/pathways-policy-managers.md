(pathways-policy-managers)=
# Pathway: Policy makers and managers

This pathway is for hospital managers and board members, procurement officers, health technology assessment teams and policy makers who are responsible for how AI is governed in an organisation. Your decisions come at a few fixed points: whether a tool may be bought or built, whether it may go live, who watches it once it is in use, and who answers for it when something goes wrong.

## Suggested reading order

1. [What is The ELSA Way?](../foreword/what-is-elsa-way.md)
2. [Design: legal and regulatory considerations](../design/legal-regulatory.md)
3. [Design: risk management planning](../design/risk-management.md)
4. [Evaluation: clinical utility and safety](../evaluation/clinical-utility-safety.md)
5. [Deployment: local validation](../deployment/local-validation.md)
6. [Deployment: quality control](../deployment/quality-control.md)
7. [Deployment: monitoring and auditing](../deployment/monitoring-auditing.md)
8. [Deployment: regulatory compliance](../deployment/regulatory-compliance.md)
9. [Deployment: governance and accountability](../deployment/governance-accountability.md)
10. [FUTURE-AI: traceability](../future-ai/traceability.md)
11. [FUTURE-AI: general recommendations](../future-ai/general-recommendations.md)

## Key regulatory frameworks

Four sets of rules come up again and again in this book.

The **Medical Device Regulation** (MDR) {cite}`mdr2017` and the **In Vitro Diagnostic Medical Devices Regulation** (IVDR) {cite}`ivdr2017` apply to much clinical AI software. Under MDR Rule 11, software that gives information used for diagnostic or treatment decisions is at least class IIa, which means an independent body appointed by a national authority (a Notified Body) must assess it before it can carry a CE mark. A hospital that builds a tool and uses it only within its own walls may rely on the in-house exemption (MDR Art. 5(5)) if it meets the conditions, such as having a suitable quality management system and showing that no CE-marked product meets the need. In the Netherlands the Health and Youth Care Inspectorate (IGJ) supervises medical devices.

The **EU AI Act** {cite}`euaiact2024` entered into force on 1 August 2024. It does not make all healthcare AI high-risk. An AI system is high-risk if it is, or is a safety component of, a medical device that needs a Notified Body assessment (Art. 6(1) and Annex I); for these systems the high-risk rules apply from 2 August 2027. A system can also be high-risk because its use is listed in Annex III (Art. 6(2)). Health-related examples are deciding who is eligible for public healthcare services, risk assessment and pricing in life and health insurance, and triage of emergency calls and emergency patients; these rules apply from 2 August 2026. High-risk systems need, among other things, risk management, data governance, technical documentation, logging, human oversight and a conformity assessment. Since 2 February 2025 every organisation that provides or uses AI must also make sure its staff have sufficient AI literacy (Art. 4). The European Commission has proposed postponing some high-risk deadlines, so check the current dates before you plan.

The **General Data Protection Regulation** (GDPR) {cite}`gdpr2016` governs the use of patient data. Health data is a special category: processing it needs both a lawful basis and an extra condition, such as the provision of care or scientific research with safeguards. Large-scale processing of health data with new technology such as AI also needs a data protection impact assessment (DPIA), a documented analysis of the risks to the people whose data is used. In the Netherlands, the UAVG (the Dutch GDPR implementation act) and the patient's rights in the WGBO (the medical treatment contracts act) add national rules.

**ISO 14971** {cite}`iso14971` is the international standard for risk management of medical devices. Manufacturers use it to show that a device's risks are acceptable, and Notified Bodies expect it.

For Dutch hospitals, the *Leidraad kwaliteit AI in de zorg* (2022) brings these requirements together in a national guideline for developing and introducing AI in care.

:::{admonition} Running case: sepsis early warning
:class: note
In this book's fictional case, a hospital builds a sepsis early-warning model for its own wards. As software that informs diagnostic and treatment decisions it is a medical device of class IIa or higher. While the hospital only uses it internally, it may rely on the in-house exemption. If it later shares the tool with other hospitals, the tool needs CE marking with a Notified Body, and it then also becomes a high-risk AI system under the AI Act.
:::

## Tools

These tools from the [Toolbox](#toolbox) suit your role.

:::{include} ../toolbox/_generated/audiences/policy-managers.md
:::
