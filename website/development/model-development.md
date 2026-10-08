(development-model-development)=
# Model development

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **General recommendation 3**: put measures in place against the AI risks identified during design, starting from a baseline model; and **Robustness recommendation 2**: train with data that reflects real-world variation {cite}`lekadir2025futureai`.
:::

A model that ranks patients well can still give risk estimates that are too high or too low, or fail quietly on patients unlike those it was trained on. Before clinical use you need to know whether its probabilities can be taken at face value and how it behaves under realistic conditions.

```{figure} ../figures/machine-learning.jpg
:name: machine-learning
:alt: Illustration of machine learning showing data flowing into a model that learns patterns and produces outputs.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

:::{admonition} Running case: sepsis early warning
:class: note
In this fictional example, a hospital builds a model that estimates sepsis risk every hour from its electronic health record (EHR). Before training anything complex, the team scores the same patients with the early warning score the wards already use and with a logistic regression on a few vital signs. A more complex model has to beat both clearly to justify the extra work of explaining and maintaining it.
:::

## Model selection

Simpler models such as logistic regression or a small decision tree let a clinician see which inputs drive a prediction. Deep learning models can perform better on images and free text, but you then need separate methods to explain their output, and those explanations are approximations.

Compare every candidate with a baseline (see [addressing AI risks](addressing-ai-risks.md)). The most useful baseline is often what clinicians already do, such as an existing score, because the question is whether the AI adds anything to current care.

## Training procedure

Record everything you would need to train the same model again, and keep it under version control:

- Model architecture and configuration
- Optimiser, learning rate schedule and batch size
- Number of training epochs and early stopping criteria
- Preprocessing steps applied before training
- Random seeds
- Hardware and software environment

:::{tip}
Experiment tracking tools such as MLflow or Weights & Biases, or a plain log file, can record the settings and results of every training run. You can then trace exactly how the final model was produced.
:::

## Calibration

A model is **calibrated** when its predicted probabilities match how often the outcome happens: of 100 patients given a 20% sepsis risk, about 20 should develop sepsis. This differs from discrimination, how well the model ranks patients with the outcome above those without, often reported as the AUC (area under the ROC curve; 0.5 is chance, 1.0 is perfect ranking). A model with a high AUC can still overstate risk, causing needless alerts, or understate it, falsely reassuring staff.

Check calibration with a reliability diagram (predicted against observed risk in groups of patients) and the expected calibration error (ECE, the average gap between the two). You can rescale a poorly calibrated model's outputs after training: Platt scaling fits a logistic curve to them, isotonic regression a stepwise one. Fit the rescaling on the validation set, never on the test set.

## Uncertainty quantification

Calibration describes reliability on average; uncertainty estimates describe a single prediction. Three common methods:

- **Ensembles**: train several models and treat disagreement between them as uncertainty
- **Monte Carlo dropout**: repeatedly switch off random parts of a neural network at prediction time and see how much the output varies
- **Conformal prediction**: give a range or set of answers that contains the true answer with a chosen probability, such as 90%, if new patients resemble the calibration data

Decide with users how to show uncertainty; a number between 0 and 1 means little on a busy ward. One option is a message such as "insufficient data for a reliable score" when key observations are missing.

## Avoiding common pitfalls

Shortcut learning happens when a model uses a pattern that predicts the label in your data but has no clinical meaning. In EHR data, the timing of a lab order can reveal that a doctor already suspected sepsis; in imaging, a scanner label on the image can do the same. Check which inputs drive predictions and compare performance across sites and wards.

For data leakage, see [data collection and management](data-collection.md). Against overfitting, watch the validation loss during training. Use the validation set to compare models and tune settings, and keep a separate held-out test set (data that plays no part in training or model choice) for one final performance estimate at the end.
