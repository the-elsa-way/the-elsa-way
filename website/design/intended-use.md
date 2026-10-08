(design-intended-use)=
# Intended use and user requirements

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Usability recommendation 1** (Us1): define intended use and user requirements from an early stage. It also covers **Universality recommendations 1 and 2** (Un1, Un2) and **Explainability recommendation 1** (E1).
:::

The intended use statement decides where a tool may be used and where it may not. Under the Medical Device Regulation, the manufacturer's stated intended purpose also determines whether the software is a medical device and which risk class it falls in. A clear statement protects patients from a tool applied to people or settings it was never tested on.

## Intended use statement

An intended use statement answers seven questions:

1. What does the AI tool do?
2. Who is the intended user (role, training, technical literacy)?
3. Which patients is it for (clinical indication, age group, exclusion criteria)?
4. In which clinical setting (primary care, hospital ward, specialist clinic) and with which resources?
5. At which point in the care pathway (screening, diagnosis, treatment planning, monitoring)?
6. What output does it give (a score, a flag, a segmentation, a recommendation)?
7. Which clinical decision does it support?

:::{admonition} Running case: sepsis early warning
:class: note
For the fictional sepsis tool, the draft statement reads: *"The tool estimates the hourly risk of sepsis in adult patients admitted to general wards, using vital signs, lab results and nursing observations from the EHR. It alerts the ward nurse and the physician on call when the risk exceeds a set threshold. It supports the decision to assess the patient for sepsis; it does not diagnose sepsis or recommend treatment. It is not intended for the emergency department, the ICU or patients under 18."*
:::

## User requirements

User requirements describe what people need in order to work with the system. Start with the roles: radiologists, nurses, GPs, or patients themselves. Ask what AI literacy you can assume and what training users will need. Find out where in their workflow the output appears and how much time it adds. Then decide what information the interface must show, in what format and on which device, and check language and accessibility needs.

:::{include} ../toolbox/_generated/passages/design-intended-use-requirements.md
:::

## Defining clinical settings and cross-setting variations

:::{admonition} FUTURE-AI
:class: tip
This supports **Universality recommendation 1** (Un1): define intended clinical settings and cross-setting variations.
:::

Tools are often built in one setting and used in another. A model trained on data from a large academic hospital may fail in a regional hospital or a GP practice. Settings differ in equipment (scanner makes and protocols, EHR systems and coding), in patients (age, disease prevalence, other conditions), in workflows (the same task done differently) and in resources (whether a specialist is available to check the output).

Document the settings the tool is meant for, and state where it has not been validated. Put this in the instructions for use, so that users know.

## Adjusting for user subgroups

Users in the same hospital can need different things from the same output. A ward nurse and an intensivist reading the same sepsis alert work at different points in the patient's care, have different time available and different familiarity with AI. Design for the users you have, group by group.

## Explainability needs of each user group

Some users need to know why the tool gave a particular output; others only need to know how reliable it is. Explainability means giving users information that helps them understand an output, for example which inputs most influenced a score. Ask each user group, early, whether they need an explanation, what they would use it for, and in what form. Write the answers down as requirements, so that the development team can choose a method and the evaluation team can test it with the same users.

For a deterioration alert, a ward nurse may want to see which observations changed (a rising heart rate, a new fever) to check the patient quickly, while a physician may also want the trend of the score over the past hours. Patients may ask for a plain-language explanation when an alert leads to a change in their care.

:::{tip}
Use community-defined standards where they exist (FUTURE-AI Un2): SNOMED CT, LOINC and ICD for clinical terms, DICOM for imaging, and HL7 FHIR for data exchange. In the Netherlands, Nictiz maintains the zibs (health and care information models) that map onto these standards. Standard terms make your tool easier to connect to other systems and to evaluate at other sites.
:::
