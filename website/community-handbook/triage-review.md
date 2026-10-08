(community-triage-review)=
# Triage and Review

This page is for editors. It describes how to handle issues and pull requests so that every contributor, inside or outside the ELSA AI Lab, gets a timely and consistent response. Contributors can read the same process from their side in [Contributing](contributing.md).

## Triage new issues

New issues arrive with `status: needs triage` and a `type:` label set by the issue form. For each one:

1. **Check scope and duplicates.** If the issue duplicates another, link it, label it `duplicate` and close it. If it falls outside the scope of responsible AI in healthcare, explain why and close it.
2. **Ask for missing information.** Comment with your question and replace `status: needs triage` with `status: needs info`. When the answer arrives, triage it again.
3. **Accept it.** Replace `status: needs triage` with `status: accepted` and add a review level:
   - `review: minor`: typos, clarifications, small additions;
   - `review: significant`: new sections within existing chapters;
   - `review: major`: new chapters or structural changes. Put these on the agenda of the next editorial board meeting before accepting them (see [Governance](governance.md)).
4. **Invite help.** Add `good first issue` to small, well-defined issues and `help wanted` to issues you would like the community to pick up.
5. **Check conflicts of interest.** If the issue declares a conflict of interest, make sure the reviewers you assign later have none in that topic.

When someone comments that they want to work on an accepted issue, assign it to them and replace `status: accepted` with `status: in progress`. GitHub lets you assign anyone who has commented on the issue, including external contributors. If an assigned issue sees no activity for a long time, ask whether the contributor is still working on it before reassigning.

## Review pull requests

1. **Approve the checks for first-time contributors.** Pull requests from forks by first-time contributors wait for approval before GitHub runs any workflow. Look at the changes first: make sure they only touch book content and do not change `.github/workflows/`, the `Makefile` or `scripts/` in unexpected ways. Then click **Approve and run** on the pull request.
2. **Make sure both checks pass.** **Build book** builds the book (including the Toolbox validation). **Linked issue** requires `Closes #<number>` in the description, or the small-fix box ticked. You can edit the description yourself to add a missing issue link.
3. **Review against the content standards** in [Contributing](contributing.md) and the [Style Guide](style-guide.md). Use GitHub's suggestion feature for small wording changes so the contributor can accept them with one click.
4. **Collect the approvals the review level requires.** A `review: minor` change needs one editor's approval and a `review: significant` change needs two; a `review: major` change needs editorial board consensus, recorded in the issue. Reviewers with a conflict of interest in the topic do not count.
5. **Squash and merge.** Squash merging keeps one commit per contribution in the history. Make sure the commit message keeps the `Closes #<number>` line, so the issue closes. GitHub credits the contributor as the commit author.

After merging, the deploy workflow publishes the website within a few minutes.

## Labels

The labels are defined in [`scripts/sync-labels.sh`](https://github.com/the-elsa-way/the-elsa-way/blob/main/scripts/sync-labels.sh). To add or change a label, edit the script in a pull request and run it after merging:

```bash
scripts/sync-labels.sh
```

The script needs the [GitHub CLI](https://cli.github.com/) and write access to the repository. It creates missing labels and updates existing ones.

## Repository settings

These settings support the workflow. Only the repository owner can change them, under **Settings** on GitHub.

| Setting | Where | Value |
|---|---|---|
| Branch protection for `main` | Settings → Branches (or Rules → Rulesets) | Require a pull request before merging, with at least one approval; require the status checks **Build book** and **Linked issue** to pass |
| Approval for fork workflows | Settings → Actions → General | Require approval for first-time contributors |
| Merge button | Settings → General → Pull Requests | Allow squash merging; automatically delete head branches |
