(design-legal-regulatory)=
# Legal and regulatory considerations

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 5** (G5): identify and comply with applicable regulatory requirements. FUTURE-AI places G5 in deployment, but the regulatory route affects your design, your data and your documentation from the start.
:::

Three EU laws shape most healthcare AI projects: the Medical Device Regulation (or its counterpart for in vitro diagnostics), the AI Act and the GDPR. Dutch law adds rules on patient records and research. Which rules apply depends on the tool's intended purpose, so settle that first (see [intended use](intended-use.md)).

```{figure} ../figures/legal-challenges.jpg
:name: legal-challenges
:alt: Illustration depicting legal and regulatory challenges, showing a person navigating complex legal requirements and compliance obligations.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## The EU AI Act

The AI Act (Regulation (EU) 2024/1689) {cite}`euaiact2024` entered into force on 1 August 2024 and applies in stages. The bans on prohibited practices and the duty to make sure staff have sufficient AI literacy (Art. 4) apply from 2 February 2025. Rules for general-purpose AI models apply from 2 August 2025. Most other rules, including those for the high-risk uses listed in Annex III, apply from 2 August 2026. For high-risk AI in products such as medical devices (Art. 6(1), Annex I), the date is 2 August 2027. In 2025 the European Commission proposed postponing some high-risk deadlines in its Digital Omnibus package, so check the current status before you plan.

Healthcare AI is not automatically high-risk. There are two routes:

- **Route 1, products (Art. 6(1), Annex I).** The AI system is a medical device, or a safety component of one, and the device must be assessed by a Notified Body (an independent organisation designated to check conformity). Under the MDR this means class IIa and higher. A class I device that the manufacturer self-certifies is not high-risk through this route.
- **Route 2, listed uses (Art. 6(2), Annex III).** The health-related uses on the list are deciding eligibility for essential public services including healthcare (point 5(a)), risk assessment and pricing in life and health insurance (5(c)), and dispatching emergency calls and triaging patients in emergency care (5(d)).

Providers of high-risk systems (the organisations that develop them and put them on the market or into service) must set up risk management (Art. 9), data governance (Art. 10), technical documentation (Art. 11), automatic logging (Art. 12), instructions for deployers (Art. 13), human oversight (Art. 14), and appropriate accuracy, robustness and cybersecurity (Art. 15). They need a quality management system (Art. 17), a conformity assessment (Art. 43), post-market monitoring (Art. 72) and serious-incident reporting (Art. 73), and they keep logs for at least six months (Art. 19). Deployers, such as a hospital using a purchased tool, must use it according to the instructions, assign human oversight to competent staff, monitor its operation, keep the logs under their control for at least six months and inform workers (Art. 26).

Some duties apply only to Annex III systems. Registration in the EU database (Art. 49) is one; medical devices are registered in EUDAMED under the MDR instead. Another is the fundamental rights impact assessment (Art. 27), which certain deployers, such as public bodies and private organisations providing public services, must carry out before first use. People affected by decisions based on an Annex III system also have a right to an explanation (Art. 86).

The AI Act applies on top of sector law. A medical device AI system must meet both the MDR and the AI Act, and the Notified Body checks the AI Act requirements as part of the MDR conformity assessment (Art. 43(3)).

:::{admonition} Running case: sepsis early warning
:class: note
The fictional sepsis tool gives information used for diagnostic and therapeutic decisions, so it is a medical device of at least class IIa under MDR Rule 11. As long as the hospital makes and uses it only in-house and meets the conditions of the MDR in-house exemption (Art. 5(5)), no Notified Body is involved; legal opinions differ on whether the AI Act's high-risk rules then apply, so the team asks for advice. If the hospital later shares the tool with other hospitals, it needs CE marking through a Notified Body. That makes it a high-risk AI system through route 1, with obligations from 2 August 2027. It does not fall under route 2: a ward alert is not one of the uses listed in Annex III.
:::

:::{include} ../toolbox/_generated/passages/design-legal-regulatory-ai-act.md
:::

## Medical Device Regulation (MDR/IVDR)

Software intended to diagnose, prevent, monitor, predict or treat disease can be a medical device under the MDR (Regulation (EU) 2017/745) {cite}`mdr2017`, which applies since 26 May 2021. Software that analyses samples from the body, such as blood, can be an in vitro diagnostic device under the IVDR (Regulation (EU) 2017/746) {cite}`ivdr2017`, which applies since 26 May 2022. Both have transition periods.

Rule 11 in Annex VIII of the MDR classifies most medical software. Software that provides information used for diagnostic or therapeutic decisions is class IIa. It is class IIb if such a decision could cause a serious deterioration of health or a surgical intervention, and class III if it could cause death or irreversible deterioration. Software that monitors physiological processes is class IIa, or IIb when it monitors vital parameters whose variation could mean immediate danger. All other software is class I. The class decides whether a Notified Body is involved and how much clinical evidence you need, so get regulatory advice early.

A hospital can make and use a device itself without CE marking under the in-house exemption (MDR Art. 5(5)), but only if the device is not transferred to another legal entity, the hospital has an appropriate quality management system, it can justify that no equivalent CE-marked device meets the need, it keeps documentation and it publishes a declaration. In the Netherlands, the Health and Youth Care Inspectorate (IGJ) supervises medical devices, including in-house devices.

## GDPR and data protection

Every use of personal data needs a lawful basis under Art. 6 of the GDPR {cite}`gdpr2016`: consent, contract, legal obligation, vital interests, public task or legitimate interests. Health data is a special category (Art. 9(1)), so you also need one of the conditions in Art. 9(2). For AI projects the usual ones are explicit consent (a), the provision of care (h), public health (i) and scientific research with safeguards (j, together with Art. 89). Scientific research is an Art. 9 condition, not an Art. 6 basis, so you still need both.

In the Netherlands, two further laws apply. The UAVG (the Dutch GDPR Implementation Act) allows research with special category data without consent when asking for consent is impossible or takes disproportionate effort, with safeguards (Art. 24). The WGBO (Book 7 of the Civil Code) sets patient confidentiality (Art. 7:457) and allows research use of patient data without consent under strict conditions, provided the patient has not objected (Art. 7:458).

Other GDPR duties you will meet in AI work:

- Data minimisation and purpose limitation: collect only what you need, and do not reuse data for an unrelated purpose without a new basis.
- Data subject rights: patients can ask for access, correction and erasure.
- Data protection impact assessment (DPIA, Art. 35): a documented assessment of risks to patients' privacy and how you reduce them. It is required for large-scale processing of health data and for new technology such as AI. Involve your data protection officer.
- Automated decisions (Art. 22): people have the right not to be subject to a decision based solely on automated processing with legal or similarly significant effects. Keeping a clinician in the decision is one safeguard.
- Pseudonymisation and anonymisation: pseudonymised data (identifiers replaced by codes) is still personal data; only truly anonymous data falls outside the GDPR.

## Standards

Harmonised and widely used standards give you a structured way to meet the legal requirements.

| Standard | Topic |
|---|---|
| ISO 14971 {cite}`iso14971` | Risk management for medical devices |
| ISO 13485 | Quality management systems for medical devices |
| IEC 62304 | Software lifecycle processes for medical device software |
| IEC 62366-1 | Usability engineering for medical devices |
| IEC 82304-1 | Safety and security of health software products |
| ISO/IEC 42001 | AI management systems |
| ISO/IEC 23894 | Risk management for AI |

## Country-specific frameworks

In the Netherlands, you will also deal with:

- the IGJ, which supervises medical devices and the quality of care;
- the WGBO, which sets patient rights and requires medical records to be kept for at least 20 years (Art. 7:454);
- the UAVG, alongside the GDPR;
- NEN 7510 (information security in healthcare), NEN 7512 (trust for data exchange) and NEN 7513 (logging who accessed which electronic patient record, and when);
- the Leidraad kwaliteit AI in de zorg (2022), the Dutch guideline for developing and implementing AI in healthcare;
- the European Health Data Space (EHDS, Regulation (EU) 2025/327), in force since 26 March 2025, whose rules on secondary use of health data apply from 2029 onward.

Outside the EU, the United Kingdom has MHRA guidance on software and AI as a medical device and the NHS AI and Digital Regulations Service. In the United States, the FDA has guidance on AI-enabled device software, including plans for predetermined changes. Internationally, the WHO published *Ethics and governance of artificial intelligence for health* (2021).

:::{include} ../toolbox/_generated/passages/design-legal-regulatory-country.md
:::
