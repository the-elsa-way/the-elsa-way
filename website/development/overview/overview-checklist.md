(development-overview-checklist)=
# Development phase checklist

## Data
- [ ] Training data reflects the demographic and clinical diversity of the intended patient population
- [ ] Data sources documented with provenance (site, period, system, equipment)
- [ ] Preprocessing pipeline written as code and under version control
- [ ] Annotation guidelines written and applied consistently
- [ ] Agreement between annotators measured and documented
- [ ] Attributes needed for fairness analysis (such as age and sex) recorded, with a lawful basis
- [ ] Train, validation and test split made at patient level, with no leakage between sets

## Privacy and security
- [ ] Patient data pseudonymised or anonymised
- [ ] Role-based access controls in place, with access to patient records logged (NEN 7513)
- [ ] Lawful basis under GDPR Art. 6 and condition under Art. 9 documented, and DPIA completed
- [ ] Re-identification risk assessed, including for any model you plan to share
- [ ] Threat model written: which attacks are in scope and which measures address each

## Model
- [ ] Model architecture and training procedure documented
- [ ] Hyperparameters and training configuration under version control
- [ ] Simple baseline model (clinical rule or logistic regression) trained and compared
- [ ] Performance measured on the validation set
- [ ] Calibration checked and, if needed, corrected
- [ ] First subgroup performance analysis completed
- [ ] Uncertainty quantification implemented or its absence justified
- [ ] Behaviour with missing or implausible inputs tested

## Human-AI interface
- [ ] Interface designed with input from representative users
- [ ] Mechanisms for human oversight, override and error reporting designed
- [ ] Explanations integrated where users said they need them

## Documentation
- [ ] Model card or equivalent technical documentation drafted
- [ ] Data documentation (datasheet) drafted
- [ ] Version control repository in use for code, configuration and documentation
- [ ] Design decisions and their reasons recorded
