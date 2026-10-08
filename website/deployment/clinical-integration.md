(deployment-clinical-integration)=
# Integration into clinical workflows

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 2** {cite}`lekadir2025futureai`: design how clinicians and the AI work together, and how people keep oversight of its outputs.
:::

A ward already runs on a fixed rhythm of observation rounds, handovers, phone calls and EHR screens, and none of it was designed with your AI tool in mind. Connecting the tool to the data is the easier half of integration. Fitting its output into what nurses and doctors do, at the moment they need it, is the harder half.

:::{admonition} Running case: sepsis early warning
:class: note
In this book's fictional running case, a hospital's sepsis model reads data from the electronic health record (EHR) every hour and alerts the ward nurse and the physician on call when a patient's risk score crosses a threshold. The team must decide where the score appears in the EHR, whether the alert goes to a phone or a screen, and how it works at night when one physician covers several wards.
:::

## Technical integration

### Interface standards
Use the interoperability standards your hospital systems already support. HL7 FHIR is the common standard for exchanging structured data with the EHR. In the Netherlands, Nictiz (the Dutch centre for health information exchange) maintains the zibs, standard information models for items such as vital signs and lab results, which are published as FHIR profiles; building on them makes it easier to move a tool to another hospital. For imaging AI, use DICOM (including DICOM SR for structured reports) and the relevant IHE profiles.

### Infrastructure requirements
Decide where the model runs (on the hospital's own servers, in the cloud or both) and check that the network can carry the data, which matters most for large image files. Agree on latency, meaning how quickly the tool must respond: within a consultation, or in a batch every hour. Define what staff do when the tool is unavailable, and make sure the connection does not open new routes for attacks on clinical IT systems.

### Testing in the production environment
Before go-live, test the integrated system in a staging environment, a copy of the live set-up without real clinical consequences. Test:
- the full data flow, from patient data entering the system to the output shown to the user
- failure modes: what happens when data is missing, malformed or late
- performance under load, with many users and cases at the same time

## Workflow integration

### Mapping the current workflow
Map the current workflow in detail before you change it. Record who does what and in which order, which decisions they make at each step and what information they have at that point. Only then decide where the AI output fits.

### Identifying disruption risks
An AI tool can make care less safe if it lands in the wrong place. Too many low-priority alerts lead to alert fatigue, where staff start ignoring all alerts, including the important ones. A tool that adds a step at a busy moment, or creates extra documentation, will be worked around. When it is unclear whether the AI or the clinician owns a finding, follow-up can fall between the two. Deal with these risks in the integration design, before go-live.

:::{include} ../toolbox/_generated/passages/deployment-clinical-integration-workflow.md
:::

### The go-live process
Start with a limited group of users or wards and expand as confidence grows. During the first weeks, have someone available who knows the tool well and can answer questions on the spot. Agree in advance on the conditions under which you will switch the AI off, and who makes that call.
