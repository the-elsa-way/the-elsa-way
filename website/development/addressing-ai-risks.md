(development-addressing-ai-risks)=
# Addressing AI risks

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 3**: put measures in place against the AI risks identified during design. The measures you build here are tested later under **Robustness recommendation 3**: evaluate and improve robustness against real-world variation, which FUTURE-AI places in the evaluation phase {cite}`lekadir2025futureai`.
:::

The risk register from the design phase ([risk management](../design/risk-management.md)) lists what could go wrong. During development you build measures against those risks, and you add the new ones that appear once you work with real data and a real model.

```{figure} ../figures/data-hazard.jpg
:name: data-hazard
:alt: Illustration of a data hazard symbol highlighting the potential risks and harms that can arise from AI systems using sensitive or biased data.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Technical risk mitigation

### Robustness to distribution shift

Distribution shift means that the data a model sees in use differs from the data it was trained on: a different hospital, new equipment, a changed protocol or a different patient mix. Models often perform worse after such a shift. Measures that help:

- **Domain adaptation**: adjust the model with data from the site where it will be used
- **Domain generalisation**: train on data from several different sites so the model depends less on the features of any one of them
- **Data augmentation**: simulate the variation you expect in use (see [data collection and management](data-collection.md))
- **Transfer learning**: start from a model already trained on large, varied data and adapt it to your task

:::{admonition} Running case: sepsis early warning
:class: note
In this fictional example, the hospital's laboratory changed its lactate assay during the period covered by the training data, and it may change again after go-live. The team adds a check that compares the distribution of each lab input with the training data every week and alerts the data science team when it moves outside an agreed range. A change in nursing documentation in the EHR would show up in the same way.
:::

### Adversarial robustness

An adversarial attack changes an input in small, deliberate ways to make the model give a wrong answer. In imaging, such changes can be too small for a person to notice. Defences include training on such manipulated examples (adversarial training), checking inputs for values or patterns the model has not seen before, and using ensembles of models, which are harder to mislead than a single model.

### Handling missing or corrupted data

Clinical data in daily use is often incomplete or wrong: an observation not yet entered, a value in the wrong unit, a device that sends nothing. The system should handle missing inputs without crashing or producing a silent error, flag implausible inputs for human review, and lose accuracy gradually rather than suddenly as input quality drops. Test this explicitly by removing or corrupting inputs in your validation data.

## Baseline AI model

FUTURE-AI's practical steps for G3 start with implementing a baseline AI model and identifying its limitations, such as bias or poor generalisation {cite}`lekadir2025futureai`. A baseline is a simple reference model, for example an existing clinical rule or score, a logistic regression, or a published model for the same task. It shows how much each later design choice adds, and in the evaluation phase it becomes one of the reference methods you compare against (G4). See [evaluation planning](../evaluation/evaluation-planning.md).

## Security measures

Three attacks are specific to AI systems. In model extraction, someone queries the model many times and uses the answers to build a copy. In data poisoning, someone tampers with training data so the model learns harmful behaviour. In input manipulation, someone alters inputs to change the output. Write a threat model: a short document that lists which attacks are realistic for your system, who could carry them out, and which measure addresses each. Combine it with the hospital's NEN 7510 information security measures.
