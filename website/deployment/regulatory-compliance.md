(deployment-regulatory-compliance)=
# Regulatory compliance

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 5** {cite}`lekadir2025futureai`: find out which AI regulations apply to your tool and meet them.
:::

In the EU, software that provides information for diagnostic or therapeutic decisions is a medical device, usually class IIa or higher under Rule 11 of the MDR {cite}`mdr2017`. A device of class IIa or higher reaches the market through CE marking after a conformity assessment by a Notified Body (an independent organisation designated by a national authority to check devices). That certificate starts a set of duties that last as long as the tool is in use. In the Netherlands, the Health and Youth Care Inspectorate (IGJ) supervises medical devices.

:::{admonition} Running case: sepsis early warning
:class: note
In this book's fictional running case, a hospital in the Northern Netherlands builds a sepsis risk model and uses it only on its own wards, under the MDR in-house exemption (Art. 5(5)). That requires an appropriate quality management system, a justification that no equivalent CE-marked device meets the need, documentation and a public declaration. If the hospital later shares the tool with other hospitals, it needs CE marking through a Notified Body, which also makes it a high-risk AI system under the EU AI Act from 2 August 2027.
:::

## Post-market surveillance

Under the MDR and IVDR {cite}`mdr2017,ivdr2017`, the manufacturer must keep a post-market surveillance plan for every device and use it to collect and analyse data on real-world performance. For most devices this includes post-market clinical follow-up (PMCF, MDR Annex XIV Part B), which can be a study but can also draw on registries, literature or routine data; the manufacturer may justify why it is not needed. For in vitro diagnostic devices the equivalent is post-market performance follow-up (PMPF). Update the technical documentation and clinical evaluation as new evidence comes in.

Report serious incidents to the competent authority immediately, and no later than 15 days after you become aware of them. Shorter limits apply in two cases: 2 days for a serious public health threat, and 10 days for a death or an unanticipated serious deterioration of health (MDR Art. 87). For class IIa and higher, the manufacturer writes a periodic safety update report (PSUR, MDR Art. 86); class I devices need a post-market surveillance report instead (Art. 85).

## EU AI Act obligations after go-live

Healthcare AI is not automatically high-risk under the EU AI Act {cite}`euaiact2024`. A medical device that needs a Notified Body assessment is high-risk through Art. 6(1) and Annex I, from 2 August 2027. A small set of health-related uses listed in Annex III, such as emergency patient triage, are high-risk through Art. 6(2), from 2 August 2026. The Commission's 2025 Digital Omnibus proposal would postpone some of these dates, so check the current status before you plan.

For a high-risk system, the provider runs a post-market monitoring system. Its plan is part of the technical documentation (Art. 72), so you do not send it to an authority as a separate report. Providers report serious incidents within 15 days of becoming aware of them, 10 days in case of death and 2 days for a widespread infringement or serious disruption of critical infrastructure (Art. 73). For medical devices that are high-risk through Annex I, most incidents go through MDR vigilance instead (Art. 73(10)). Deployers, such as a hospital using a bought-in tool, must use it according to the instructions, give oversight to competent staff, monitor its operation and keep the logs under their control for at least six months (Art. 26).

Two duties that are often mentioned apply only to Annex III systems. A fundamental rights impact assessment (FRIA, Art. 27) is required before first use, from deployers that are public bodies or private entities providing public services, and from deployers of systems for credit scoring or life and health insurance pricing. Registration in the EU database (Art. 49) also covers Annex III systems; medical devices are registered in EUDAMED under the MDR.

## Model updates and regulatory implications

Updating a deployed model can change what you have to do. Under the AI Act, a substantial modification needs a new conformity assessment. Changes that the provider planned in advance, assessed at the initial conformity assessment and described in the technical documentation do not count as substantial (Art. 43(4)). Recalibrating within a described procedure can fall in that category; a change to the intended purpose, the clinical claims or the expected performance does not. Under the MDR, changes to the design or intended purpose of a CE-marked device may also need Notified Body review. Send every model update through a regulatory review step before it reaches users.

## Documenting compliance

Keep a compliance register that records:

- the current regulatory status of the tool (CE certificate, or in-house exemption with its declaration)
- open post-market obligations and their due dates
- incident reports and how they were resolved
- a log of updates to the technical documentation
- training and awareness activities for staff with regulatory roles
