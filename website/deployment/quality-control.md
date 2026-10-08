(deployment-quality-control)=
# Quality control

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 3** {cite}`lekadir2025futureai`: put checks in place on the quality of the data going into the AI and the outputs coming out.
:::

A deployed model receives new data every minute, and any of it can be wrong, missing or late. Quality control means checking that data before the model uses it, checking the outputs before clinicians act on them, and noticing when patterns change.

:::{admonition} Running case: sepsis early warning
:class: note
In this book's fictional running case, the hospital's sepsis model scores patients every hour from EHR data. At night, nurses record fewer observations, so an input check flags patients whose latest vital signs are more than a set number of hours old, and their score is shown with a warning.
:::

## Input quality control

A model's output can only be as good as its input. Check for missing fields the model depends on, values outside the range seen during training, failed or incomplete measurements (such as imaging artefacts or corrupted files) and format errors, such as inconsistent DICOM metadata or wrong codes in EHR data. Also watch the distribution of inputs over time. A gradual change, known as distribution shift, can mean the patient population, the equipment or documentation habits have changed.

Automate these checks, and send flagged inputs to a person for review before the AI uses them.

## Output quality control

Look for outputs that are clinically implausible, such as a segmentation that covers the whole image or a risk score that jumps from very low to very high without any change in the patient's data. Unusually extreme confidence can point to an unstable model. Errors that cluster, for example all on one scanner or one ward, suggest a systematic failure rather than chance.

Build sanity checks into the processing after the model runs: range checks on numeric outputs, anomaly detection on the distribution of outputs, and consistency checks (for example, an AI report should not contradict the imaging findings).

## Continuous quality monitoring

Set up a dashboard that tracks these indicators over time:

- number of cases processed, to detect outages
- distribution of AI outputs, to detect drift
- how often users override the AI, since a rise can mean lost trust or a worse model
- alert or flag rate, since a sudden change can mean the input data has shifted
- response time, to detect technical slowdowns

For each indicator, set a threshold and decide who is notified when it is crossed and what they do.

## User feedback mechanism

Clinicians notice errors that no automated check will catch, so make it easy for them to report one. A "report error" button in the interface, a short structured form (was the output correct, and what was the actual finding?) and a link to the hospital's incident reporting system for serious errors cover most needs. Review the reports regularly: recurring patterns in them point directly to what needs fixing.
