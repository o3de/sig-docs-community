# RFC: Require a docs reviewer and a technical-reviewer for PRs to `o3de.org`

## Summary

This RFC proposes that submissions to the `o3de/o3de.org` repo, in the `/content/docs` and `/content/static/images` directories, 
require at least one docs reviewer and at least one technical reviewer to review and approve the PR before it can be merged. 

Informally, some of the `o3de.org` community already practice this, however, the `o3de.org` repo's configuration settings don't 
clearly reflect this behavior. The current PR process for `o3de.org` repo looks like this: 
  
  Two valid approvals are required before a PR that's against `main` or `development` branches can be merged. They can be from 
  any of the teams that have [write role](https://docs.github.com/en/organizations/
  managing-user-access-to-your-organizations-repositories/repository-roles-for-an-organization) or above. This allows PRs that 
  have received two approvals from only docs reviewers or only technical reviewers to be merged.

This RFC proposes a solution to better enforce the requirement for one docs reviewer and one technical reviewer.


### What is the motivation for this suggestion?

*Why is this important?*

Requiring a docs reviewer and a technical reviewer can ensure that incoming PRs for O3DE Documentation is reviewed by the 
appropriate people. Furthermore, limiting the reviewers to one docs reviewer and one technical reviewer at minimum can ensure 
efficient use of resources (reviewers). 

*What are the use cases for this suggestion?*

Any PR in the `o3de.org` repo that amends the `/content/docs/`  or `/content/static/images` directory by updating existing docs 
or creating new docs and supplemental media, such as images and videos. For example, a PR that adds documentation about a feature. 

*What should the outcome be if this suggestion is implemented?*


For a given PR, as described in the previous use case, 2 approvals at minimum are required before the PR can be merged: one from 
a docs reviewer and one from technical reviewer. A docs reviewer has the expertise to ensure the PR is written well, and a 
technical reviewer has the expertise to ensure the PR is technically accurate. 


### Suggestion design description

#### A CODEOWNERS file

The `o3de.org:main` and `o3de.org:development` branches shall contain a CODEOWNERS file that dictates the `docs-reviewers` and 
`docs-technical-reviewers` teams as owners of the appropriate directories in the `o3de.org` repo. This implementation is 
described and handled by the corresponding, accepted RFC, https://github.com/o3de/sig-docs-community/issues/61, and will help 
support the implementation of this proposed RFC. 

#### Review and approval permissions

The review and approval permissions of the `o3de.org:main` and `o3de.org:development` branches shall be amended to require two 
approvals: one from a docs reviewer and one from a technical reviewer. Docs reviewers and technical reviewers, can be derived 
from the CODEOWNERS file. More information is needed on how to set up merge permissions to require one docs reviewer and one 
technical reviewer. However, the following describes one possible way: 
	
In GitHub's web interface, in `o3de.org` repo, you can amend the [branch protection rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/defining-the-mergeability-of-pull-requests/managing-a-branch-protection-rule) 
of the `main` and `development` branches by enabling **Require review from Code Owners**. When enabled, any PRs to these 
branches will require an approved review from the designated owners of the changed files. However, the CODEOWNERS file has a 
limitation: If multiple code owners are listed, the required approvals can be from any of those owners. For example, if the code 
owners are `docs-reviewers` and `docs-technical-reviewers`, then a PR that recieves at least two approvals from docs reviewers 
and none from technical reviewers, or vice versa, will be valid to merge. This is not the desired functionality and this RFC 
proposes to mitigate that. Further research and a proof-of-concept to work around this limitation is needed.

A way to work around this limitation can be to define merge configurations through a GitHub Action or App. One possible solution 
that's worth exploring is [Mergeable](https://github.com/mergeability/mergeable), a GitHub App that offers configurations to 
automate GitHub workflows. Specifically, it's ability to [configure approvals](https://mergeable.readthedocs.io/en/latest/validators/approval.html) 
can help implement this RFC. Mergeable's approval configuration offers the setting, `requested_reviewers`, which requires all of 
the requested reviewer's approvals in order for a PR to be merged. In the case of this RFC, a Mergeable configuration can 
specify that the required reviewers be the designated owners as defined in the CODEOWNERs file *and* that all the requested reviewers approve the PR. 

#### Technical reviewers

This RFC requires consideration for who technical reviewers and the process for becoming one. It's critical to establish a 
sufficient team  of technical reviewers because it ensures that there are enough reviewers to support the quality of docs and impel an efficient PR process

There are two options for establishing the group of technical reviewers:
1. **[`o3de/docs-technical-reviewer`](https://github.com/orgs/o3de/teams/docs-tech-reviewers)**: A team of technical reviewers 
specifically for O3DE documentation. Choosing this options requires a plan to establish and maintain the team. The 
`sig-docs-community` would take initiative and work with members of other SIGs to establish this.
2. **[o3de/reviewers](https://github.com/orgs/o3de/teams/reviewers)**: An already established team of reviewers, that were 
initially created for reviewing O3DE source code. Choosing this option allows code reviewers to also be valid technical 
reviewers for docs. [Reviewers](https://github.com/o3de/community/blob/main/community-membership.md) are nominated in their respective SIGs. 

The work to establish a team of technical reviewers may also include reassessing the current `sig-docs-community` [Nomination Guidelines](https://github.com/o3de/sig-docs-community/blob/main/governance/reviewers-maintainers.md) for technical reviewers.

### What are the advantages of the suggestion?

- Automatically ensures a PR receives adequate reviewer approvals, at a minimum, before it can be merged. 
- Helps improve the quality of the documentation, including how accurate the technical information is and how well it's written.
- Clarifies responsibilities among `o3de` teams in the PR process for `o3de.org` repo. 

### What are the disadvantages of the suggestion?

None are identified at this time.

### How will this be work within the O3DE project?

This will be implemented in the PR process in `o3de.org` repo. 

### Scope of work

There are two main tasks for this RFC:
- The CODEOWNERS file and the `o3de.org:main` and `o3de.org:development` branches must be set up to enforce required reviews from one docs reviewer and one technical reviewer. 
For more information, see **Review and approval permissions** in **Suggestion design description** section.
- It must be decided on who will populate the team of technical reviewers. For more information, see **Technical reviewers** in **Suggestion design description** section.

### Are there any alternatives to this suggestion?

An alternative to the suggestion proposed in this RFC is to keep the review requirement rules as they currently are. The impact of 
this would result in repeated issues that have occasionally occurred in the PR process for `o3de.org` repo. Issues include merged 
PRs that amend technical docs and did not receive an approval from an appropriate technical reviewer, or did not receive an 
approval from a docs reviewer. A lack of structure and unclear roles in the PR process is not scalable for both the quality of 
O3DE documentation and for the growing community of contributors to `o3de.org`. 

### What is the strategy for adoption?

If approved, `sig-docs-community` can explore, test, and implement a solution that enforces the proposed required reviewers for 
the `o3de.org` repo. As this directly involves members of other SIGs who may be technical reviewers, it's necessary to get their 
input. If necessary, the `sig-docs-community` can coordinate with other SIGs to establish the team of technical reviewers.
