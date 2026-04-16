(development-overview-checklist)=
# Development Phase Checklist

## Data
- [ ] Training data reflects demographic and clinical diversity of intended patient population
- [ ] Data sources documented with provenance information
- [ ] Preprocessing pipeline documented and version-controlled
- [ ] Annotation guidelines written and applied consistently
- [ ] Inter-annotator agreement measured and documented
- [ ] Protected attributes recorded for fairness monitoring
- [ ] Data split (train/val/test) prevents leakage

## Privacy and security
- [ ] Patient data pseudonymised or anonymised
- [ ] Access controls implemented (role-based, audit-logged)
- [ ] Applicable data protection regulations complied with
- [ ] Re-identification risk assessed

## Model
- [ ] Model architecture and training procedure documented
- [ ] Hyperparameters and training configuration version-controlled
- [ ] Baseline performance metrics measured on validation set
- [ ] Initial subgroup performance analysis completed
- [ ] Uncertainty quantification mechanism implemented or evaluated

## Human-AI interface
- [ ] Interface designed with input from representative users
- [ ] Mechanism for human oversight and override designed
- [ ] Explainability outputs integrated where required

## Documentation
- [ ] Model card or equivalent technical documentation completed
- [ ] Data sheet or data documentation completed
- [ ] Version control repository established
- [ ] All design decisions and rationale documented
