(future-ai-overview)=
# FUTURE-AI overview

FUTURE-AI has 30 recommendations: three for fairness, four for universality, six for traceability, five for usability, three for robustness, two for explainability and seven general ones {cite}`lekadir2025futureai`. The paper's step-by-step guide (its Tables 3 to 6 and Figure 3) places each recommendation in the lifecycle phase where you first act on it. This page follows that placement. It is the reference list that the rest of The ELSA Way links to.

## How to read the tables

Each recommendation has a code: a letter for the principle and a number. The book uses **Un** for universality and **Us** for usability, as the paper's Figure 3 does, so the two never clash. The summaries are our own short wording; the paper's Table 2 has the official text.

The two compliance columns show how strongly the consortium recommends each item for two kinds of tool. A *research* tool is a proof of concept built and tested in a research setting. A *deployable* tool is meant for use in routine care. `+` means recommended and `++` means highly recommended. For a deployable tool, 26 of the 30 recommendations are `++`; the four that stay at `+` are F2, Un2, E2 and G7.

The phase shows where the work starts, not where it ends. G1 (stakeholders) and T1 (risk management) explicitly run through the whole lifecycle, and choices you make in design come back when you evaluate and monitor the tool.

## The 30 recommendations by lifecycle phase

### Design

| Code | What it asks of you | Research | Deployable | Covered in |
|---|---|---|---|---|
| G1 | Involve clinicians, patients, ethicists, legal experts, data managers and other disciplines from the start, and keep them involved | ++ | ++ | [Stakeholder engagement](../design/stakeholder-engagement.md) |
| Us1 | Write down early who will use the tool, for what task, and what they need from it | ++ | ++ | [Intended use](../design/intended-use.md) |
| Un1 | Name the clinical settings the tool is meant for and how those settings differ | ++ | ++ | [Intended use](../design/intended-use.md) |
| Un2 | Build on standards the community already uses: clinical definitions, terminologies, data and interface standards | + | + | [Intended use](../design/intended-use.md), [Clinical integration](../deployment/clinical-integration.md) |
| R1 | List the ways real-world data can vary: equipment, protocols, operators, artefacts, context | ++ | ++ | [Data strategy](../design/data-strategy.md) |
| F1 | Identify early where bias could come from: patient attributes, factors specific to the application, and human bias in labelling and curation | ++ | ++ | [Sources of bias](../design/bias-sources.md) |
| E1 | Decide with end users whether explanations are needed and, if so, what they are for | ++ | ++ | [Intended use](../design/intended-use.md) |
| T1 | Set up a risk management process that runs for the tool's whole life | + | ++ | [Risk management](../design/risk-management.md) |
| G6 | Look for the ethical issues specific to this application and address them | + | ++ | [Ethical review](../design/ethical-review.md) |
| G7 | Look at effects on society, work and the environment and address them | + | + | [Social and societal impact](../design/social-impact.md) |

### Development

| Code | What it asks of you | Research | Deployable | Covered in |
|---|---|---|---|---|
| R2 | Train on real-world data that represents the variation you listed under R1 | ++ | ++ | [Data collection](../development/data-collection.md) |
| F2 | Record attributes of patients (such as sex, age, ethnicity) and of the data (such as site and device) so that you can check for bias later | + | + | [Data collection](../development/data-collection.md), [Data quality and fairness](../development/data-quality-fairness.md) |
| G2 | Protect the privacy and security of the data and the tool | ++ | ++ | [Privacy and security](../development/privacy-security.md) |
| G3 | Build in measures against the risks found during design | ++ | ++ | [Addressing AI risks](../development/addressing-ai-risks.md) |
| Us2 | Design how users work with the tool, check its inputs and outputs, and overrule it | + | ++ | [Human-AI interaction](../development/human-ai-interaction.md) |

### Evaluation

| Code | What it asks of you | Research | Deployable | Covered in |
|---|---|---|---|---|
| G4 | Plan the evaluation before you run it: test data, metrics and what you compare against | ++ | ++ | [Evaluation planning](../evaluation/evaluation-planning.md) |
| Un3 | Test on external datasets, at more than one site, or both | ++ | ++ | [External validation](../evaluation/external-validation.md) |
| F3 | Measure bias between groups and, where needed, correct it and check that the correction works | + | ++ | [Fairness and bias assessment](../evaluation/fairness-bias.md) |
| Us4 | Test user experience and acceptance with end users who did not help build the tool | + | ++ | [Usability and user experience](../evaluation/usability-ux.md) |
| Us5 | Show clinical utility and safety: effectiveness, harm, and costs against benefits | + | ++ | [Clinical utility and safety](../evaluation/clinical-utility-safety.md) |
| R3 | Test performance under realistic variation in the data and improve it where it fails | ++ | ++ | [Robustness testing](../evaluation/robustness-testing.md) |
| E2 | Check with end users that the explanations are correct and help them | + | + | [Explainability assessment](../evaluation/explainability-assessment.md) |
| T2 | Document the tool, its data and its evaluation results for each audience | ++ | ++ | [Documentation](../development/documentation.md), [Reporting and transparency](../evaluation/reporting-transparency.md) |

### Deployment

| Code | What it asks of you | Research | Deployable | Covered in |
|---|---|---|---|---|
| Un4 | Show that the tool works on local patients and fits local workflows before you rely on it | + | ++ | [Local validation](../deployment/local-validation.md) |
| T3 | Check inputs and outputs while the tool runs: missing or out-of-range values, implausible results | + | ++ | [Quality control](../deployment/quality-control.md) |
| T4 | Audit the tool on a schedule and update it when performance or data change | + | ++ | [Monitoring and auditing](../deployment/monitoring-auditing.md) |
| T5 | Log how the tool is used: data accessed, predictions, clinical decisions and problems | + | ++ | [Logging and traceability](../deployment/logging-traceability.md) |
| Us3 | Give users training materials and sessions | + | ++ | [Training and onboarding](../deployment/training-onboarding.md) |
| G5 | Find out which laws apply and comply with them | + | ++ | [Legal and regulatory considerations](../design/legal-regulatory.md), [Regulatory compliance](../deployment/regulatory-compliance.md) |
| T6 | Assign roles and responsibilities for running, supervising and answering for the tool | + | ++ | [Governance and accountability](../deployment/governance-accountability.md) |

## Where the paper and EU law differ

FUTURE-AI is a consensus guideline, and in one place its wording goes further than the legal text. Under G5 the paper says the EU AI Act treats all healthcare AI as high-risk. The Act itself {cite}`euaiact2024` makes a healthcare AI system high-risk in two cases: when it is, or is a safety component of, a medical device that must be assessed by a Notified Body (an independent organisation designated to check conformity, in practice for MDR class IIa and higher), or when its use is listed in Annex III, such as emergency patient triage. [Legal and regulatory considerations](../design/legal-regulatory.md) explains how to check this for your tool.
