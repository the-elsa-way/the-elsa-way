(design-social-impact)=
# Social and societal impact

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 7** (G7): investigate and address social and societal issues.
:::

A sepsis alert that fires every hour changes a nurse's shift, the rapid response team's workload and what patients experience on the ward. Effects like these reach beyond the individual patient, and some depend on choices you make in design, such as where the tool runs and who receives its output.

```{figure} ../figures/science-society.jpg
:name: science-society
:alt: Illustration showing the relationship between science and society, with researchers engaging with diverse communities and considering broader social impact.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Workforce and professional identity

AI tools that take over or assist clinical tasks change the work of the people who did them. Sometimes that helps: less repetitive work, less to keep in mind at once. Sometimes it harms: clinicians lose skills they no longer practise, roles disappear, or professional judgement gives way to the score.

Ask which tasks the tool automates fully, partly or not at all. Ask whether it will reduce the number of people doing a task, whether long-term use could erode the underlying clinical skill, and how training should change if the tool handles some tasks routinely. Involving clinicians and their professional bodies early brings these concerns out while you can still act on them, for example by designing the tool to support clinical reasoning rather than replace it.

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis project, ward nurses raised two concerns: that alerts would add to an already high workload, and that newer nurses might stop learning to recognise deterioration themselves. The team set a maximum number of alerts per nurse per shift as a design requirement, and the hospital's training staff planned to keep teaching clinical recognition of sepsis alongside training on the tool.
:::

## Health equity

AI can widen or narrow differences in health between groups. A tool that works best for patients who are well represented in its training data gives the most benefit to people who are already better served. A tool designed and tested with diverse patients, and available where the need is greatest, can help close gaps.

At the design stage, ask who will benefit most and who might lose out. Check whether the setting where the tool will run is one that the patients who need it most can reach, and whether the hardware and connectivity it requires are realistic in less well-resourced settings.

:::{include} ../toolbox/_generated/passages/design-social-impact-equity.md
:::

## Environmental impact

Training large models uses a lot of energy, and running AI across a healthcare system adds computing and infrastructure demand. You can reduce this by using smaller or compressed models (techniques such as pruning, quantisation and knowledge distillation), by adapting an existing pre-trained model instead of training from scratch, and by preferring approaches that move less data. Measure and report the energy use of training and running the tool so that others can compare.

:::{include} ../toolbox/_generated/passages/design-social-impact-environmental.md
:::

## Trust and the patient-clinician relationship

Patients trust their clinicians, and bringing AI into that relationship raises questions about openness, consent and the kind of care people receive. In most cases patients should be told when AI is involved in their care, in words they can understand. Ask patients whether the tool changes their contact with clinicians in ways they value or find worrying. These questions weigh more heavily in mental health care, oncology and other fields where the relationship itself is part of the treatment.
