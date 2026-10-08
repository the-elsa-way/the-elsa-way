(development-human-ai-interaction)=
# Human-AI interaction design

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 2**: build mechanisms for human-AI interaction and human oversight {cite}`lekadir2025futureai`.
:::

A well-performing model can still do harm if its output reaches the wrong person, at the wrong moment, in a form that is easy to misread. Interaction design decides whether clinicians notice the output, understand it and feel free to disagree with it.

## Principles of human-AI interaction in healthcare

:::{admonition} Running case: sepsis early warning
:class: note
This is a fictional example used throughout the book. When the hospital's sepsis score crosses a threshold, the system alerts the ward nurse and the physician on call. The alert shows the score, the three observations that contributed most, and when vital signs were last measured. The nurse can mark the alert as "assessed, no action" or "escalated", with an optional comment, and both choices are logged. If too few observations were recorded in recent hours, the alert says so instead of showing a score.
:::

The case shows four principles at work. Users should know when AI is involved, what it does and where it is weak; showing a score as if it were a lab result, with no sign of its basis or uncertainty, misleads them. Clinicians stay responsible for decisions, so the design must let them review the output, override it and report errors, as the "assessed, no action" button does. Trust should match performance: you want nurses to act on the score when it is right and to question it when, for example, it is based on old observations. That requires showing what the model does and does not know. Finally, the tool has to fit the workflow. An alert that adds several clicks to every patient round, or fires so often that staff stop reading it (alert fatigue), will be ignored.

## Designing AI outputs for clinical use

Decide with users what to show alongside the main output:

- The main output: the score, classification, segmentation or recommendation
- Confidence or uncertainty: how sure the system is about this case
- Supporting evidence: what in the input led to this output (see [explainability](../evaluation/explainability-assessment.md))
- Caveats: known failure modes, and patient groups for whom the model has not been validated
- Action guidance: what the user is expected to do with this information, according to the local protocol

:::{include} ../toolbox/_generated/passages/development-human-ai-interaction-outputs.md
:::

## Avoiding automation bias

Automation bias is the tendency to follow an automated suggestion even when other information points the other way, or to miss a problem because the system did not flag it. A systematic review of clinical decision support found it in a range of clinical tasks and identified design factors that make it more or less likely {cite}`goddard2012automation`. The opposite also happens: staff learn to dismiss alerts that are often wrong. Design measures include:

- Asking users to record their own assessment before they see the AI output, where the workflow allows it
- Presenting the output as a suggestion, not a decision
- Making it easy to override the output and report errors
- Explaining in training when the system is likely to be wrong
- Avoiding layouts that make the output look like an authoritative clinical report

## Prototype and test

Test the interaction with representative users before you finalise it. Start with paper prototypes and cognitive walkthroughs (stepping through a task with a user and asking what they expect at each point), then run usability tests in which clinicians perform realistic tasks, and adjust the design after each round. See [usability and user experience](../evaluation/usability-ux.md) for evaluation methods.
