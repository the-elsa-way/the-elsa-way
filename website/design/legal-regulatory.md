(design-legal-regulatory)=
# Legal and Regulatory Considerations

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 5**: Identify and comply with applicable AI regulatory requirements.
:::

Healthcare AI operates in a dense regulatory environment. Understanding which frameworks apply to your system, and when, is a design-phase responsibility. It is not something to address at the point of deployment.

```{figure} ../figures/legal-challenges.jpg
:name: legal-challenges
:alt: Illustration depicting legal and regulatory challenges, showing a person navigating complex legal requirements and compliance obligations.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## The EU AI Act

The EU AI Act (2024) {cite}`euaiact2024` classifies AI systems according to risk level. Healthcare AI is presumptively classified as **high-risk**:

- AI systems used as safety components in medical devices or as medical devices themselves
- AI intended to assist clinical decisions in areas including diagnosis, prognosis, treatment recommendation

High-risk AI systems must:
- Undergo a conformity assessment before market placement
- Maintain technical documentation and audit logs
- Implement a quality management system
- Register in the EU AI Act database
- Provide transparency to users about the AI's role and limitations
- Maintain human oversight mechanisms
- Conduct post-market monitoring

:::{note}
The EU AI Act is a horizontal regulation: it applies on top of, not instead of, sector-specific regulation (MDR/IVDR).
:::

## Medical Device Regulation (MDR/IVDR)

AI systems that are intended to diagnose, monitor, treat, or predict disease may qualify as medical devices under EU MDR (2017/745) {cite}`mdr2017` or IVD devices under IVDR (2017/746) {cite}`ivdr2017`.

Key questions:
- Does the AI meet the definition of a medical device? (intended purpose is diagnostic/therapeutic)
- What is the risk classification? (Class I, IIa, IIb, III for MDR; Class A, B, C, D for IVDR)
- Is CE marking required?
- What clinical evidence standard applies?
- Is a Notified Body involved?

Classification determines the conformity assessment pathway and the level of clinical evidence required. Get regulatory advice early. Misclassification is costly to correct.

## GDPR and data protection

Processing patient data for AI development and deployment requires a lawful basis under GDPR {cite}`gdpr2016`:

- **Scientific research**: processing for research purposes with appropriate safeguards
- **Legitimate interests**: may apply in some deployment contexts, but rarely in development
- **Public task**: may apply for NHS or public hospital contexts

Data protection requirements relevant to AI development:
- **Data minimisation**: collect only what is necessary
- **Purpose limitation**: data collected for one purpose cannot be reused for another without additional lawful basis
- **Data subject rights**: patients have rights to access, rectification, and erasure
- **Data Protection Impact Assessment (DPIA)**: required for high-risk processing; AI systems processing health data at scale nearly always qualify
- **Pseudonymisation and anonymisation**: reduce re-identification risk; understand the difference

## ISO standards

Relevant ISO standards for healthcare AI:
- **ISO 14971** {cite}`iso14971`: Risk management for medical devices (applicable to AI)
- **IEC 62304**: Software lifecycle processes for medical device software
- **ISO 13485**: Quality management for medical devices

## Country-specific frameworks

Beyond the EU, key frameworks include:
- United Kingdom: MHRA AI as a Medical Device guidance; NHS AI and Digital Regulations Service
- United States: FDA Predetermined Change Control Plans; FDA guidance on AI/ML-based Software as a Medical Device (SaMD)
- International: WHO Ethics and Governance of AI for Health (2021)
