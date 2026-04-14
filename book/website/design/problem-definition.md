(design-problem-definition)=
# Problem Definition and Scoping

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 1**: Engage interdisciplinary stakeholders throughout the AI lifecycle.
:::

Defining the right problem is the most consequential step in AI development. Many AI projects fail not because the model is wrong but because the model is solving the wrong problem. A technically excellent AI system that addresses the wrong clinical need provides no benefit — and may cause harm.

## Why this is hard in healthcare

Healthcare problems are complex. A clinician's stated need ("I want to detect X earlier") often conceals multiple distinct problems, each requiring different approaches, data, and success criteria. The AI developer's instinct to translate the need into a technical specification ("train a classifier on Y data") may skip over critical questions:

- Is earlier detection of X actually linked to better patient outcomes?
- Does a tool to detect X fit into the clinical workflow at the point where it matters?
- Is the problem currently unsolved, or is there a non-AI solution that would work just as well?
- Who else is affected: nurses, administrators, IT systems?

## Defining the clinical need

Begin with the clinical problem, not the AI solution. A useful problem statement includes:

- **The clinical context**: Who is the patient population? What care setting? What stage in the care pathway?
- **The unmet need**: What is currently happening? What goes wrong, is missed, or takes too long?
- **The target population for the AI**: Who will the AI directly affect? Are there subgroups who may be disproportionately affected?
- **The intended benefit**: What outcome should improve? How will you know the tool is working?

:::{tip}
A well-formed problem statement: *"Radiologists at a busy regional hospital miss 15% of incidental pulmonary emboli on CT chest scans. An AI flagging tool should reduce the miss rate by at least 50% without increasing radiologist workload."*

A poorly-formed problem statement: *"We want to use deep learning to improve radiology."*
:::

## Scoping the AI solution

Once the clinical need is clear, scope what the AI system will and will not do:

- **Inputs**: What data will the AI receive? (images, text, structured EHR fields, combinations)
- **Outputs**: What will the AI produce? (a score, a segmentation, a flag, a recommendation)
- **Integration point**: Where in the workflow does the AI intervene?
- **Human in the loop**: What decision or action does the AI support or replace? Who has final authority?
- **Explicit exclusions**: Document what the AI is not designed to do — this prevents scope creep and clarifies liability

## Justifying the AI approach

Not every clinical problem requires AI, and not every problem that can be solved with AI should be. Document your justification:

- Has a simpler rule-based or statistical approach been considered?
- What does AI offer that existing approaches do not?
- What are the risks of AI over-reliance or automation bias?

:::{warning}
Automation bias — the tendency of human operators to over-rely on automated systems even when they are wrong — is a documented risk in clinical AI. The design must explicitly plan for how to mitigate it.
:::

## Success criteria

Define measurable success criteria before any data is collected. These should include:

- **Technical metrics**: sensitivity, specificity, AUC, calibration — specified for the intended clinical task
- **Clinical metrics**: time saved, reduction in adverse outcomes, clinician satisfaction
- **Fairness criteria**: performance should not differ substantially across demographic subgroups
- **Safety thresholds**: what constitutes an unacceptable error rate for this application?

Success criteria defined after the fact are not success criteria — they are post-hoc rationalisation.
