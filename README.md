# The ELSA Way

A community-driven handbook for developing AI responsibly in healthcare, built by the ELSA AI Lab Northern Netherlands. Read it at <https://the-elsa-way.github.io/the-elsa-way/>.

> **Vibe-coding experiment.** The current content of this book was generated entirely by [Claude Code](https://claude.ai/code) as a proof-of-concept. Chapter text, structure, citations, and figures were produced from the project brief, the FUTURE-AI framework, and the ELSA Way description without human review of the substance. Treat it as a scaffold rather than authoritative guidance, and do not rely on it in practice.

## About

The ELSA Way aims to be a freely accessible, practical resource for everyone involved in building AI in healthcare: developers, clinicians, researchers, ethicists, policy makers and patients. It follows the AI lifecycle through four phases: design, development, evaluation and deployment.

The book is structured around the [FUTURE-AI framework](https://doi.org/10.1136/bmj-2024-081554) (Lekadir et al., BMJ 2025), which organises responsible AI into six principles: fairness, universality, traceability, usability, robustness and explainability.

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
├── toolbox/           Toolbox intro and contribution guide (tool pages are generated)
└── community-handbook/ Contributing, governance, style guide, contributors
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

All commands run from the repository root.

### Toolbox

The Toolbox is generated from one YAML file per tool in `toolbox/tools/`, validated against `toolbox/schema.json`. `make toolbox` validates the files and generates the tool pages and the "Tools for this step" boxes in the chapters; every build target runs it first. See [Adding a tool](website/toolbox/contributing-tools.md).

## Contributing

Contributions start with an [issue](https://github.com/the-elsa-way/the-elsa-way/issues/new/choose) and end with a reviewed pull request. See [CONTRIBUTING.md](CONTRIBUTING.md) for the short version, and the [Community handbook](website/community-handbook/community-handbook.md) for the full contribution guide, style guide and governance.

## Figures

Illustrations in `website/figures/` that originate from [The Turing Way](https://book.the-turing-way.org) are created by Scriberia with The Turing Way community and used under a [CC-BY 4.0 licence](https://creativecommons.org/licenses/by/4.0/).

> The Turing Way Community. This illustration is created by Scriberia with The Turing Way community, used under a CC-BY 4.0 licence. DOI: [10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807).

## License

- Content: [CC-BY-4.0](LICENSE-CONTENT.md)
- Code: [MIT](LICENSE-CODE.md)
