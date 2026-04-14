(future-ai-explainability)=
# Explainability

The explainability principle states that healthcare AI tools should provide clinically meaningful information about the logic behind their decisions. Explainability is not just a technical feature — it is the basis for appropriate trust, clinical oversight, and patient rights.

## Explainability recommendations

### E1: Define the need and requirements for explainability with end users

Explainability is not always necessary. A tool that segments an organ for surgical planning may need explainability differently than one that recommends treatment. Define, with end users, what explanations are needed and what form they should take.

Not necessary: AI-enabled image segmentation tool where the output (the segmentation) is itself interpretable
Critical: AI-enabled diagnosis recommendation where the basis for the recommendation affects clinical trust and patient communication

**→ See:** [Design → Intended Use and User Requirements](../design/intended-use.md)

### E2: Evaluate explainability with end users

Generate explanations and evaluate whether they are clinically meaningful, accurate, and useful to users.

**→ See:** [Explainability Assessment](../evaluation/explainability-assessment.md)

## Types of explainability

**Local vs. global**
- Local: explains a specific output for a specific case ("why did the AI flag this scan?")
- Global: explains the model's general behaviour ("what features does the AI typically rely on?")

**Post-hoc vs. intrinsic**
- Post-hoc: explanations generated after the model produces its output (SHAP, LIME, saliency maps)
- Intrinsic: models that are inherently interpretable (logistic regression, decision trees)

**Audience-appropriate**
- Clinician: technical explanation of model reasoning, linked to clinical features
- Patient: accessible explanation of what the AI said and why it matters
- Regulator: documentation of model logic and validation evidence

## The limits of current explainability methods

Current explainability methods have limitations that are important for healthcare:

- Saliency maps may highlight regions that are statistically predictive but not causally related to disease
- SHAP values can be unstable — small changes in input can produce large changes in explanation
- No explanation method fully captures the complexity of a deep learning model

Explainability should be communicated with appropriate humility — as an aid to understanding, not a guarantee of correctness.
