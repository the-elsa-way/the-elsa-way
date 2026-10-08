(foreword-ai-lifecycle)=
# The AI lifecycle in healthcare

The ELSA Way divides the life of a healthcare AI tool into four phases that repeat: design, development, evaluation and deployment.

```{figure} ../figures/ai-lifecycle.svg
:name: ai-lifecycle
:alt: Diagram showing four phases in a cycle: Design, Development, Evaluation, Deployment
The AI development lifecycle as used in The ELSA Way.
```

## The four phases

### 1. Design
*Key people: clinicians, patients, ethicists, legal experts*

In design you define the clinical need and the intended users, plan the data, arrange ethical and legal review and start a risk management process. Mistakes made here, such as solving the wrong problem, leaving out a group of users or planning a dataset that misses part of the patient population, carry through every later phase.

### 2. Development
*Key people: developers, data scientists, researchers*

Development is where you collect and curate data, train models, put privacy and security measures in place and design how users will work with the tool. You check that the training data represent the patients the tool is meant for and are labelled consistently, and you record design decisions so that others can trace them later.

### 3. Evaluation
*Key people: clinicians, patients, researchers, ethicists*

A first estimate of performance comes from a *held-out test set*, data kept apart from training and used once at the end. Evaluation goes further: you validate the tool on data from other hospitals, compare performance across patient groups, test usability with real users, study clinical benefit and safety, and check how it copes with messy real-world data and whether its explanations help. Report the results using a guideline such as TRIPOD+AI {cite}`tripodai2024`.

### 4. Deployment
*Key people: hospital management, IT, clinicians, regulators*

Deployment starts the tool's working life. It covers integration into clinical work, checks on inputs and outputs, monitoring for falling performance, periodic audits, logging, staff training, compliance with the MDR or IVDR {cite}`mdr2017` and the EU AI Act {cite}`euaiact2024`, and governance that makes clear who is accountable.

## Why a cycle

Each phase feeds the others. Evaluation results send you back to design or development. Monitoring after go-live reveals new risks that call for a new evaluation. Feedback from patients and staff can change how you define the problem in the next round.

:::{admonition} Running case: sepsis early warning
:class: note
This example is fictional. A regional hospital in the Northern Netherlands wants to detect sepsis earlier on its adult wards. In design, it involves ward nurses, internists, the rapid response team and a patient advisory panel. In development, its data scientists and a university partner train a model on the hospital's own past records. In evaluation, they validate it on data from a second hospital and run it silently on live data. In deployment, alerts go to ward nurses and the physician on call, and monitoring shows whether performance holds after changes such as a new lab assay.
:::
