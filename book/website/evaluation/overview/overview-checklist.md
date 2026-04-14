(evaluation-overview-checklist)=
# Evaluation Phase Checklist

## Evaluation planning
- [ ] Evaluation plan pre-specified (before looking at test data)
- [ ] Primary metric and success threshold defined
- [ ] Subgroups for fairness analysis pre-specified
- [ ] Comparison benchmark defined (standard of care, previous AI, clinical rule)

## Technical performance
- [ ] Primary metrics measured on independent test set
- [ ] Calibration assessed and reported
- [ ] Confidence intervals reported (not just point estimates)
- [ ] Performance compared to benchmark

## External validation
- [ ] Tested on at least one external dataset (different site, if possible)
- [ ] Performance variation across sites documented
- [ ] Known sources of performance variation reported

## Fairness
- [ ] Performance disaggregated by age, sex, and other relevant protected attributes
- [ ] Statistical significance of subgroup differences assessed
- [ ] Clinical significance of subgroup differences assessed
- [ ] Bias correction measures evaluated

## Usability
- [ ] Usability testing conducted with representative users (≥5 per user group)
- [ ] User satisfaction and acceptance measured (validated questionnaire)
- [ ] Task performance measured (with and without AI)

## Clinical utility
- [ ] Clinical evaluation plan completed
- [ ] Benefit to patients demonstrated or quantified
- [ ] Safety profile assessed (adverse events, automation bias incidents)

## Robustness
- [ ] Performance tested under real-world input variations
- [ ] Performance on edge cases documented

## Explainability
- [ ] Explanations evaluated for accuracy and faithfulness to model
- [ ] Explanations evaluated with clinical end users

## Reporting
- [ ] Results written up according to applicable reporting standard (TRIPOD-AI, CLAIM, etc.)
- [ ] Study registered (if applicable)
- [ ] Negative results reported alongside positive
