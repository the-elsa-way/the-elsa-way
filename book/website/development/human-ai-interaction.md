(development-human-ai-interaction)=
# Human-AI Interaction Design

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 2**: Establish mechanisms for human-AI interactions and oversight.
:::

How the AI presents its outputs to users is as important as the outputs themselves. Poor human-AI interaction design can negate the benefits of a well-performing model — and can introduce new harms, such as automation bias or alert fatigue.

## Principles of human-AI interaction in healthcare

**Transparency**: users should know when AI is involved, what the AI is doing, and what the AI's limitations are. Presenting AI outputs as if they were clinical facts — without indicating uncertainty or the basis for the recommendation — is misleading.

**Human oversight**: the AI should support clinical judgment, not replace it. Design must include clear mechanisms for clinicians to review, override, and report errors in AI outputs.

**Appropriate trust calibration**: the goal is not maximum trust in the AI — it is correctly calibrated trust. Users should trust the AI when it is right and doubt it when it is wrong. This requires transparent communication of the AI's performance characteristics and uncertainty.

**Minimal disruption to workflow**: the best AI tool is one that clinicians use. If using the AI adds significant time or complexity to the workflow, adoption will be low and benefit will be limited.

## Designing AI outputs for clinical use

Consider what information to present alongside the AI's primary output:

- **The primary output**: the diagnosis, segmentation, score, or recommendation
- **Confidence or uncertainty**: how confident is the AI in this output?
- **Supporting evidence**: what in the input led to this output? (explainability)
- **Relevant caveats**: known failure modes; populations where the model has not been validated
- **Action guidance**: what should the user do with this information?

## Avoiding automation bias

Automation bias — the tendency to over-rely on automated recommendations — is documented in clinical settings and can lead to harm. Design interventions include:

- Requiring users to record their own assessment before seeing the AI output
- Framing AI outputs as suggestions, not decisions
- Making it easy to override and report errors
- Including in training materials discussion of when the AI is likely to be wrong
- Avoid presenting AI outputs in ways that mimic authoritative clinical reporting

## Prototype and test

Human-AI interaction design should be tested with representative users before finalisation:

- Paper prototypes and cognitive walkthroughs at early stages
- Usability testing with clinicians performing realistic tasks
- Iterative refinement based on user feedback

See [Usability and User Experience](../evaluation/usability-ux.md) for evaluation methods.
