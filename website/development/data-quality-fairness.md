(development-data-quality-fairness)=
# Data Quality and Fairness

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Fairness recommendation 2**: Collect information on individuals' and data attributes; and **Fairness recommendation 3**: Evaluate potential biases and implement bias correction measures.
:::

Data quality and fairness are deeply linked. Biased training data produces biased models. High-quality data that is not representative produces models that work well for some patients and poorly for others.

```{figure} ../figures/fair-principles.jpg
:name: fair-principles
:alt: Illustration of FAIR data principles showing findability, accessibility, interoperability, and reusability as pillars of data quality.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Data quality dimensions

Assess your training data across multiple quality dimensions:

| Dimension | Questions |
|---|---|
| **Completeness** | Are there missing values? Are they missing at random, or systematically absent for certain groups? |
| **Accuracy** | Are labels correct? Are annotation guidelines applied consistently? |
| **Consistency** | Are the same cases handled the same way across annotators and sites? |
| **Timeliness** | Does the data reflect current clinical practice, or has practice changed since collection? |
| **Representativeness** | Does the distribution of the data match the target population? |

## Assessing representation

Measure the distribution of key covariates in your training data:

- **Demographic**: age distribution, sex distribution, ethnicity (where recorded)
- **Clinical**: disease severity, subtype, comorbidity profile
- **Technical**: site of origin, equipment, acquisition protocol

Compare these distributions against the expected distribution in the deployment population. Document any known discrepancies.

## Bias detection in training data

- **Label distribution**: are labels distributed differently across demographic groups? This may indicate historical clinical bias or genuine disease prevalence differences. Either way, both require understanding.
- **Feature distributions**: are the distributions of input features different across demographic groups in ways that the model might exploit as proxies?
- **Missing data patterns**: is data more likely to be missing for certain groups? Missing data is rarely missing at random in healthcare.

## Bias correction techniques

Where bias is identified, technical mitigation measures may include:

- **Resampling**: oversampling underrepresented groups, undersampling overrepresented groups
- **Reweighting**: assigning higher loss weight to underrepresented groups during training
- **Data harmonisation**: normalising images or features across acquisition sites
- **Bias-aware training objectives**: explicitly penalising performance disparities in the loss function
- **Synthetic data augmentation**: generating synthetic examples for underrepresented groups

:::{warning}
These techniques can help, but they do not solve the problem if the underlying data collection was fundamentally unrepresentative. Document both the problem and the mitigation, and test whether the mitigation worked during evaluation.
:::
