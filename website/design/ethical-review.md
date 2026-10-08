(design-ethical-review)=
# Ethical review and approval

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 6** (G6): investigate and address application-specific ethical issues.
:::

Whether your AI project needs an accredited ethics committee, a local review or neither depends on what you do with patients and their data. Alongside those formal approvals, your team should work through the ethical risks of what you are building.

```{figure} ../figures/ethics-committee.jpg
:name: ethics-committee
:alt: Illustration of an ethics committee reviewing a research proposal, with people discussing ethical considerations around a table.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## What ethical review is

Ethical review asks whether a project respects the autonomy, dignity and rights of patients and participants, keeps harm low and benefit high, shares benefits and risks fairly, and is open and accountable. For AI, it covers two things: the use of patient data during development, and the clinical use of the finished tool.

## What requires which review

Rules differ by country. In the Netherlands, the dividing line is the Medical Research Involving Human Subjects Act (WMO).

| Situation | Review needed in the Netherlands |
|---|---|
| Research in which people are subjected to procedures or have to follow rules of behaviour, for example a prospective study that collects extra measurements or a trial that changes care based on the tool | WMO research: review by an accredited medical research ethics committee (METC), under oversight of the CCMO |
| Research on existing data only, such as retrospective EHR data for model development | Usually non-WMO research: the institution's local review procedure, plus a legal basis for the data (see [legal and regulatory considerations](legal-regulatory.md)) |
| Putting a CE-marked tool, or a tool made under the MDR in-house exemption, into routine care | Not research, so no METC; the hospital's own governance for introducing medical technology, for example under the Convenant Veilige Toepassing van Medische Technologie in de medisch specialistische zorg |
| Development on fully anonymised public datasets or synthetic data | Often no formal review, but record your reasoning |

If you are unsure, ask your institution's METC or research office early. They can tell you whether your study falls under the WMO, and a late answer can stall the whole project.

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis project, model development uses retrospective EHR data only. The hospital's local committee reviews it as non-WMO research. If the team later runs a study in which alerts change patient care, that study falls under the WMO and goes to an accredited METC. A silent-mode pilot, where the model runs in the background and nobody sees its alerts, may stay non-WMO; the METC decides. The final go-live is not research and goes through the hospital's medical technology governance. One ethical question the team logged early: if nurses come to rely on alerts, what happens to their own vigilance during an EHR outage?
:::

## Application-specific ethical issues

Healthcare AI raises ethical questions beyond standard research ethics. Work through them at the design stage.

| Ethical concern | Questions to ask |
|---|---|
| Autonomy | Does the tool undermine patients' ability to make informed decisions? Do patients know it is used? |
| Discrimination | Could the tool give worse results for some groups? Why? |
| Consent | What do patients need to know, and agree to? Does existing consent or a legal exception cover secondary use of their data? |
| Accountability | When the tool is wrong, who is responsible? |
| Dependency | Will the tool create a dependency that is hard to reverse? What happens if it fails or is withdrawn? |
| Loss of human contact | Does the tool reduce personal contact in care in ways that matter to patients? |
| Environmental cost | What energy and carbon does training and running the tool cost? |

:::{tip}
The **ELSA Scan** {cite}`vanhilten2025elsascan` is a list of 25 questions on ethical, legal and social aspects of a project. Wageningen University & Research developed it for AI in the agri-food sector, not for healthcare. Many of its questions and its approach to involving stakeholders can still help a healthcare team find issues early, but it has not been tested in healthcare.
:::

:::{include} ../toolbox/_generated/passages/design-ethical-review-issues.md
:::

## Working with ethics committees

- Contact the committee before you write the full application.
- Ask which type of review applies to your project.
- Prepare a short lay summary of what the tool does and what could go wrong.
- Describe your data governance: storage, access control and data minimisation.
- Say what will happen to participants' or patients' data when the project ends.
