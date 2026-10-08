(future-ai-usability)=
# Usability

An accurate model helps no patient if nurses switch off its alerts or follow them without thinking. The usability principle asks that end users can use the tool to reach a clinical goal efficiently and safely in their real working environment, and that the tool is clinically useful and does no harm {cite}`lekadir2025futureai`.

## Usability recommendations

### Us1: Define intended use and user requirements early

*Research `++`, deployable `++`.* Work out with clinicians, patients and other stakeholders who will use the tool, for which task, in which workflow and with what interface. Include human factors such as digital literacy and *automation bias* (trusting a machine's output over your own judgement).

**→ See:** [Intended use and user requirements](../design/intended-use.md)

### Us2: Design human-AI interaction and oversight

*Research `+`, deployable `++`.* Let users check the tool's inputs and results, flag errors and overrule it. The right amount of oversight depends on the use case, the regulations and patients' preferences, so revisit it during audits.

**→ See:** [Human-AI interaction design](../development/human-ai-interaction.md)

### Us3: Provide training materials and activities

*Research `+`, deployable `++`.* Offer manuals, tutorials and hands-on sessions in accessible language for every user group. Since 2 February 2025, the EU AI Act {cite}`euaiact2024` has required providers and deployers of AI systems to ensure their staff have sufficient AI literacy (Art. 4).

**→ See:** [Training and onboarding](../deployment/training-onboarding.md)

### Us4: Evaluate user experience and acceptance with independent end users

*Research `+`, deployable `++`.* Test the tool in the real workflow with end users who did not help build it, chosen to reflect your users' variety in age, sex, clinical role, digital skill and disability. Measure satisfaction, performance and productivity, and look for confidence, learnability and automation bias.

**→ See:** [Usability and user experience](../evaluation/usability-ux.md)

### Us5: Evaluate clinical utility and safety

*Research `+`, deployable `++`.* Compare care with the tool against current care: effectiveness for patients and clinicians, harm to individuals or specific groups, and costs against benefits. A randomised trial gives the strongest evidence.

**→ See:** [Clinical utility and safety](../evaluation/clinical-utility-safety.md)

:::{admonition} Running case: sepsis early warning
:class: note
This example is fictional. A hospital's sepsis model alerts the ward nurse and the physician on call when the risk score crosses a threshold. A lower threshold catches more cases but adds alerts per shift, and too many alerts lead to *alert fatigue*, where staff stop reading them. In usability tests (Us4), nurses from wards not involved in development work through test cases and say how many alerts per shift they would still act on. Their answer feeds into the threshold, the alert design (Us2) and the training (Us3).
:::
