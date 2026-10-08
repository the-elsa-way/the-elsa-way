(design-problem-definition)=
# Problem definition and scoping

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 1** (Us1): define the clinical need, the intended use and the user requirements early. The success criteria you set here are also the start of the evaluation plan asked for in **General recommendation 4** (G4).
:::

A model can be accurate and still help no one, because it answers a question nobody in the clinic was asking. Getting the question right comes before any choice about data or algorithms.

## Why this is hard in healthcare

A clinician who says "I want to detect sepsis earlier" may mean several different things. Earlier recognition on the ward, faster antibiotics, fewer unplanned ICU admissions and fewer missed cases at night each need different data, a different point in the workflow and different success criteria. Developers are tempted to turn the request straight into a technical task ("train a classifier on EHR data") and skip four questions:

- Does earlier detection lead to better outcomes for these patients?
- Can a tool fit into the workflow at the moment when it would change what someone does?
- Is there a non-AI solution that would work as well?
- Who else is affected: nurses, the rapid response team, IT, managers?

## Defining the clinical need

Start from the clinical problem. A useful problem statement covers four things. It names the clinical context (which patients, in which care setting, at which stage of the care pathway). It describes the unmet need: what happens now, and what goes wrong, is missed or takes too long. It says which patients the tool will affect and whether some subgroups could be affected more than others. And it states the intended benefit: which outcome should improve, and how you will know.

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional hospital from this section's running case, the first request from the board was "use AI to improve sepsis care". After two sessions with ward nurses, internists and the rapid response team, the team rewrote it: *"On our adult wards, deterioration from sepsis is sometimes recognised hours after the first warning signs appear in the EHR, especially at night. We want an hourly risk score that alerts the ward nurse and the physician on call early enough to start assessment and treatment sooner, without adding more alerts than nurses can act on."* The second version names a setting, a user, a decision and a limit on workload.
:::

## Scoping the AI solution

Once the need is clear, write down what the tool will and will not do. Specify the inputs (images, text, structured EHR fields or a combination) and the output (a score, a flag, a segmentation or a recommendation). Name the point in the workflow where the output appears, the decision it supports and who has the final say. Then list explicit exclusions. In the running case, the team excluded the emergency department, children and the ICU, because the data and workflows there differ. Writing exclusions down prevents scope creep and makes clear who is responsible when someone uses the tool outside its scope.

## Justifying the AI approach

Some clinical problems are better solved without AI. Before you commit, document whether a simpler rule-based score or statistical model has been tried, what AI would add, and what new risks it brings. For sepsis, many Dutch hospitals already use an early warning score based on vital signs, such as the Modified Early Warning Score (MEWS), so the team must show what an AI model adds over that score.

:::{warning}
Automation bias is the tendency to over-rely on an automated system, even when it is wrong. It is a documented risk in clinical AI. Your design needs a plan for how users will keep checking the output, for example by showing which observations drove the score.
:::

## Success criteria

Set success criteria before you collect or look at any data, and record them where they cannot quietly change. Cover four kinds:

- **Technical**: for example sensitivity (the share of true cases the tool flags), specificity (the share of non-cases it leaves alone), the area under the ROC curve (AUC, how well the score separates cases from non-cases) and calibration (whether a predicted 20% risk means about 20 in 100 such patients develop the condition).
- **Clinical**: for example time to antibiotics, unplanned ICU admissions, or the number of alerts per nurse per shift.
- **Fairness**: the largest acceptable difference in performance between patient subgroups.
- **Safety**: the error rate or missed-case rate you will not accept for this use.

If you set the criteria after seeing results, you will be tempted to pick the ones the model happens to meet, and nobody reading your report can tell the difference.
