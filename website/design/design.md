(design)=
# Guide for design

Before anyone writes code or requests data, a team has to decide which clinical problem it is solving, for whom, with what data, and under which rules. This section covers those decisions. A wrong choice here (the wrong outcome to predict, a missing user group, an unplanned legal basis) is expensive to undo once a model exists.

```{figure} ../figures/project-design.jpg
:name: project-design
:alt: Illustration showing the components of project design, including problem definition, stakeholder engagement, and planning stages.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

:::{admonition} Running case: sepsis early warning
:class: note
The design chapters follow one fictional project. A regional hospital in the Northern Netherlands wants to detect sepsis earlier on its adult wards. Its data science team, working with a university research partner, builds a model that estimates each patient's sepsis risk every hour from vital signs, lab results and nursing observations in the hospital's electronic health record (EHR). When the score crosses a threshold, the ward nurse and the physician on call receive an alert. The clinicians decide what to do.

The people with a stake include ward nurses, internists and intensivists, the rapid response team, patients and a patient advisory panel, the hospital's data protection officer (in Dutch, the FG), the clinical physics and medical technology department, IT, and the board. Each chapter returns to this case to show what its advice looks like in practice.
:::

FUTURE-AI {cite}`lekadir2025futureai` places ten of its recommendations in the design phase: G1 (engage interdisciplinary stakeholders), Us1 (intended use and user requirements), Un1 (intended clinical settings and cross-setting variations), Un2 (community-defined standards), R1 (sources of data variation), F1 (potential sources of bias), E1 (explainability needs and requirements), T1 (risk management process), G6 (application-specific ethical issues) and G7 (social and societal issues). The chapter on legal and regulatory questions also starts work on G5 (regulatory requirements). FUTURE-AI places G5 in deployment, but the regulatory route shapes design choices long before go-live.

## Chapters in this section

| Chapter | What you will learn |
|---------|-------------------|
| [Problem definition and scoping](problem-definition.md) | How to state a clinical problem, scope the AI tool and set success criteria before you see any data |
| [Stakeholder engagement](stakeholder-engagement.md) | Who to involve, when, and how, including patients |
| [Intended use and user requirements](intended-use.md) | How to describe settings, user groups, interaction and explainability needs |
| [Ethical review and approval](ethical-review.md) | Which review your project needs in the Netherlands, and which ethical questions to work through |
| [Data strategy](data-strategy.md) | How to plan representative data and labels before collection starts |
| [Legal and regulatory considerations](legal-regulatory.md) | How the EU AI Act, MDR/IVDR, GDPR and Dutch law apply to your tool |
| [Risk management planning](risk-management.md) | How to open a risk management file and keep it up to date |
| [Identifying sources of bias](bias-sources.md) | Where bias enters through data, labels and problem framing |
| [Social and societal impact](social-impact.md) | Effects on staff, equity, the environment and the patient-clinician relationship |
