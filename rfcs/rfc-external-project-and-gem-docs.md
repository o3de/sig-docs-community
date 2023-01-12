# Establish process for external project and Gem documentation

## Summary

This RFC proposes to clarify whether documentation about external projects and Gems can be included in O3DE Documentation (`o3de.org/docs`). For the context of this RFC, "external" refers to those that live outside of the `o3de` repository.

External projects and Gems commonly fall under the following scenarios:
- They live outside of the `o3de` organization, such as those created by O3DE partners.
- Their repositories are part of the `o3de` organization, but not part of the `o3de` repository.

Examples include docs for templates and Gems in `o3de-extras` repo, and tutorials for the Multiplayer Sample Project. 

### What is the motivation for this suggestion?

As the collection of O3DE projects and Gems expands, we need to establish boundaries about what documentation can be accepted into O3DE Documentation. It's important to set this boundary because it can directly impact the scope of responsibilities for D&C SIG and other O3DE maintainers.

A current case is documentation for the Multiplayer Sample Project (MSP). While MSP's code base lives in a separate repository within `o3de` organization, its documentation is planned to live within O3DE Documentation. This decision was based on MSP's impact on the O3DE community, and consensus among D&C SIG and other O3DE community members who are stakeholders of MSP. 


### Suggestion design description

We propose setting the following boundaries for external projects and Gems:

> Documentation for external projects and Gems that live outside of the `o3de` organization cannot be contained in O3DE Documentation. They must be hosted elsewhere by the owners.
>
> Documentation for external projects and Gems that are part of the `o3de` organization *may be considered* to become part of O3DE Documentation. The consideration will be dependent on the project or Gem's purpose and beneficial impact on the O3DE community. Discussions can be held with the D&C SIG and other SIG or TSC members who are stakeholders for the project or Gem in question, in order to make a decision.
>
> Although not all project and Gem documentation may be included in O3DE Documentation, a reference to them can be listed in the O3DE Documentation. For example, PopocornFX's particle effects is listed in the "Rendering" page of the O3DE Documentation.
>
> These standards apply not only to feature documentation, but also to tutorials, samples, and other content in the Learning Guide. 

### What are the advantages of the suggestion?

Clarity on what documentation can be included in O3DE Documentation, and a process that allows an external project or Gem documentation to be included in O3DE Documentation--either its' full feature documentation or a link to it. 

### What are the disadvantages of the suggestion?

- Excluding project and Gem documentation from O3DE Documentation has the disadvantage of making that project or Gem less discoverable. To mitigate this, project and Gem documentation may be referenced from within O3DE Documentation.

### Scope of work

1. The proposed statement clarifying when a project or Gem documentation can be included in O3DE Documentation must be written as an official O3DE process. This may be included in the D&C SIG Charter, the `o3de/community` repository, the Contributing to Docs page, or any fitting place. 

2. Any existing documentation that does not fit the proposed standard must be removed from O3DE Documentation. The D&C SIG can work with the owners of those projects or Gems to help migrate the docs out of O3DE Documentation. Those projects and Gems may instead be referenced from a relevant page of the O3DE Documentation.
 
### Are there any alternatives to this suggestion?

We are open to any alternatives.

### What is the strategy for adoption?

- Communicate this proposal with other SIGs and TSC
- Write the proposal as an official process
- Remove documentation that must not be in O3DE Documentation under this new process change.