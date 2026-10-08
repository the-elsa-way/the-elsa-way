(evaluation-overview-checklist)=
# Evaluation phase checklist

## Evaluation planning
- [ ] Evaluation plan written down before you look at the test data
- [ ] Primary metric and success threshold defined
- [ ] Subgroups for the fairness analysis listed in advance
- [ ] Comparator defined (current practice, an existing score or an earlier model)

## Technical performance
- [ ] Primary metrics measured on a held-out test set
- [ ] Calibration (agreement between predicted and observed risk) assessed and reported
- [ ] Confidence intervals reported alongside point estimates
- [ ] Performance compared with the comparator

## External validation
- [ ] Tested on at least one external dataset, preferably from another hospital
- [ ] Differences in performance between sites documented
- [ ] Known causes of those differences reported

## Fairness
- [ ] Performance reported separately by age, sex and other relevant patient characteristics
- [ ] Uncertainty of subgroup differences reported (confidence intervals)
- [ ] Clinical relevance of subgroup differences assessed
- [ ] Effect of any bias correction evaluated

## Usability
- [ ] Usability tested with representative users from each user group
- [ ] Satisfaction and acceptance measured with a validated questionnaire
- [ ] Task performance measured with and without the AI

## Clinical utility
- [ ] Prospective evaluation in practice planned or completed (silent mode, then an impact study)
- [ ] Benefit to patients measured
- [ ] Safety assessed (adverse events, cases of over-reliance on the AI)

## Robustness
- [ ] Performance tested under realistic variation in input data
- [ ] Performance on edge cases documented

## Explainability
- [ ] Explanations checked for faithfulness to the model
- [ ] Explanations evaluated with clinical end users

## Reporting
- [ ] Results written up following the relevant reporting guideline (TRIPOD+AI, CLAIM, STARD-AI and so on)
- [ ] Study registered, where applicable
- [ ] Negative results reported alongside positive ones
