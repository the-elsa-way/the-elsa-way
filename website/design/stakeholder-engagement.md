(design-stakeholder-engagement)=
# Stakeholder engagement

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 1** (G1): engage interdisciplinary stakeholders throughout the AI lifecycle.
:::

A data science team can build a model on its own, but it cannot tell on its own whether nurses will trust the alert, whether patients accept being scored, or whether the hospital lawyer will sign off. Those answers come from other people, and you need them before the design is fixed.

```{figure} ../figures/participatory-research.jpg
:name: participatory-research
:alt: Illustration of participatory research showing diverse people collaborating to co-create and shape a research project together.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Who are the stakeholders?

A stakeholder is anyone who affects or is affected by the AI system. In a hospital project, the list usually includes the groups below.

| Stakeholder group | Role in AI development |
|---|---|
| Clinicians (doctors, nurses, allied health professionals) | Domain knowledge, workflow knowledge; often the end users |
| Patients and communities | Affected by the system; can spot harms the development team cannot see |
| Data managers and IT | Data access, infrastructure, integration with the EHR |
| Data protection officer | Lawful basis, data protection impact assessment, patient rights |
| Legal and compliance | Regulatory requirements, liability, contracts |
| Ethicists | Ethical review, value conflicts |
| Hospital management and board | Funding, procurement, governance, final responsibility |
| Medical technology or clinical physics | Medical device requirements and safe use of technology |
| Developers and data scientists | Technical design and development |
| Regulators | Supervision and certification |

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis project, the stakeholder map showed a gap early on: the team had planned interviews with internists and intensivists but not with ward nurses, who receive most alerts. The rapid response team, the patient advisory panel, the data protection officer (FG) and the medical technology department were added to the core group before the problem statement was finalised.
:::

## When to engage

Plan engagement for every phase. In design, stakeholders help define the problem, the intended use, the data strategy and the ethical questions. In development, they react to model outputs and to prototypes of the interface. In evaluation, they take part in usability tests, judge clinical usefulness and review explanations. In deployment, they receive training, report problems and give feedback on how the tool performs in daily work.

If you first involve clinicians or patients at the usability-testing stage, the problem, the data and the output format have already been chosen without them, and changing those choices is costly.

:::{include} ../toolbox/_generated/passages/design-stakeholder-engagement-when.md
:::

## Patient and community engagement

Patients are directly affected by healthcare AI, yet they are rarely involved in building it. They can point to data that developers would not think to collect, to care situations that limit how a tool can be used, to kinds of harm or unfairness that clinical evaluation misses, and to whether the promised benefit is one they care about.

### Methods for patient engagement

- Patient advisory groups: a standing group of patients with relevant experience who give input over the whole project.
- Co-design workshops: structured sessions where patients and developers explore the problem and try out early prototypes together.
- Participatory design: patients take design decisions with the team, rather than only being consulted.
- Patient interviews: one-to-one conversations about experience with the condition and with care.

Think about the burden on participants. Patients with serious illness may have little time and energy, so make participation accessible and flexible, and pay people for their time where you can.

:::{include} ../toolbox/_generated/passages/design-stakeholder-engagement-methods.md
:::

## Interdisciplinary team composition

The team needs access to clinical expertise in the target domain, data science and machine learning, healthcare law and regulation, medical ethics, human factors and user experience design, and health informatics and data governance. Smaller teams will not have all of these in-house. Record which expertise you consulted from outside, and when, so that reviewers can see who shaped which decision.

The Quadruple Helix model {cite}`carayannis2009quadruple` brings together government, academia, industry and civil society. You can use it as a check that no single group dominates the design and that legal, ethical and social perspectives sit at the table alongside technical ones.
