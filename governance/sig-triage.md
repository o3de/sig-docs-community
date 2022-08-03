# sig-docs-community triage

Unlike many SIGs, sig-docs-community is "crosscutting" (a stakeholder SIG in almost every other SIG's work) and our triage is slightly different from other groups' as a result. In particular, sig-docs-community triage needs to meet the following criteria at minimum:

* Triage of issues in o3de/o3de.org which have not yet gone through a triage process
* Triage of issues in o3de/o3de which are assigned a `sig/docs-community` label.

We strongly recommend continuing the following practice until reviewers can be appropriately auto-assigned:

* Look through open pull requests on o3de/o3de.org and o3de/o3de to identify reviewers/maintainers who are able to perform review to meet the 2-review threshold for merge.

## Current triage process

1. Check issues on `o3de/o3de.org` with the `needs-triage` label. ([Link](https://github.com/o3de/o3de.org/issues?q=is%3Aissue+is%3Aopen+label%3Aneeds-triage+-label%3Akind%2Fwebsite))
   1. If the issue relates to _website development only_, add the `kind/website` label and move to the next triage item. sig-docs-community does not triage website items in this meeting; Website triage must be a separate process to work with vendors or other funded website development.
   2. Discuss in SIG triage to see if the issue is valid, should be rejected, or needs more info.
   3. Assign labels to the issue. Normally you should assign at least one of:
      * `feature/`
      * `kind/`
   4. Assign a `triage/` label. We have a variety, but the most common will be `triage/accepted`, `triage/needs-more-info` and `triage/declined`. Issues which are declined should be closed, and if need to be handled by another SIG, a corresponding issue should be opened where appropriate ([Example of declined issue](https://github.com/o3de/o3de.org/issues/1632))
   5. Assign a `priority/` label to the item. Priorities of `critical` and `blocker` should only be used for high-impact issues that need to either be urgently addressed on the live website, or in an upcoming major release.
   6. Remove the `needs-triage` label.
2. Check issues on `o3de/o3de` with the `sig/docs-community` label. ([Link](https://github.com/o3de/o3de/issues?q=is%3Aissue+is%3Aopen+label%3Asig%2Fdocs-community))
   
   Most issues which come to sig-docs-community via the o3de repo have already been triaged by an engineering SIG. During cross-SIG triage (or under some individual SIG discretion) the `sig/docs-community` label is applied to issues where docs would be a stakeholder. For these tickets, it should be enough to _leave a comment_ and, if necessary, create a corresponding issue on `o3de/o3de.org`.

## Current issue assignment process

Currently, issue assignment is done _live_ in triage meetings. We recommend putting infrastructure in place so that reviews can be load-balanced appropriately among SIG members, but until that time, round-robin live assignment has worked reasonably well.

1. Look through issues on o3de/o3de.org in pull request which do not have the required number of reviewers. ([Link](https://github.com/o3de/o3de.org/pulls?q=is%3Apr+is%3Aopen+review%3Arequired))

    Assign any present member of the SIG who volunteers; In the absence of volunteers, the PR may remain without the number of designated reviewers assigned, provided that there is at least _one_ assigned reviewer, and the docs reviewers team is assigned as a reviewer.

2. Look through issues on o3de/o3de in pull request which require validation from docs. ([Link](https://github.com/o3de/o3de/pulls?q=is%3Apr+is%3Aopen+label%3Asig%2Fdocs-community))

    These issues are rare, but do show up! When they do, they tend to go unnoticed by the SIG due to lack of cross-communication, so it's useful to check during triage/PR assignment to see if there are any open PRs on o3de which require docs signoff. Some situations where docs may need to be involved are:

    * Tooltip text
    * Error messages
    * Links to the website
    * README or other supplemental information