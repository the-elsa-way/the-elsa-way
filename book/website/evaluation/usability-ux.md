(evaluation-usability-ux)=
# Usability and User Experience

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendations 3 and 4**: Provide training materials; evaluate user experience and acceptance.
:::

An AI tool that clinicians do not use provides no benefit. A tool that clinicians use incorrectly may cause harm. Usability evaluation assesses whether real users, in realistic conditions, can use the tool to achieve clinical goals effectively, efficiently, and safely.

## What usability evaluation covers

- **Effectiveness**: can users complete the intended task with the AI?
- **Efficiency**: how long does it take? How many errors are made?
- **Satisfaction**: how do users feel about using the tool?
- **Safety**: are there use errors that could lead to patient harm?
- **Acceptance**: are users willing to use the AI in their actual workflow?

## Methods

### Think-aloud testing

Users perform representative tasks while thinking aloud. A facilitator observes and records:

- Where users are confused or make errors
- What information users seek but cannot find
- How users interpret the AI's outputs
- Where users override or ignore the AI

Think-aloud testing with as few as 5 representative users typically identifies the majority of critical usability issues.

### Validated questionnaires

Standardised instruments for measuring usability and acceptance:

- **System Usability Scale (SUS)**: 10-item questionnaire; score ≥68 considered acceptable
- **Technology Acceptance Model (TAM)**: measures perceived usefulness and ease of use
- **Unified Theory of Acceptance and Use of Technology (UTAUT)**

Apply these questionnaires after realistic task performance, not after a demo.

### Task performance metrics

Measure objective task performance with and without the AI:

- Time to complete the task
- Error rate
- Decision accuracy compared to gold standard
- AI override rate

### Simulated clinical scenarios

Present users with realistic clinical cases. Compare:

- Diagnostic accuracy with AI vs. without AI
- Confidence with and without AI
- Time spent on task with and without AI

## Diverse users

Test with users who represent the diversity of intended users:

- Different clinical roles (radiologist and referring clinician may interact with the same tool differently)
- Different experience levels (senior vs. junior clinician)
- Different levels of AI familiarity
- Different settings (if the tool will be used in multiple settings)

## Iterative design

Usability testing should happen iteratively — not as a single gate at the end of development. Test prototypes early, fix identified issues, test again.
