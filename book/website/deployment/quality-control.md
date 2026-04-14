(deployment-quality-control)=
# Quality Control

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 3**: Define mechanisms for quality control of AI inputs and outputs.
:::

Once deployed, the AI system requires ongoing quality control — mechanisms to detect and respond to problems with the data flowing into the system, the outputs it produces, and the clinical decisions it influences.

## Input quality control

The AI's output quality is bounded by its input quality. Monitor for:

- **Missing data**: fields the model depends on that are absent
- **Out-of-range values**: inputs outside the distribution the model was trained on
- **Acquisition failures**: imaging artefacts, incomplete scans, corrupted files
- **Data format errors**: DICOM metadata inconsistencies, coding errors in EHR data
- **Unexpected input distributions**: statistical drift in input features that may signal population or equipment changes

Implement automated checks that flag anomalous inputs for human review before they are passed to the AI.

## Output quality control

Monitor AI outputs for:

- **Implausible outputs**: predictions outside the range of clinical plausibility (e.g., a segmentation that covers the entire image)
- **Extreme confidence**: outputs with unusually high or low confidence that may indicate model instability
- **Systematic errors**: patterns in errors that suggest a systematic failure mode (e.g., all errors on a specific scanner)

Implement postprocessing sanity checks:
- Anomaly detection on AI output distributions
- Range checks on quantitative outputs
- Consistency checks (e.g., AI report and imaging findings should be compatible)

## Continuous quality monitoring

Establish a dashboard that tracks key quality indicators over time:

- Volume of cases processed (detecting outages)
- Distribution of AI outputs (detecting drift in output distribution)
- User override rate (increasing overrides may signal loss of user trust or model degradation)
- Alert or flag rate (systematic changes may signal distribution shift)
- Response time (detecting performance degradation)

Set alert thresholds with defined escalation procedures: who is notified, and what action they take.

## User feedback mechanism

Provide clinicians with a simple mechanism to flag errors in AI outputs:

- A "report error" button in the AI interface
- A structured feedback form (was this correct? What was the actual finding?)
- Integration with the incident reporting system for serious errors

Regularly review error reports. Patterns in reported errors are among the most actionable signals for model improvement.
