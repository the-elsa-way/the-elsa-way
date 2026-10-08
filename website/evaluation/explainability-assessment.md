(evaluation-explainability-assessment)=
# Explainability assessment

:::{admonition} FUTURE-AI
:class: tip
This chapter supports **Explainability recommendation 2** (E2): evaluate explanations with end users, for example whether they are correct and how they affect users' decisions {cite}`lekadir2025futureai`.
:::

Producing a heat map or a list of the most important features takes a few lines of code. Finding out whether that explanation reflects what the model did, and whether it helps a nurse or doctor decide better, takes a study. This chapter is about that study.

## Why explainability matters in healthcare

Explanations serve several groups. Clinicians use them to decide whether to trust an output: if the explanation matches clinical reasoning, that is some evidence the model uses sensible information; if it does not, the model may rely on a spurious pattern. Developers use them to find failure modes. If a lung model flags cancer because of a scanner artefact rather than a nodule, a faithful explanation will show this.

Patients and the law have a stake too. Under the GDPR, people must receive meaningful information about the logic involved in automated decisions about them (Arts. 13 to 15) {cite}`gdpr2016`. Under the EU AI Act, providers of high-risk systems must give deployers enough information to interpret the output (Art. 13), and people affected by decisions based on certain high-risk systems listed in Annex III have a right to an explanation (Art. 86) {cite}`euaiact2024`.

## Types of explanation

| Type | Examples | Suited to |
|---|---|---|
| Feature importance | SHAP values, LIME, attention weights | Tabular data such as EHR values: which inputs pushed the score up or down |
| Saliency maps | Grad-CAM, integrated gradients | Images: which regions influenced the output |
| Counterfactuals | "If the lactate had been normal, the score would have been below the threshold" | Showing what would change the result |
| Example-based | "This patient resembles these earlier patients" | Reasoning by analogy with known cases |
| Natural language | A written explanation of the output | Patient information and clinical reports |

SHAP (SHapley Additive exPlanations) and LIME (Local Interpretable Model-agnostic Explanations) estimate how much each input contributed to one prediction. Grad-CAM and integrated gradients do something similar for image pixels and show the result as a heat map. Which type works best depends on the clinical task, the user and the setting.

:::{admonition} Running case: sepsis early warning
:class: note
In the fictional sepsis case, ward nurses asked during design (E1) for the three main reasons behind each alert. The team shows SHAP-based contributions such as "respiratory rate up 8 per minute since the last measurement". In evaluation it checks whether these reasons match the model and whether nurses act differently because of them.
:::

:::{include} ../toolbox/_generated/passages/evaluation-explainability-assessment-types.md
:::

## Evaluating explanations: technical criteria

Start with four technical checks. Faithfulness asks whether the explanation reflects what the model computed; a heat map that looks plausible but does not match the model's actual decision process misleads users. Completeness asks whether the explanation covers all the factors that drove the output. Stability asks whether similar inputs get similar explanations: if two almost identical patients receive very different reasons, the explanations are unreliable. Sensitivity asks whether the explanation changes when the input changes in ways that should matter.

## Evaluating explanations: user studies

An explanation can pass every technical check and still not help users. Test with clinical end users in realistic scenarios:

- **Comprehension**: do users understand what the explanation tells them?
- **Trust calibration**: do explanations help users trust correct outputs and doubt incorrect ones, or do they increase reliance whatever the output?
- **Decision quality**: do users with explanations make better decisions than users without them?
- **Workload**: do explanations add more mental effort than users can afford in their work?

## Avoiding misleading explanations

:::{warning}
Poorly designed explanations can harm clinical decisions:
- explanations that look plausible but do not reflect the model can create unjustified confidence;
- complex explanations that users cannot read add workload without benefit;
- explanations that highlight irrelevant features can steer clinical reasoning in the wrong direction.
:::

Judge an explanation on two things: whether it is faithful to the model, and how it changes clinicians' decisions, rather than on how reasonable it looks.
