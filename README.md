# The ELSA Way

A community-driven, living handbook for developing AI responsibly in healthcare — built by the [ELSA AI Lab Northern Netherlands](https://elsa-ai.nl).

## What is The ELSA Way?

The ELSA Way is a freely accessible online resource that brings together practical knowledge, tools, and guidelines for developing AI systems that embed Ethical, Legal, and Social considerations (ELSA) by design. It is structured around the AI development lifecycle — from design and development through evaluation and deployment — and uses the [FUTURE-AI framework](https://doi.org/10.1136/bmj-2024-081554) as its backbone for responsible and trustworthy AI.

## Building the Book

The book is built with [Jupyter Book](https://jupyterbook.org) (MyST) and managed with [uv](https://docs.astral.sh/uv/).

### Setup

```bash
uv sync
```

### Local preview

```bash
make serve
```

### Build HTML

```bash
make book
```

## Contributing

See [Community Handbook](book/website/community-handbook/community-handbook.md) for contribution guidelines.

## License

- Content: [CC-BY-4.0](LICENSE-CONTENT.md)
- Code: [MIT](LICENSE-CODE.md)
