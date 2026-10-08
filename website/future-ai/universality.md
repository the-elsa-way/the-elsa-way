(future-ai-universality)=
# Universality

A model built on one hospital's data learns that hospital's patients, devices and habits of recording. The universality principle asks that a healthcare AI tool also works outside the setting where it was built: for new patients, new users and, where relevant, new sites {cite}`lekadir2025futureai`. How far it needs to travel depends on where you intend to use it.

## Universality recommendations

### Un1: Define the intended clinical settings and how they differ

*Research `++`, deployable `++`.* During design, write down where the tool will be used: hospital wards, primary care, home care, one country or several. Then note what differs between those settings and could get in the way, such as end users, clinical definitions, equipment and IT infrastructure.

**→ See:** [Intended use and user requirements](../design/intended-use.md)

### Un2: Use community-defined standards

*Research `+`, deployable `+`.* Build on standards that others already use, so that your tool can read data from other systems and others can check your work. Examples are disease definitions from medical societies, terminologies such as SNOMED CT, data models such as OMOP, and interface standards such as DICOM for images and HL7 FHIR for exchanging health records. In the Netherlands, Nictiz maintains the zibs (Dutch health and care information models) and their FHIR profiles.

**→ See:** [Intended use and user requirements](../design/intended-use.md), [Clinical integration](../deployment/clinical-integration.md)

### Un3: Evaluate with external datasets and/or multiple sites

*Research `++`, deployable `++`.* Test the model on data it never saw during training, from a different source. Unless the tool is meant for a single centre, the paper also asks for clinical evaluation at several sites. If performance drops, try methods that adapt the model to the new setting and test them in turn.

**→ See:** [External and multi-site validation](../evaluation/external-validation.md)

### Un4: Evaluate and demonstrate local clinical validity

*Research `+`, deployable `++`.* Each new site has its own population, equipment, workflow and users. Before you rely on the tool there, test it on local data and check that it fits the local workflow. If it performs worse, recalibrate it (adjust its risk estimates to match local outcome rates) and test again.

**→ See:** [Local validation](../deployment/local-validation.md)

## Why performance drops at a new site

The main cause is *distribution shift*: the data at the new site differ from the training data, for example in patient mix, lab equipment or documentation habits. A model can also *overfit*, learning quirks of the training site that do not hold elsewhere. You design against both with representative data and standard formats, test with external data, and check again at each site and over time.

:::{admonition} Running case: sepsis early warning
:class: note
This example is fictional. The hospital develops its sepsis model on its own retrospective records, then validates it on data from a second hospital (Un3). Suppose the second hospital uses a different lab analyser and records observations less often. The team then checks calibration there (whether a predicted 20% risk means about 20 in 100 such patients develop sepsis) before anyone discusses sharing the tool. Before go-live on its own wards, it runs the model in silent mode, producing scores that no one acts on, to confirm local validity (Un4).
:::
