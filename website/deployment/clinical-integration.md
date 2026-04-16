(deployment-clinical-integration)=
# Integration into Clinical Workflows

Deploying an AI system means integrating it into the clinical workflow, a complex sociotechnical system that was not designed around it. Technical integration is the easier part; workflow integration is the harder one.

## Technical integration

### Interface standards
Use healthcare interoperability standards:
- **HL7 FHIR**: for EHR integration and structured data exchange
- **DICOM**: for medical imaging (including DICOM SR for structured reporting)
- **IHE profiles**: for imaging and clinical information exchange

### Infrastructure requirements
- Computing infrastructure: on-premise, cloud, or hybrid?
- Network bandwidth for imaging AI (large files)
- Latency requirements: does the AI need to respond within the clinical encounter, or can it run in batch?
- Availability requirements: what happens if the AI system is unavailable? Define fallback procedure.
- Security: integration should not introduce new attack surfaces into clinical IT systems

### Testing in the production environment
Test the integrated system in a staging environment that mirrors production before going live. Integration testing should include:
- End-to-end data flow (patient data in → AI output displayed to user)
- Failure modes: what happens if data is missing, malformed, or delayed?
- Performance under load: concurrent users and concurrent cases

## Workflow integration

### Mapping the current workflow
Before integrating, map the current workflow in detail:
- Who does what, in what order?
- What decisions are made at each step?
- What information is available at each decision point?
- Where does the AI fit in this sequence?

### Identifying disruption risks
AI integration can disrupt existing workflows in ways that reduce safety:
- Alert fatigue: too many low-priority AI notifications reduce attention to high-priority ones
- Workflow interruption: AI adding steps at a busy moment in the clinical encounter
- Documentation burden: AI outputs requiring additional documentation
- Responsibility confusion: ambiguity about whether the AI or the clinician is responsible for a finding

Address these risks in the integration design, not after deployment.

### The go-live process
Plan the go-live carefully:
- Staged rollout: start with a limited set of users and cases; expand as confidence grows
- Supervised operation: have an AI-knowledgeable team member available during early go-live
- Clear rollback criteria: pre-specify conditions under which the AI will be disabled
