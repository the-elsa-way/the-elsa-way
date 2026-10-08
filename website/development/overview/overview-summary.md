(development-overview-summary)=
# Development phase summary

By the end of the development phase, you should have the following in place.

**Data**
- Training, validation and test sets that reflect the patients and settings of intended use, split at patient level
- Documented data sources, preprocessing steps and annotation protocols
- Privacy measures in place (pseudonymisation, access control, access logging)

**Model**
- A trained model with documented architecture, hyperparameters and training procedure
- Performance measured on the validation set and compared with a simple baseline model
- Calibration checked and a first fairness analysis across patient subgroups
- Tested behaviour for missing and implausible inputs, and a written threat model; the full robustness evaluation follows in the evaluation phase

**Human-AI interface**
- Interface prototypes designed and tested with representative users
- Mechanisms for human oversight and correction designed

**Documentation**
- Draft model card or technical documentation
- Data lineage documented
- Version control in place
- Design decisions and their reasons recorded
