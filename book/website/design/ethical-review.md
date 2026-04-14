(design-ethical-review)=
# Ethical Review and Approval

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 6**: Investigate and address application-specific ethical issues.
:::

Ethical review is a prerequisite for responsible AI development in healthcare — not a formality to be expedited, but a structured process for identifying and addressing the ethical risks of what you are building.

## What ethical review is

Ethical review examines whether a proposed study or development project:

- Respects the autonomy, dignity, and rights of patients and participants
- Minimises harm and maximises benefit
- Distributes benefits and risks fairly
- Is transparent and accountable

In the context of AI development, ethical review addresses both the use of patient data (which is typically subject to research ethics requirements) and the intended clinical application of the AI system.

## What requires ethical review

The threshold for requiring formal ethics committee review varies by country, institution, and the nature of the work. As a general guide:

- **Definitely requires review**: prospective collection of patient data for AI development; clinical trials or usability studies involving patients; deployment of AI tools that affect clinical decisions
- **Likely requires review**: retrospective use of identifiable patient data; AI systems used with or by patients
- **May not require review**: development using fully anonymised public datasets; feasibility studies using synthetic data

When in doubt, consult your institution's ethics committee early. Starting the process late delays the entire project.

## Application-specific ethical issues

Beyond standard research ethics, healthcare AI raises specific ethical concerns that should be explored at the design stage:

| Ethical concern | Questions to ask |
|---|---|
| **Autonomy** | Does the AI undermine patients' ability to make informed decisions? Is the AI's role disclosed to patients? |
| **Discrimination** | Could the AI produce systematically worse outcomes for marginalised groups? What is the basis for that risk? |
| **Consent** | What do patients need to know and consent to? Is secondary use of data covered by existing consent? |
| **Accountability** | When the AI is wrong, who is responsible? |
| **Dependency** | Will deployment of this AI create dependency that is hard to reverse? What happens if the AI fails or is withdrawn? |
| **De-humanisation** | Does the AI reduce the human interaction in care in ways that matter to patients? |
| **Environmental** | What is the carbon footprint of training and operating this AI? |

:::{admonition} Example
:class: note
An AI tool for early detection of depression in primary care raises questions about: informed consent (patients may not know their GP is using an AI), discrimination (model trained on majority population may miss presentations in minority communities), and autonomy (patients' right not to be screened). These should be identified and documented during design.
:::

## Working with ethics committees

Practical guidance for navigating ethics review:

- Engage the committee early, ideally before writing the full application
- Ask what level of review applies to your project
- Prepare a clear lay summary of what the AI does and its potential risks
- Document your data governance plan, including storage, access controls, and data minimisation
- Plan for how participant (or patient) data will be handled if the project ends
