(development-overview)=
# Development overview

During development you turn the design-phase decisions into a working AI system: you manage the data, train the model, protect patient privacy, design the interface for clinicians and document what you did.

## Prerequisites

| Prerequisite | Importance | Level |
|---|---|---|
| Completed design phase checklist | Necessary | n/a |
| Data access agreements in place | Necessary | n/a |
| Approval from an ethics committee or local review board, if your project needs one (see [ethical review](../design/ethical-review.md)) | Necessary if applicable | n/a |
| Understanding of machine learning | Necessary | Intermediate |
| Understanding of GDPR and data governance | Helpful | Beginner |

## Learning outcomes

This section has seven chapters. When you have worked through them, you should be able to:

- Collect training data that represents the patients and settings where the system will be used, and record where every data point came from
- Check data quality and the representation of patient groups, and choose a bias correction where one is needed
- Apply pseudonymisation, access control and logging that meet the GDPR and Dutch healthcare security standards
- Train a model, compare it with a simple baseline and check that its risk estimates are calibrated (a predicted 20% risk should match about 20% observed events)
- Design how the output reaches clinicians so that they can review, question and override it
- Keep the model card, data documentation and code history that later evaluation and regulatory review depend on
