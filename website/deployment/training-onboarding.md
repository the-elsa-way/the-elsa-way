(deployment-training-onboarding)=
# Training and onboarding

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 3** {cite}`lekadir2025futureai`: provide training materials and activities for the people who use the tool.
:::

Since 2 February 2025, the EU AI Act {cite}`euaiact2024` requires providers and deployers of AI systems to make sure their staff have sufficient AI literacy (Art. 4). For a hospital, that means the people who use an AI tool must understand what it does, where it fails and how to act on its output. Users without that understanding may misuse the tool, ignore it or trust it too much. Plan training as a programme that runs for as long as the tool is in use, starting before go-live.

:::{admonition} Running case: sepsis early warning
:class: note
In this book's fictional running case, the hospital trains ward nurses, physicians on call and the rapid response team before its sepsis alert goes live. A hands-on session uses past cases, including some where the score was low but the patient had sepsis, so staff practise trusting their own clinical judgement when it disagrees with the score.
:::

## What training should cover

Start with what the tool does: the clinical problem it addresses, what it produces and how to read it, and how well it performed in validation. Explain performance measures in plain terms; for example, sensitivity is the share of patients with the condition that the tool flags, and specificity is the share of patients without the condition that it correctly leaves unflagged.

Be just as explicit about what the tool does not do. Name the patient groups and situations it was not validated for and the failure modes you know about, because clear limits prevent use outside its intended purpose.

Safe use is the practical core. Users need to know how to interpret scores and confidence values, when to follow the AI and when to override it, and how to report errors or concerns. Teach automation bias, the tendency to accept a computer's suggestion without enough scrutiny, and how to guard against it.

Finally, cover the regulatory and governance context: the tool's regulatory status, who is responsible for clinical decisions when AI is involved, and what to tell patients.

## Training formats

Combine formats to reach everyone: e-learning that is easy to update, hands-on sessions with realistic and difficult cases, a one-page quick reference guide, short videos of the interface and worked case studies of AI-assisted decisions.

Make materials accessible: compatible with assistive technology, available in the languages your staff use and matched to their digital skills.

## Training evaluation

Check whether training worked. Test knowledge (do users know what the AI does and does not do?), practical competence (can they use it correctly in a simulated scenario?) and attitude (is their level of trust appropriate, neither blind trust nor dismissal?).

## Ongoing training

Training needs change over time. A model update can change how the tool behaves, so retrain users after significant changes. New staff need onboarding before they use the tool. A yearly refresher keeps skills current and tells users about problems found through monitoring, and lessons from reported incidents should go into the training materials.
