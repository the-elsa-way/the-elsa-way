# The ELSA Way

A community-driven handbook for developing AI responsibly in healthcare, built by the [ELSA AI Lab Northern Netherlands](https://elsa-ai.nl).

> **Vibe-coding experiment.** The current content of this book was generated entirely by [Claude Code](https://claude.ai/code) as a proof-of-concept. Chapter text, structure, citations, and figures were produced from the project brief, the FUTURE-AI framework, and the ELSA Way description without human review of the substance. This content is a scaffold, not authoritative guidance. Do not rely on it in practice.

## About

The ELSA Way aims to be a freely accessible, practical resource for everyone involved in building AI in healthcare: developers, clinicians, researchers, ethicists, policy makers, and patients. It covers the full AI development lifecycle across four phases: Design, Development, Evaluation, and Deployment.

The book is structured around the [FUTURE-AI framework](https://doi.org/10.1136/bmj-2024-081554) (Lekadir et al., BMJ 2025), which organises responsible AI into six principles: Fairness, Universality, Traceability, Usability, Robustness, and Explainability.

## Structure

```
website/
├── foreword/          Introduction, ELSA principles, lifecycle overview
├── pathways/          Role-specific reading guides
├── design/            Problem definition, ethics, data strategy, legal, risk
├── development/       Data collection, modelling, privacy, documentation
├── evaluation/        Validation, fairness, usability, reporting
├── deployment/        Clinical integration, monitoring, governance
├── future-ai/         FUTURE-AI principles mapped to chapters
└── community-handbook/ Contributing, governance, style guide
```

## Building the book

The book is built with [Jupyter Book](https://jupyterbook.org) (MyST) and managed with [uv](https://docs.astral.sh/uv/).

**Install dependencies**

```bash
uv sync
```

**Local preview** (live-reloading server)

```bash
make serve
```

**Build HTML**

```bash
make book
```

**Build with strict error checking**

```bash
make strict
```

**Clean build artefacts**

```bash
make clean
```

## Contributing

See the [Community Handbook](website/community-handbook/community-handbook.md) for contribution guidelines, style guide, and governance.

## Figures

Illustrations in `website/figures/` that originate from [The Turing Way](https://the-turing-way.netlify.app) are created by Scriberia with The Turing Way community and used under a [CC-BY 4.0 licence](https://creativecommons.org/licenses/by/4.0/).

> The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).

## License

- Content: [CC-BY-4.0](LICENSE-CONTENT.md)
- Code: [MIT](LICENSE-CODE.md)
