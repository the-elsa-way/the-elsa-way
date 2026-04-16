(design-social-impact)=
# Social and Societal Impact

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 7**: Investigate and address social and societal issues.
:::

AI in healthcare affects more than individual patients. It affects clinicians, healthcare systems, communities, and society. These broader impacts should be considered at the design stage, before technical choices are made that are difficult to reverse.

```{figure} ../figures/science-society.jpg
:name: science-society
:alt: Illustration showing the relationship between science and society, with researchers engaging with diverse communities and considering broader social impact.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Workforce and professional identity

AI tools that automate or assist clinical tasks will change the work of healthcare professionals. This may be beneficial (reducing cognitive load, eliminating repetitive tasks) or harmful (de-skilling, job displacement, erosion of professional judgment).

Consider:
- Which tasks does the AI automate, partially automate, or augment?
- Will deployment reduce the number of roles performing this task?
- Could sustained AI assistance lead to de-skilling in the underlying clinical competency?
- How should training and education adapt if AI handles certain tasks routinely?

Engaging clinicians and their professional bodies early can surface concerns and shape design decisions, for example designing the AI to support rather than replace clinical reasoning.

## Health equity

AI can widen or narrow health disparities. If a tool works better for patients who are well-represented in its training data (often patients in high-income settings, majority ethnic groups, patients with standard presentations), deploying it broadly will provide greater benefit to the already-advantaged.

Conversely, AI that is carefully designed for diverse populations, that is accessible in low-resource settings, and that is evaluated for equity can actively reduce health disparities.

At the design stage, ask:
- Who will benefit most from this AI? Who might be disadvantaged?
- Is the deployment setting accessible to the patients who most need this tool?
- Are the hardware and connectivity requirements realistic for low-resource settings?

## Environmental impact

Training large AI models has significant energy and carbon costs. Deploying AI systems at scale in healthcare adds computational and infrastructure demands.

Practices to consider:
- Use energy-efficient training methods (model pruning, quantisation, knowledge distillation)
- Use existing pre-trained models and adapt them where possible (transfer learning)
- Report on the environmental impact of training and operating the AI system
- Consider federated approaches that reduce data transfer

## Trust and the patient-clinician relationship

Patients trust clinicians. The introduction of AI into that relationship raises questions about transparency, consent, and the nature of the care received:

- Should patients be informed when AI is involved in their care? (Generally: yes)
- Does the presence of AI change the patient-clinician interaction in ways patients value or find concerning?
- Is the AI disclosed to patients in a way they can understand?

These questions are particularly acute for AI used in mental health, oncology, and other areas where the quality of the patient-clinician relationship is itself therapeutic.
