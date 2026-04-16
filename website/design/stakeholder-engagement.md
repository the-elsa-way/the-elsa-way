(design-stakeholder-engagement)=
# Stakeholder Engagement

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 1**: Engage interdisciplinary stakeholders throughout the AI lifecycle.
:::

Responsible AI in healthcare cannot be built by AI developers alone. Clinical, ethical, legal, and patient perspectives are required inputs for building a system that is safe, fair, usable, and trustworthy.

```{figure} ../figures/participatory-research.jpg
:name: participatory-research
:alt: Illustration of participatory research showing diverse people collaborating to co-create and shape a research project together.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Who are the stakeholders?

A stakeholder is anyone who affects or is affected by the AI system. In healthcare AI, this typically includes:

| Stakeholder group | Role in AI development |
|---|---|
| **Clinicians** (doctors, nurses, allied health) | Domain expertise, workflow knowledge, end users |
| **Patients and communities** | Affected by the system; can identify harms the development team cannot see |
| **Data managers and IT** | Data access, infrastructure, integration |
| **Legal and compliance** | Regulatory requirements, liability, contracts |
| **Ethicists** | Ethical review, identification of value conflicts |
| **Hospital management** | Procurement, implementation, governance |
| **Developers and data scientists** | Technical design and development |
| **Regulators** | Compliance, certification |

## When to engage

Stakeholder engagement is not a one-off activity at the start of a project. It should happen throughout the lifecycle:

- **Design**: problem definition, intended use, data strategy, ethical review
- **Development**: feedback on model outputs and human-AI interface prototypes
- **Evaluation**: usability testing, clinical utility assessment, explainability review
- **Deployment**: training, monitoring, feedback on real-world performance

Starting engagement late (for example, only at the usability testing stage) means that fundamental design decisions have already been made without the input of those most affected.

## Patient and community engagement

Healthcare AI affects patients directly, yet patients are routinely excluded from AI development. This is both an ethical failure and a technical one. Patients can identify:

- Data attributes relevant to their condition that developers would not know to collect
- Care contexts and constraints that affect how and whether an AI tool can be used
- Types of harm or unfairness that clinical evaluations may not capture
- Whether the stated "benefit" of the AI actually corresponds to what patients value

### Methods for patient engagement

- **Patient advisory groups**: established groups of patients with relevant experience who provide ongoing input
- **Co-design workshops**: structured sessions where patients and developers jointly explore problems and prototype solutions
- **Participatory design**: patients as active co-designers, not just consultants
- **Patient interviews**: understanding individual experiences with the disease and the healthcare system
- **Accessible contribution pathways**: making it easy for patients who are not researchers to contribute to The ELSA Way

:::{tip}
When designing patient engagement, consider the burden you are placing on participants. Patients with serious illness may have limited time and energy. Make participation accessible, flexible, and compensated where possible.
:::

## Interdisciplinary team composition

The development team should include, or have access to, expertise in:

- Clinical medicine (specific to the target domain)
- Data science and machine learning
- Healthcare law and regulation
- Medical ethics
- Human factors and UX design
- Health informatics and data governance

Smaller teams may not have all of these roles in-house. Document which expertise you consulted externally, and when.

The **Quadruple Helix** model {cite}`vanhilten2025elsascan` (bringing together government, civil society, academia, and industry) offers a useful frame for ensuring that no stakeholder group dominates the design process and that legal, ethical, and social perspectives are structurally represented alongside technical ones.
