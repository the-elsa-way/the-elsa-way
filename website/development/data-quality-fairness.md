(development-data-quality-fairness)=
# Data quality and fairness

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Fairness recommendation 2**: collect information on individuals' attributes and on data provenance. It also prepares for **Fairness recommendation 3**: evaluate bias and correct it where needed, which FUTURE-AI places in the evaluation phase {cite}`lekadir2025futureai`.
:::

A model learns whatever patterns are in its training data, including gaps and historical inequalities. If one group of patients is under-represented, or their records are less complete, the model can work well on average and poorly for them. For that reason this chapter treats data quality and fairness together.

## Data quality dimensions

Assess your training data on each of these dimensions:

| Dimension | Questions |
|---|---|
| Completeness | Are values missing? At random, or more often for certain groups, wards or times of day? |
| Accuracy | Are the labels correct? Are annotation guidelines applied consistently? |
| Consistency | Are the same cases recorded and labelled the same way across annotators, wards and sites? |
| Timeliness | Does the data reflect current practice, or have protocols, assays or documentation changed since? |
| Representativeness | Does the mix of patients match the population where the system will be used? |

## Assessing representation

Describe your training data in three ways: demographic (age, sex, and ethnicity or socioeconomic status where recorded and lawful), clinical (disease severity, subtype, other conditions) and technical (site, ward, equipment, measurement protocol). Compare each with the population where the system will be used and record the differences you find.

Collecting attributes such as ethnicity is sensitive. They are special category data under the GDPR, and some may not be in your records at all. Decide with your data protection officer which attributes you may collect and on what basis {cite}`gdpr2016`. For systems that will become high-risk under the EU AI Act, Art. 10(5) allows providers to process special category data to detect and correct bias, under strict safeguards {cite}`euaiact2024`.

## Bias detection in training data

:::{admonition} Running case: sepsis early warning
:class: note
In this fictional example, the hospital's team counts observations per patient per hour and finds that patients on two wards, and all patients at night, have fewer recorded vital signs. A model trained on this data may give these patients less accurate scores. The team records the pattern, adds the time of day and ward to the attributes it will analyse, and plans a subgroup check for the evaluation phase.
:::

Look at three things. First, the distribution of labels across groups: a difference can reflect real differences in disease, or historical differences in who was tested and diagnosed, and you need to know which. Second, the distribution of inputs: the model may use an input as a stand-in (a proxy) for group membership, such as postcode for income. Third, missing data: in healthcare, data is rarely missing at random, because what gets measured depends on what clinicians suspect and how busy the ward is.

:::{include} ../toolbox/_generated/passages/development-data-quality-fairness-detection.md
:::

## Bias correction techniques

When you find a bias, several technical measures can reduce it:

- **Resampling**: include more examples from under-represented groups, or fewer from over-represented ones
- **Reweighting**: give errors on under-represented groups more weight during training
- **Data harmonisation**: put features or images from different sites on a common scale
- **Fairness-aware training**: add a penalty to the training objective for performance differences between groups
- **Synthetic data**: generate artificial examples for under-represented groups

:::{warning}
None of these measures fix data that was collected from the wrong population. Document the problem and the correction, and test in the evaluation phase whether the correction worked (see [fairness and bias](../evaluation/fairness-bias.md)).
:::

:::{include} ../toolbox/_generated/passages/development-data-quality-fairness-correction.md
:::
