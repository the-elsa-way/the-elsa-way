(deployment-governance-accountability)=
# Governance and accountability

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Traceability recommendation 6** {cite}`lekadir2025futureai`: set up structures to govern the AI tool.
:::

Governance settles who may change the tool, who watches its performance, who acts when it fails and who answers for it. Dutch hospitals already govern medical technology under the Convenant Veilige Toepassing van Medische Technologie in de medisch specialistische zorg (an agreement on the safe use of medical technology in hospital care), and an AI tool can fit into that structure.

```{figure} ../figures/open-governance.jpg
:name: open-governance
:alt: Illustration of open governance showing transparent structures and accountability mechanisms with multiple stakeholders participating in oversight.
The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.
```

## Why governance matters

When an AI tool contributes to a clinical error, several questions arise at once. Was the output wrong? Did the clinician check it carefully enough? Was the tool used in a setting it was not validated for? Was the user trained? Was the model version up to date?

If nobody owns these questions, the answers default to the person closest to the patient. The nurse who acted on an alert ends up explaining the decision in a complaint procedure, while nobody is responsible for the alert threshold that produced it. The underlying fault is not reported or fixed, and the same failure can happen again.

:::{admonition} Running case: sepsis early warning
:class: note
In this book's fictional running case, the hospital's sepsis tool has a system owner in the data science team, a clinical lead from internal medicine, the data protection officer (*functionaris gegevensbescherming*, FG) and the clinical physics department, which treats it like other medical technology. Any change to the alert threshold goes to the AI governance committee before it reaches the wards.
:::

## Key governance roles

Name a person for each role before go-live:

| Role | Responsibilities |
|---|---|
| **AI system owner** | Technical functioning and regulatory compliance of the tool |
| **Clinical lead** | Whether the tool is used appropriately in care; first contact for clinical concerns |
| **Data protection officer** | Compliance with data protection law; access to patient data |
| **Quality and safety lead** | Monitoring, audits and incident reporting |
| **Ethics advisory role** | Advice on fairness, transparency and patient rights |
| **User representatives** | Clinicians and, where possible, patient representatives with a formal advisory role |

## Governance structures

Three structures carry most of the work. An AI governance committee, with clinical, technical, legal and patient members, meets at set intervals to review monitoring reports and decide on significant changes. An incident reporting route lets clinicians and patients report concerns about AI outputs and sends each report to both the quality and safety lead and the system owner. A change management process reviews every proposed model update, workflow change or extension to new wards or patient groups before it is put into practice.

:::{include} ../toolbox/_generated/passages/deployment-governance-accountability-structures.md
:::

## Accountability under the EU AI Act

The EU AI Act {cite}`euaiact2024` splits responsibilities between **providers**, who develop a system and place it on the market or put it into service, and **deployers**, who use it in their professional work. For high-risk systems, providers answer for the design, the performance claims and the technical documentation. Deployers answer for using the tool within its intended purpose, assigning human oversight to competent staff and monitoring its operation (Art. 26). Both have incident reporting duties. A hospital that builds and uses its own tool is both provider and deployer, so your governance structures must assign both sets of tasks and record who holds them.

## Patient rights and transparency

Under the WGBO, the Dutch law on medical treatment contracts, a care provider must inform the patient about proposed examinations and treatment (Civil Code Art. 7:448) and needs the patient's consent (Art. 7:450). Decide as an institution how and when clinicians tell patients that an AI tool contributed to their care.

The GDPR {cite}`gdpr2016` gives patients the right not to be subject to a decision based solely on automated processing that has legal or similarly significant effects (Art. 22). Where such a decision is allowed, safeguards include the right to human intervention, to give one's view and to contest the decision, and patients must receive meaningful information about the logic involved (Arts. 13(2)(f), 14(2)(g) and 15(1)(h)). If a clinician genuinely reviews the AI output and makes the decision, Art. 22 does not apply, but explaining the tool's role to patients is still good practice.

The EU AI Act adds a right to an explanation of an individual decision (Art. 86), but only for people affected by a deployer's decision based on an Annex III high-risk system with legal or similarly significant effects. A medical device that is high-risk only through Annex I, such as the running case's sepsis tool once CE-marked, does not fall under it.

Set up procedures for patients to use these rights, and make sure clinical staff know how to respond.
