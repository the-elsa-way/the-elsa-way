(deployment-logging-traceability)=
# Logging and traceability

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 5** {cite}`lekadir2025futureai`: record how the tool is used in a logging system.
:::

When a patient deteriorates after an AI alert was ignored, or after an alert that never came, the first question is what the tool showed and to whom. Logs answer that question. Without them you cannot investigate incidents, show that you meet regulatory requirements or trace how the AI contributed to a clinical decision.

:::{admonition} Running case: sepsis early warning
:class: note
In this book's fictional running case, the hospital logs every hourly sepsis score, the inputs it was based on, the model version, every alert sent and whether the nurse or physician acknowledged it. A complaint about a missed sepsis case can then be traced hour by hour.
:::

## What to log

For each use of the AI, log at least:

| Log field | Purpose |
|---|---|
| Timestamp | When the AI was run |
| Patient ID (pseudonymised in logs used for analysis) | Linking to clinical outcome data |
| User ID | Who used or received the output |
| AI inputs | What data the AI used |
| AI outputs | What the AI predicted or recommended |
| Confidence score | How certain the AI was about its output |
| Clinical decision made | What the clinician decided (where this can be captured) |
| Override flag | Whether the clinician acted against the AI's recommendation |
| Version identifier | Which model version produced the output |

:::{include} ../toolbox/_generated/passages/deployment-logging-traceability-what.md
:::

## Logging principles

Log every use of the AI; a gap in the logs is a governance failure. Make logs immutable by writing them to append-only storage that nobody can edit afterwards, and make them searchable so that auditors and investigators can find what they need.

Logs contain sensitive patient data, so restrict access and log that access too. In Dutch healthcare, NEN 7510 sets the requirements for information security, and NEN 7513 sets how to log access to electronic patient records: who looked at which record, and when.

Keep logs for as long as the law requires, and be clear which rule applies to which record. Under the EU AI Act {cite}`euaiact2024`, providers and deployers of high-risk systems keep automatically generated logs for at least six months (Arts. 19 and 26(6)). The MDR's 10-year period applies to the manufacturer's technical documentation, not to usage logs. If the AI output becomes part of the medical record, the WGBO's retention period for medical records applies: at least 20 years (Civil Code Art. 7:454).

## Using logs for accountability

If a patient is harmed and the AI was involved, logs let you reconstruct what the AI said and what the clinician did. Aggregated across many cases, they show trends in the AI's outputs and in how clinicians respond, which feeds [monitoring](monitoring-auditing.md). They are also the main evidence for audits and regulators. Overrides are especially informative when you retrain the model, because they mark cases where clinicians disagreed with it.

## Privacy considerations

AI interaction logs contain personal health data, so the GDPR {cite}`gdpr2016` applies, including its requirement for appropriate security (Art. 32). Pseudonymise logs where you can, meaning you replace direct identifiers with a code that only an authorised party can link back to the patient. Restrict access to authorised staff with a defined purpose, such as an incident investigation, write down who may see the logs and why, and align retention with the legal periods above.
