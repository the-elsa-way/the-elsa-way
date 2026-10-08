(evaluation-usability-ux)=
# Usability and user experience

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 4** (Us4): evaluate user experience and acceptance with independent end users {cite}`lekadir2025futureai`. Training materials (Us3) belong to the deployment phase (see [training and onboarding](../deployment/training-onboarding.md)).
:::

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis case, the alert reaches a ward nurse in the middle of a medication round. Within seconds she has to see which patient it concerns, why the score is high and what she is expected to do next. If the alert interrupts her without that information, she will learn to dismiss it. Usability testing finds these problems before the tool goes live.
:::

Usability evaluation asks whether real users, in realistic conditions, can use the tool to reach their clinical goals. It covers effectiveness (can users complete the task with the AI?), efficiency (how long does it take and how many errors do they make?), satisfaction, safety (are there use errors that could harm a patient?) and acceptance (are users willing to use the tool in their own work?).

## Methods

### Think-aloud testing

Users carry out representative tasks while saying out loud what they are thinking. A researcher watches and notes where users get confused or make errors, what information they look for and cannot find, how they read the AI's output, and when they override or ignore it. A common approach is to test with small groups, around five users per user group, fix what you find, and test again.

### Validated questionnaires

Standardised questionnaires let you compare results with other studies:

- **System Usability Scale (SUS)**: ten statements whose answers combine into a score from 0 to 100. Across many studies the average score is 68, and scores above about 70 are read as acceptable {cite}`bangor2008`.
- **Technology Acceptance Model (TAM)** questionnaires: measure how useful and how easy to use people find a technology.
- **Unified Theory of Acceptance and Use of Technology (UTAUT)** questionnaires: add factors such as social influence and organisational support.

Give these questionnaires after users have worked through realistic tasks, not after a demonstration.

:::{include} ../toolbox/_generated/passages/evaluation-usability-ux-questionnaires.md
:::

### Task performance metrics

Measure how well users perform with and without the AI: time to complete the task, error rate, accuracy of decisions against a reference standard, and how often users override the AI.

### Simulated clinical scenarios

Give users realistic clinical cases, some with AI support and some without, and compare their accuracy, confidence and time. Include cases where the AI is wrong. These show whether users notice the error or follow the AI anyway (automation bias).

## Diverse users

Test with people who reflect everyone who will use the tool. A nurse and an intensivist may use the same alert in very different ways. Include junior and senior staff, people with more and less experience of AI, and each setting where the tool will run, for example both day and night shifts.

## Iterative design

Test early prototypes, fix the problems you find, and test again. If you wait until development is finished, design problems are expensive to change and are more likely to be accepted as they are.
