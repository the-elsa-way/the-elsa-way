(evaluation-reporting-transparency)=
# Reporting and transparency

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 2** (T2): document the AI tool throughout its lifecycle, including the results of its evaluations {cite}`lekadir2025futureai`.
:::

If a team publishes only its best metric, its most favourable subgroups or its successful sites, readers overestimate how well the model works. Hospitals then buy or deploy tools that fail, and patients bear the cost. Complete reporting lets others judge your results and lets the next team avoid your mistakes.

## International reporting guidelines

Reporting guidelines are checklists that tell you what a paper or report on a given kind of study must contain. Several exist for healthcare AI:

| Guideline | Use it for |
|---|---|
| TRIPOD+AI {cite}`tripodai2024` | Studies that develop or validate prediction models, including those using machine learning |
| CLAIM {cite}`claim2020`, updated in 2024 {cite}`claim2024` | AI studies in medical imaging |
| STARD-AI {cite}`stardai2025` | Diagnostic accuracy studies of AI |
| DECIDE-AI {cite}`decideai2022` | Early live clinical evaluation of AI decision support |
| SPIRIT-AI {cite}`spiritai2020` | Protocols for randomised trials of AI interventions |
| CONSORT-AI {cite}`consortai2020` | Reports of randomised trials of AI interventions |

Choose by study design. Several can apply at once: an imaging study that develops a prediction model may need both TRIPOD+AI and CLAIM. For the fictional sepsis model from this book's running case, the development and external validation follow TRIPOD+AI, and the silent-mode and early live evaluation follow DECIDE-AI.

:::{note}
PROBAST+AI is often mentioned alongside these guidelines but has a different purpose. It is a tool for assessing the risk of bias and the applicability of prediction model studies. Reviewers use it to judge published studies, and you can use it to check your own design before you start.
:::

:::{include} ../toolbox/_generated/passages/evaluation-reporting-transparency-standards.md
:::

## What to report

For **study design and data**, describe the training, validation and test datasets, their sizes (including per subgroup), the collection dates and sites, and the inclusion and exclusion criteria.

For **the model**, give enough detail on the architecture, training procedure, hyperparameters (settings chosen before training), model selection, software versions and computing environment for someone else to reproduce it.

For **performance**, report primary and secondary metrics with confidence intervals, calibration plots and measures, performance per pre-specified subgroup, and the comparison with your comparator.

For **limitations**, name known failure modes, populations in which the model has not been validated, data limitations such as missing attributes or historical bias, and limits on generalisability.

## Negative results

Journals publish positive results more readily than negative ones, and AI research is no exception. A model that did not work as hoped, or an evaluation that exposed an unexpected failure, is still useful to others working on the same problem. Report negative results alongside positive ones. If a journal will not take them, consider journals that publish negative results or a preprint server.

## Study registration

Register your evaluation study before you start, where you can:

- clinical trials: ClinicalTrials.gov or another registry in the WHO network, such as ISRCTN;
- observational studies and model evaluations: OSF or ISRCTN.

Registration makes it possible to tell planned (confirmatory) analyses from exploratory ones, and makes it harder to switch outcomes after seeing the results.
