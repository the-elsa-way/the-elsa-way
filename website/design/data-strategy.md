(design-data-strategy)=
# Data strategy

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Robustness recommendation 1** (R1): define sources of data variation from an early stage. It builds on the settings you defined under **Universality recommendation 1** (Un1). Testing the model on external datasets or at other sites (Un3) happens in evaluation, but you need to plan for it now.
:::

A data strategy says which data you will use, where it comes from, who labels it and how you will make it represent the patients the tool will serve. Gaps found during development are much harder to fix than gaps found on paper.

```{figure} ../figures/data-management-plan.jpg
:name: data-management-plan
:alt: Illustration showing a data management plan with components including data collection, storage, access, and long-term preservation.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## The representative data problem

A model trained on data that leaves out some groups of patients will perform worse for those groups. In healthcare this is common. Clinical datasets over-represent patients from high-income countries, from university hospitals and from majority ethnic groups. Differences in equipment and protocols between sites add technical variation that a model may not handle. Historical records also reflect past clinical practice, including its biases.

This is a fairness problem as well as a technical one: a tool that works well for some patients and poorly for others can widen existing gaps in health outcomes.

## Planning for data heterogeneity

Write down the sources of variation that apply to your use case. The four groups below come up in most projects.

| Source | Examples |
|---|---|
| Equipment | Manufacturer, model and software version; acquisition protocol (scanner settings, staining, lab assay); maintenance and calibration |
| Operators | Differences between annotators; differences in clinical practice between sites; experience of the staff who record or measure |
| Patients | Age, sex, ethnicity, socioeconomic status; disease subtype, severity and other conditions; regional differences in how common the disease is |
| Context | Emergency versus planned care; urban versus rural; resources available; time of day and staffing |

:::{admonition} Running case: sepsis early warning
:class: note
For the fictional sepsis model, the team listed: a planned switch to a new lactate assay; differences in how often wards record vital signs, with fewer observations at night; a change in the EHR's nursing documentation two years earlier; and different patient mixes on surgical and internal medicine wards. Each item became a check during development and a subgroup in evaluation. The team also agreed with a second hospital to test the model on its data later, and wrote that into the plan now so that data access would be ready in time.
:::

## Multi-site data collection

Data from a single site often gives a model that performs worse when tested elsewhere. Where you can, collect data from more than one site, using shared collection protocols and the same annotation guidelines. If you cannot share patient data between sites, federated learning (training a model at each site and combining only the model updates) is one option.

Even if you develop on data from one hospital, plan now for an external evaluation on data from another site. Arranging the data-sharing agreement and the legal basis takes months.

## Annotation and labelling

What the model learns depends on the labels. Decide who annotates: for clinical tasks, clinicians with the right expertise. Write annotation guidelines that say how to handle ambiguous cases. Measure agreement between annotators and record where they disagree, because high disagreement means uncertain labels. For some tasks, define how disagreements are resolved, for example by consensus or by an expert adjudicator. And accept that some reference standards are themselves uncertain: sepsis, for instance, has no single test, so the label depends on a definition you must choose and justify.

## Data minimisation

Collect only the data you need for the stated purpose. The GDPR {cite}`gdpr2016` requires this (Art. 5(1)(c)). Extra variables also bring extra work: each one needs cleaning, a legal basis and a check for bias. Ask for each variable which question it answers.

:::{include} ../toolbox/_generated/passages/design-data-strategy-minimisation.md
:::
