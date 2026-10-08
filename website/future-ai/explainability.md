(future-ai-explainability)=
# Explainability

Many machine learning models are "black boxes": even their builders cannot read off why a given patient got a given score. The explainability principle asks that a healthcare AI tool gives clinically meaningful information about the logic behind its outputs, so that users understand what it can and cannot do and can step in when needed {cite}`lekadir2025futureai`.

## Explainability recommendations

### E1: Define the need and requirements for explainability with end users

*Research `++`, deployable `++`.* Decide with clinicians, technicians and patients whether the tool needs explanations at all. The paper contrasts two cases:

- A tool that outlines an organ on a scan may need none, because the user can see the outline and judge it.
- A tool that suggests a diagnosis does need one, because clinicians must weigh the suggestion and discuss it with the patient.

If explanations are needed, agree what they are for, which method suits that purpose, and which limitations to watch, such as users trusting the tool too much.

**→ See:** [Intended use and user requirements](../design/intended-use.md)

### E2: Evaluate explainability with end users

*Research `+`, deployable `+`.* First check with computational methods that the explanations are correct. Then test with end users whether they improve satisfaction, confidence and clinical performance, and record where explanations make no clinical sense, shift with small amounts of noise or raise confidence in wrong outputs.

**→ See:** [Explainability assessment](../evaluation/explainability-assessment.md)

## Kinds of explanation

A *local* explanation covers one output ("why did this patient get a high score?"); a *global* one describes the model's overall behaviour ("which inputs matter most?"). Some models, such as logistic regression or small decision trees, are interpretable by design. For complex models, *post-hoc* methods produce an explanation after the fact: SHAP and LIME estimate how much each input pushed a particular prediction up or down, and saliency maps highlight the image regions that most affected the output. A clinician needs the clinical features behind a score, a patient a plain account of what it means for their care, and a regulator documentation of the model's logic and validation.

Post-hoc explanations are approximations of what the model does. A saliency map can highlight a region that predicts the outcome statistically without causing the disease, and SHAP values can change after a small change in input. Present explanations as an aid to judgement and say what they cannot show.

:::{admonition} Running case: sepsis early warning
:class: note
This example is fictional. When a hospital's sepsis model raises an alert, nurses and physicians want to know why before they go to the bedside. Under E1 they agree that each alert lists the three inputs that raised the score most (for example rising heart rate, falling blood pressure, high lactate) and when each was measured. Under E2 the team checks whether this helps clinicians decide faster, and whether it makes them accept alerts they would otherwise have questioned.
:::
