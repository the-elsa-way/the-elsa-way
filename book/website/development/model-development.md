(development-model-development)=
# Model Development

Building a model that is accurate is necessary but not sufficient. A clinically deployable model must also be well-calibrated, robust, interpretable where required, and documented thoroughly enough that someone else can reproduce and audit it.

## Model selection

Choose model architecture with trustworthiness in mind, not just performance:

- **Complexity vs. interpretability**: simpler models (logistic regression, decision trees) are more interpretable; complex deep learning models may outperform them but require explicit explainability mechanisms
- **Uncertainty quantification**: can the model express when it does not know? Calibrated confidence scores are important for clinical decision support
- **Baseline comparison**: compare against clinical rule-based approaches, not just other AI models — does AI add value over what clinicians already do?

## Training procedure

Document and version-control all aspects of the training procedure:

- Model architecture and configuration
- Optimiser, learning rate schedule, batch size
- Number of training epochs, early stopping criteria
- Data preprocessing steps applied before training
- Random seeds (for reproducibility)
- Hardware environment

:::{tip}
Use experiment tracking tools (e.g., MLflow, Weights & Biases, or even simple log files) to record hyperparameters and metrics for every training run. This makes it possible to trace exactly how the final model was produced.
:::

## Calibration

A model is **calibrated** if its predicted probabilities match empirical frequencies — a model that says "70% probability" should be right about 70% of the time. Poor calibration is common and clinically dangerous: over-confident AI may suppress legitimate clinical concern.

Measure calibration using reliability diagrams and the Expected Calibration Error (ECE). Apply post-hoc calibration (Platt scaling, isotonic regression) if needed.

## Uncertainty quantification

For clinical decision support, consider implementing mechanisms to quantify uncertainty:

- **Ensemble methods**: train multiple models; disagreement between them signals uncertainty
- **Monte Carlo Dropout**: approximate Bayesian inference using dropout at test time
- **Conformal prediction**: provides prediction sets with statistical coverage guarantees

Communicate uncertainty to users in a clinically meaningful way — a number between 0 and 1 is not self-evidently meaningful to a clinician.

## Avoiding common pitfalls

- **Shortcut learning**: models may learn spurious correlations (e.g., hospital-specific imaging artefacts, metadata tags) rather than clinically meaningful features. Investigate with subgroup analysis across sites.
- **Data leakage**: see [Data Collection and Management](data-collection.md)
- **Overfitting**: monitor validation loss; use held-out validation set that is never used for model selection
