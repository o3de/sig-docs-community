# Establish process for non-canonical project and Gem documentation

## Summary

This RFC proposes to clarify whether documentation about non-canonical projects and Gems can be included in O3DE Documentation (`o3de.org/docs`). 

This RFC uses the following terminology:
- *canonical* features are officially supported in an O3DE release. This includes any feature in the "core" repositories: [`o3de/o3de`](https://github.com/o3de/o3de) engine repository and the [`o3de/o3de-extras`](https://github.com/o3de/o3de-extras) repository.
- *non-canonical* features are unofficially supported by O3DE and not part of an official O3DE release. They exist outside of the core O3DE repositories

While documentation for canonical projects and Gems must be maintained in O3DE Documentation, it's not always the case for non-canonical ones. Whether or not to maintain documentation for non-canonical projects and Gems is more ambiguous, and this RFC aims to clarify that. 

Non-canonical projects and Gems commonly fall under one of the following scenarios:

- They are *out-of-org*, meaning they live outside of the `o3de` GitHub organization, such as those created by O3DE partners.
- They are in *in-org*, meaning they live inside of the `o3de` GitHub organization, but not in a core repository.

Examples include docs for [Atom Sample Viewer](https://github.com/o3de/o3de-atom-sampleviewer) and tutorials for the [Multiplayer Sample Project](https://github.com/o3de/o3de-multiplayersample). 

### What is the motivation for this suggestion?

As the collection of O3DE projects and Gems expands, we need to establish boundaries about what documentation can be accepted into O3DE Documentation. It's important to set this boundary because it can directly impact the scope of responsibilities for D&C SIG and other O3DE maintainers.

A current case is documentation for the Multiplayer Sample Project (MSP). While MSP's code base lives in a separate repository within `o3de` organization, its documentation is planned to live within O3DE Documentation. This decision was based on MSP's impact on the O3DE community, and consensus among D&C SIG and other O3DE community members who are stakeholders of MSP. 


### Suggestion design description

We propose setting the following boundaries for non-canonical projects and Gems:

> Documentation for non-canonical projects and Gems that live outside of the `o3de` organization cannot be contained in O3DE Documentation. They must be hosted elsewhere by the owners.
>
> Documentation for non-canonical projects and Gems that live inside of the `o3de` organization *may be considered* to become part of O3DE Documentation. The consideration will be dependent on the project or Gem's purpose and beneficial impact on the O3DE community. Discussions can be held with the D&C SIG and other SIG or TSC members who are stakeholders for the project or Gem in question, in order to make a decision.
>
> Although not all project and Gem documentation may be included in O3DE Documentation, a reference to them can be listed in the O3DE Documentation. For example, PopocornFX's particle effects is listed in the "Rendering" page of the O3DE Documentation.
>
> Additionally, the D&C SIG will create two "external reference" pages: one in the Gem reference section of the User Guide, listing "External Gems and Templates", and another in the Tutorials & Examples section, listing "External Samples and Tutorials". Each page would contain a table with a row for each external reference that could include columns for a description, optional screenshot, attribution, and link to its source and documentation. Each reference page could also contain appropriate "user beware" banner notices informing the reader of the risk.
>
> These standards apply not only to feature documentation, but also to tutorials, samples, and other content in the [Learning Guide](https://www.o3de.org/docs/learning-guide/). 


### What are the advantages of the suggestion?

Clarity on what documentation can be included in O3DE Documentation, and a process that allows a non-canonical project or Gem documentation to be included in O3DE Documentation--either its' full feature documentation or a link to it. 

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