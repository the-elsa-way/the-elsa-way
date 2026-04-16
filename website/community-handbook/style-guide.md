(community-style-guide)=
# Style Guide

This guide describes the writing conventions and formatting standards for The ELSA Way. Following these conventions gives readers a consistent experience across chapters contributed by different authors.

## Tone and voice

- Write in plain language. Assume a reader who is intelligent but not a specialist in your topic area.
- Be direct. Use active voice. Avoid unnecessary hedging.
- Avoid jargon. When technical terms are necessary, define them on first use.
- Write for practice, not theory. Ground abstract principles in concrete examples.
- Use "you" when addressing the reader directly.

## Structure

Each chapter should include:

1. A FUTURE-AI callout (if relevant) identifying which recommendation(s) the chapter addresses
2. An introduction that states what the chapter covers and why it matters
3. Body sections with clear headings (H2 for main sections, H3 for subsections)
4. Practical tips, warnings, or examples where relevant
5. Cross-references to related chapters

## Callout boxes

Use MyST admonition syntax for callout boxes:

```markdown
:::{admonition} FUTURE-AI
:class: tip
This chapter supports Recommendation X: [description].
:::

:::{note}
A note providing supplementary context.
:::

:::{tip}
A practical tip or actionable recommendation.
:::

:::{warning}
A warning about a common pitfall or high-stakes consideration.
:::
```

## Cross-references

Use relative links for internal cross-references:

```markdown
[Chapter title](../section/filename.md)
```

Use the `{ref}` role for label-based cross-references (more robust to file renaming):

```markdown
{ref}`design-problem-definition`
```

## Tables

Use Markdown tables for comparative information:

```markdown
| Column 1 | Column 2 |
|---|---|
| Row 1 | Content |
```

## Code

For code examples (e.g., Python, YAML), use fenced code blocks with language annotation:

````markdown
```python
# Example code
x = 1
```
````

## Citations

Add citations to `references.bib` in BibTeX format. Cite using:

```markdown
{cite}`author2024`
```

## Images and figures

```markdown
:::{figure} ../../figures/filename.png
:name: figure-label
:alt: Descriptive alt text (required for accessibility)
Caption text.
:::
```

All figures must have descriptive alt text.

## Accessibility

- All images must have alt text
- Do not rely on colour alone to convey meaning
- Use plain language
- Avoid very long paragraphs
