(future-ai-fairness)=
# Fairness

The fairness principle states that healthcare AI tools should maintain the same performance across individuals and data attributes. Differences in performance across demographic groups cause systematic inequity in clinical outcomes.

## Fairness recommendations

### F1: Define all sources of data heterogeneity

At the design phase, identify all sources of data heterogeneity relevant to your application:
- Equipment and acquisition protocol variation
- Site and geographical variation
- Operator variation
- Patient population variation (demographics, disease spectrum)

**→ See:** [Identifying Sources of Bias](../design/bias-sources.md), [Data Strategy](../design/data-strategy.md)

### F2: Collect information on individuals' and data attributes

Collect information on relevant individual attributes (age, sex, ethnicity, socioeconomic status) and data attributes (acquisition site, equipment) to enable bias monitoring.

Relevance to compliance:
- Research AI: recommended (+)
- Deployable AI: highly recommended (++)

**→ See:** [Data Collection and Management](../development/data-collection.md)

### F3: Evaluate fairness and debiasing measures

Evaluate the AI's performance separately for demographic subgroups and assess whether any performance disparities are clinically significant. If bias correction measures were implemented, evaluate their effectiveness.

Relevance to compliance:
- Research AI: recommended (+)
- Deployable AI: highly recommended (++)

**→ See:** [Fairness and Bias Assessment](../evaluation/fairness-bias.md)

## Practical guidance

When possible, use fairness metrics that match the clinical stakes:

- For screening tools: equal sensitivity across groups (missing disease is the critical harm)
- For treatment recommendation: equal precision or calibration (over-treating is costly)
- For risk scoring: equalised odds (both false positives and false negatives cause harm)

The choice of fairness metric requires clinical input — it is not a purely technical decision.

## Worked example: breast cancer detection

A mammography AI trained predominantly on data from European women may perform less well on women from South Asian or African backgrounds due to differences in breast density distribution and imaging characteristics. 

To address this:
1. Document the demographic composition of the training dataset (F1, F2)
2. During evaluation, disaggregate performance by ethnicity, age, and breast density (F3)
3. If disparities are found, investigate causes and apply resampling or bias correction where appropriate
4. Report disaggregated performance in publications
