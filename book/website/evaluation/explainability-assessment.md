(evaluation-explainability-assessment)=
# Explainability Assessment

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Explainability recommendation 2**: Evaluate explainability with end users (eg, correctness, impact on users).
:::

Explainability evaluation is not the same as generating explanations. Generating a saliency map or feature importance score is trivial. Evaluating whether those explanations are clinically meaningful, accurate, and useful to real users is harder — and more important.

## Why explainability matters in healthcare

- Clinicians need to assess whether to trust an AI output. An explanation that matches clinical reasoning provides evidence that the AI is using the right features; one that does not may signal a spurious correlation.
- Patients have a right to understand decisions that affect their care, including AI-assisted decisions.
- Regulators increasingly require explanations for high-risk AI decisions.
- Explanations can help identify failure modes: if the AI flags lung cancer based on a scanner artefact rather than a nodule, a faithful explanation will reveal this.

## Types of explanation

| Type | Examples | Best for |
|---|---|---|
| **Feature importance** | SHAP values, LIME, attention weights | Tabular/structured data; understanding which inputs matter |
| **Saliency maps** | Grad-CAM, integrated gradients | Medical imaging; which regions of the image influenced the output |
| **Counterfactuals** | "If X had been Y, the output would be Z" | Explaining what would change the decision |
| **Example-based** | "This case is similar to these training examples" | Clinical analogy reasoning |
| **Natural language** | Text explanation of AI reasoning | Patient-facing explanations; clinical reports |

No single type is universally best. The appropriate method depends on the clinical task, the user, and the deployment context.

## Evaluating explanations: technical criteria

- **Faithfulness**: does the explanation accurately reflect what the model actually computed? (A saliency map that looks plausible but does not correspond to the model's actual decision pathway is misleading)
- **Completeness**: does the explanation capture all the relevant factors?
- **Stability**: does the same input produce the same explanation? (Instability is a sign of unreliable explanations)
- **Sensitivity**: do explanations change appropriately when the input changes in ways that should matter?

## Evaluating explanations: user studies

Technical correctness is necessary but not sufficient. Explanations must also be useful to users:

- **Comprehension**: do users understand what the explanation is telling them?
- **Trust calibration**: do explanations help users trust correct outputs and doubt incorrect ones? (Or do they increase over-reliance regardless of correctness?)
- **Decision quality**: do users who receive explanations make better clinical decisions than those who do not?
- **Workload**: do explanations add unacceptable cognitive load?

User studies with realistic clinical scenarios are required to answer these questions.

## Avoiding misleading explanations

:::{warning}
Poorly designed explanations can actively harm clinical decision-making:
- Explanations that look plausible but are not faithful to the model can create unjustified confidence
- Complex explanations that users cannot interpret add cognitive load without benefit
- Explanations that highlight irrelevant features can mislead clinical reasoning
:::

Test explanations for both accuracy and the actual impact they have on clinical decision quality — not just for whether they look reasonable.
