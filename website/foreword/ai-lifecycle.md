(foreword-ai-lifecycle)=
# The AI Lifecycle in Healthcare

The ELSA Way is structured around a cyclical AI development lifecycle with four interconnected phases:

```{figure} ../figures/ai-lifecycle.svg
:name: ai-lifecycle
:alt: Diagram showing four phases in a cycle: Design, Development, Evaluation, Deployment
The AI development lifecycle as used in The ELSA Way.
```

## The four phases

### 1. Design
*Stakeholders: Doctors, ethicists, legal experts, patients*

The design phase is where problems are scoped, stakeholders engaged, and foundations laid. Key activities include defining the clinical need, identifying intended users, planning data collection, conducting ethical review, and establishing a risk management process. Mistakes made here (wrong problem definition, excluded stakeholders, underrepresented populations in planned datasets) propagate through the entire lifecycle.

### 2. Development
*Stakeholders: Developers, data scientists, researchers*

The development phase covers building the AI system: collecting and curating data, training models, implementing privacy and security measures, and designing the human-AI interface. ELSA considerations here include checking that training data is representative and fairly labelled, implementing privacy-preserving techniques, and documenting all design decisions for traceability.

### 3. Evaluation
*Stakeholders: Clinicians, patients, ethicists*

Evaluation goes beyond measuring accuracy on a held-out test set. It encompasses external validation on independent datasets and clinical sites, fairness assessment across demographic subgroups, usability testing with real end users, clinical utility and safety trials, robustness to real-world data variations, and explainability evaluation. Reporting should follow established guidelines such as TRIPOD-AI {cite}`tripodai2024`.

### 4. Deployment
*Stakeholders: Hospitals, policy makers, regulators*

Deployment is not the end of the process. It is the beginning of operation. This phase covers integration into existing clinical workflows, quality control mechanisms, continuous monitoring for performance drift, periodic auditing, logging, staff training, regulatory compliance (MDR/IVDR {cite}`mdr2017`, EU AI Act {cite}`euaiact2024`), and governance structures that assign accountability.

## Why a cycle, not a waterfall

The lifecycle is **iterative**. Findings from evaluation feed back into design and development. Monitoring in deployment identifies new risks that trigger re-evaluation. Patient feedback at deployment can reshape the problem definition in the next design iteration.

Real-world evidence gathered during deployment is often the most valuable, and the most underused, input for improving AI systems in healthcare.
