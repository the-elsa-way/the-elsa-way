(toolbox-contributing)=
# Adding a Tool

Every tool in the [Toolbox](#toolbox) is a small YAML file in the [`toolbox/tools/`](https://github.com/the-elsa-way/the-elsa-way/tree/main/toolbox/tools) folder. A build script turns these files into the tool pages, the overview tables, and the **Tools for this step** boxes in the chapters. You never edit those pages by hand.

If you are not comfortable with GitHub, [open an issue](https://github.com/the-elsa-way/the-elsa-way/issues/new?template=propose-tool.yml) with the tool's name, website and the chapter where it helps, and an editor will add it.

## Before you start

Check that the tool:

- is relevant to AI in healthcare;
- supports at least one FUTURE-AI principle;
- is publicly available from its developers (free or paid);
- is not already in the Toolbox.

## 1. Create the YAML file

Copy [`toolbox/TEMPLATE.yml`](https://github.com/the-elsa-way/the-elsa-way/blob/main/toolbox/TEMPLATE.yml) to `toolbox/tools/<id>.yml`, where `<id>` is a short lowercase name such as `fairlearn`. The [schema](https://github.com/the-elsa-way/the-elsa-way/blob/main/toolbox/schema.json) describes every field. The most important ones:

| Field | What to fill in |
|---|---|
| `summary`, `description` | What the tool helps you do, in your own words |
| `type`, `format` | The kind of tool, and its concrete form (e.g. "card game") |
| `lifecycle`, `future_ai`, `audiences` | Lifecycle phases, FUTURE-AI principles (at most three) and pathway audiences |
| `practical` | Time, group size, facilitation, skills, cost and languages |
| `license` | The tool's licence, and whether we may copy its materials (`rehost`) |
| `passages` | Where in the book the tool helps, with one sentence of explanation for each |

:::{warning} Copyright
Write every description yourself. Do not copy or translate text from the tool's website or from other catalogues; link to them instead. Only set `rehost: true` if the tool's licence allows redistribution, for example MIT, Apache-2.0, CC-BY or CC0. Non-commercial (NC) licences do not allow reuse in The ELSA Way, which is published under CC-BY-4.0.
:::

## 2. Link the tool to a passage

A _passage_ is a section of a chapter where a **Tools for this step** box appears. Look for an existing passage first: search the chapters for `toolbox/_generated/passages/` to see the ids in use, and add the id to your tool's `passages`.

If the right section has no box yet, create a new passage. Choose an id of the form `<chapter label>-<section>`, and add this to the chapter, at the end of the section:

```markdown
:::{include} ../toolbox/_generated/passages/design-stakeholder-engagement-methods.md
:::
```

The box is generated from all tools that list that passage id.

## 3. Build and check

From the repository root, run:

```bash
make toolbox   # validate the YAML and generate the pages
make serve     # preview the book
```

`make toolbox` stops with a clear message if a field is missing, a value is not allowed, a passage id does not exist in the book, or a passage has no tools. The same check runs on every pull request. Rerun `make toolbox` after each change to a YAML file.

## 4. Open a pull request

Describe the tool and why it belongs in the Toolbox, and link the issue that proposed it (`Closes #<number>`). An editor will check the facts and the licence before merging. The full process is described in [Contributing](../community-handbook/contributing.md).
