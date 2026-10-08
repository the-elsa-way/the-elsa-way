(community-style-guide)=
# Style guide

Chapters in The ELSA Way are written by many different people, and readers range from data scientists to patients. This guide sets out how to write and format content so that the book reads as one resource.

## Tone and voice

Write in plain English for a reader who is intelligent but not a specialist in your topic. A nurse should be able to follow a page on model development, and a developer a page on clinical workflows.

Address the reader as "you" and use the active voice: "Test the model on data from a second hospital", not "The model should be tested". Use British spelling, with -ise endings (organise, prioritise).

When you need a technical term, define it in a few words the first time you use it on a page. For example: "calibration (whether a predicted risk of 20% means that about 20 in 100 such patients have the outcome)". Write out abbreviations the first time they appear.

Ground principles in practice. A concrete example, a step the reader can take or a short scenario does more than an abstract statement. The book uses a fictional running case, a sepsis early-warning model in a Northern Dutch hospital; use it where it makes your advice concrete, and say the first time on a page that it is fictional.

Do not invent statistics, studies, quotes or names. If you cannot find a source for a number, leave the number out or present the example as hypothetical ("Suppose a hospital...").

## Words and patterns to avoid

These words and patterns make text vague or sound machine-written. Editors will ask you to change them.

- Em dashes (the long dash). Use a comma, a colon, brackets or a full stop instead.
- Inflated words: delve, underscore, pivotal, realm, harness, illuminate, shed light on, facilitate, refine, bolster, differentiate, streamline, revolutionise, innovative, cutting-edge, game-changing, transformative, seamless, scalable, crucial, essential, and robust when it only adds emphasis.
- Stock phrases: "that being said", "at its core", "to put it simply", "underscores the importance", "a key takeaway", "from a broader perspective", "not just", "not merely".
- Hedges: generally speaking, typically, tends to, arguably, to some extent, broadly speaking. If a claim only holds sometimes, say when.
- Slogans and contrast framings such as "Fairness is not a metric. It is a practice." State what the reader should do instead.
- Closing sentences that repeat what the section has just said. End when the content ends.
- Openings that restate the heading. Start a section with something concrete: a fact, a step or the running case.

## Structure

Each chapter includes:

1. a FUTURE-AI callout, if relevant, naming the recommendations the chapter addresses;
2. an introduction that says what the chapter covers and why it matters in practice;
3. body sections with headings (H2 for main sections, H3 for subsections);
4. examples, tips or warnings where they help;
5. cross-references to related chapters.

Write headings in sentence case: "How to use this resource", not "How to Use This Resource". Keep capitals for proper nouns and acronyms (EU AI Act, FUTURE-AI, GDPR).

Use prose when you explain reasoning, weigh options or describe how things connect. Use bullet lists only for real lists: items, steps or criteria. Avoid stacks of bullets that each start with a bold label followed by an explanation; turn them into paragraphs, or into a table if the items share the same attributes. Vary the length of your sentences.

## Callout boxes

Use MyST admonition syntax for callout boxes:

```markdown
:::{admonition} FUTURE-AI
:class: tip
This chapter supports recommendation X: [description].
:::

:::{note}
A note giving extra context.
:::

:::{tip}
A practical tip the reader can act on.
:::

:::{warning}
A common pitfall or a high-stakes consideration.
:::
```

## Cross-references

Use relative links for internal cross-references:

```markdown
[Problem definition and scoping](../design/problem-definition.md)
```

Use the `{ref}` role for label-based cross-references. These keep working when a file is renamed:

```markdown
{ref}`design-problem-definition`
```

## Tables

Use Markdown tables for information that compares several items on the same attributes:

```markdown
| Guideline | Study type |
|---|---|
| TRIPOD+AI | Prediction models |
```

## Code

For code examples (for example Python or YAML), use fenced code blocks with a language annotation:

````markdown
```python
# Example code
x = 1
```
````

## Citations

Cite sources with the `{cite}` role and a key from `references.bib`:

```markdown
{cite}`lekadir2025futureai`
```

To add a new source, add a BibTeX entry to `references.bib` in the same pull request. Check the details (authors, title, journal, year, DOI) against the publisher's page.

## Images and figures

Chapters sit one folder below the `website` folder, so figure paths start with `../figures/`:

```markdown
:::{figure} ../figures/filename.png
:name: figure-label
:alt: Descriptive alt text (required for accessibility)
Caption text.
:::
```

Every figure needs descriptive alt text. If you reuse an illustration from The Turing Way, keep its attribution in the caption.

## Accessibility

Give every image alt text. Do not rely on colour alone to convey meaning. Keep paragraphs short enough to read on a phone, and use plain language throughout.
