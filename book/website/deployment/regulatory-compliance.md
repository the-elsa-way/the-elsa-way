(deployment-regulatory-compliance)=
# Regulatory Compliance

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 5**: Identify and comply with applicable AI regulatory requirements.
:::

Regulatory compliance does not end at market authorisation. Post-market obligations require ongoing activity to maintain compliance throughout the AI system's operational life.

## Post-market surveillance

Under EU MDR/IVDR and the EU AI Act, manufacturers of regulated AI systems must:

- Maintain a **post-market surveillance system** that proactively collects and analyses data on performance in real-world use
- Conduct a **Post-Market Clinical Follow-Up (PMCF)** study to collect clinical evidence after deployment
- Update the **technical documentation** and **clinical evaluation** when new evidence becomes available
- Report **serious incidents** to the competent authority within defined timelines (typically 15 days for serious incidents)
- Submit **Periodic Safety Update Reports (PSUR)** on a defined schedule

## EU AI Act post-deployment requirements

For high-risk AI systems, ongoing obligations include:

- **Post-market monitoring**: automatic collection of data on functioning; updates reported to the national competent authority
- **Incident reporting**: serious malfunctions or risks to health, safety, or fundamental rights must be reported
- **Fundamental rights impact assessment**: required for certain deployers in public sector contexts
- **Registration maintenance**: keep registration in the EU AI Act database up to date

## Model updates and regulatory implications

Updating a deployed AI model has regulatory implications. Whether an update requires a new conformity assessment depends on its scope:

- **Minor updates** (bug fixes, calibration adjustments): may be within the scope of the approved Predetermined Change Control Plan (PCCP)
- **Significant changes**: changes to intended purpose, clinical claims, or performance characteristics typically require new regulatory review

Establish a change management process that routes all model updates through a regulatory review step before deployment.

## Documenting compliance

Maintain a compliance register:

- Current regulatory status of the AI system
- Outstanding post-market obligations and their due dates
- Incident reports and their resolution
- Technical documentation update log
- Training and awareness activities for regulatory staff
