(design-bias-sources)=
# Identifying Sources of Bias

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Fairness recommendation 1**: Define any potential sources of bias from an early stage; and **Fairness recommendation 2**: Collect information on individuals' and data attributes.
:::

Bias in AI systems does not arrive suddenly at evaluation. It is baked in at design, through choices about data, labels, and problem framing. Identifying potential bias sources at the design stage is the most cost-effective way to address them.

```{figure} ../figures/ai-fairness.jpg
:name: ai-fairness
:alt: Illustration representing AI fairness, showing scales and diverse data points to convey the concept of equitable outcomes across groups.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Types of bias in healthcare AI

### Historical bias
Medical data encodes historical clinical practices. If doctors historically under-diagnosed a condition in women, a model trained on historical data will replicate that under-diagnosis. Historical bias in labels is particularly insidious because the training signal itself is wrong.

### Representation bias
Datasets under-represent certain groups: ethnic minorities, elderly patients, patients with disabilities, patients from low-income settings, rare disease variants. A model trained on such data will perform worse for these groups.

### Measurement bias
Different equipment, protocols, and operators produce different data. A model trained predominantly on data from high-field MRI scanners will perform poorly on low-field scans, not because of patient characteristics but because of measurement differences.

### Labelling bias
Annotation reflects the knowledge, experience, and biases of the annotators. If annotators are predominantly from one clinical culture or demographic, their labels may not generalise.

### Proxy bias
An AI may learn to use proxies for protected attributes (postcode as a proxy for ethnicity; imaging artefacts as a proxy for equipment type). This can produce discriminatory outcomes even without explicit use of protected attributes.

## Identifying bias sources in your project

Work through the following questions at design time:

**Data**
- Which demographic groups are likely to be underrepresented in your training data?
- Are there equipment, protocol, or site differences that will create systematic performance differences?
- Are there temporal trends in the data that may create distribution shift?

**Labels**
- Who annotated the data? Are they representative of the diversity of clinical practice?
- What is the inter-rater agreement? Where disagreement is high, labels are uncertain.
- Is the "gold standard" itself affected by historical clinical bias?

**Problem framing**
- Are any features that correlate with protected attributes included in the input?
- Could the model use proxies for protected attributes to make predictions?
- Is the outcome you are predicting equitable across groups? (e.g., predicting healthcare utilisation may reflect access barriers, not health need)

## Protected attributes

Document the protected attributes relevant to your application. These typically include:
- Age, sex, gender
- Ethnicity, race
- Socioeconomic status
- Disability
- Geographic location (as a proxy for resource availability)

These attributes should be recorded where possible so that bias can be monitored during evaluation and deployment.

:::{warning}
In some jurisdictions, collecting certain protected attributes requires specific consent and legal basis. Check with your data governance team before adding these fields.
:::
