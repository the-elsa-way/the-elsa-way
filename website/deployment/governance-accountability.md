(deployment-governance-accountability)=
# Governance and Accountability

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 6**: Establish mechanisms for AI governance.
:::

AI governance in healthcare is the set of structures, processes, and policies that keep AI systems in responsible use, that identify and correct problems, and that maintain clear accountability when things go wrong.

```{figure} ../figures/open-governance.jpg
:name: open-governance
:alt: Illustration of open governance showing transparent structures and accountability mechanisms with multiple stakeholders participating in oversight.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Why governance matters

When an AI system contributes to a clinical error, the question of accountability is complex:

- Did the AI produce incorrect output?
- Did the clinician fail to appropriately scrutinise the AI output?
- Was the AI deployed in a context it was not validated for?
- Was the user adequately trained?
- Was the AI up to date?

Without clear governance, that complexity becomes a vacuum of accountability, harming both patients and the clinicians who used the AI in good faith.

## Key governance roles

Define roles explicitly before deployment:

| Role | Responsibilities |
|---|---|
| **AI system owner** | Responsible for the technical functioning and compliance of the AI system |
| **Clinical lead** | Responsible for clinical appropriateness of AI deployment; escalation point for clinical concerns |
| **Data governance lead** | Responsible for data protection compliance; manages access to patient data |
| **Quality and safety lead** | Oversees monitoring, audit, and incident reporting |
| **AI ethics advisory** | Provides oversight on fairness, transparency, and patient rights |
| **User representatives** | Clinicians and (where applicable) patient representatives with formal advisory role |

## Governance structures

- **AI governance committee**: oversight body with representatives from clinical, technical, legal, and patient perspectives; meets periodically to review monitoring reports and consider significant changes
- **Incident reporting system**: a pathway for clinicians and patients to report concerns about AI outputs; routes to both quality/safety and AI system owner
- **Change management process**: formal review of all proposed model updates, workflow changes, and scope expansions before implementation

## Accountability under the EU AI Act

The EU AI Act {cite}`euaiact2024` assigns responsibilities to both **providers** (who place AI on the market) and **deployers** (who use AI in a professional context):

- Providers are responsible for the design, performance claims, and technical documentation
- Deployers are responsible for appropriate use (within intended purpose), user training, and monitoring
- Both have incident reporting obligations

Your institution's governance structures should clearly assign these responsibilities and document who holds them.

## Patient rights and transparency

Patients have rights regarding AI-assisted decisions:

- The right to be informed that AI was involved in their care
- The right to request human review of AI-assisted decisions (under EU AI Act Article 86)
- The right to explanation of automated decisions that significantly affect them (under GDPR Article 22 {cite}`gdpr2016`)

Establish processes for patients to exercise these rights, and make sure clinical staff know how to respond.
