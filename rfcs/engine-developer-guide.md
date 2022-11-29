## New guide: Engine Developer Guide

Currently, users of Open 3D Engine (O3DE) only have one primary product manual: The User Guide (we also offer the Atom Guide, which is intended to be rolled into the User Guide at a future date.) While for most project developers and content creators the user guide is intended to be sufficient, O3DE has other audiences:

* O3DE is an open-source product that is always actively seeking contributors onboarding into its code base.
* O3DE operates in a product space where developers often need very specific low-level technical details, or guidance on performing custom implementations of the core engine.

To support those considerations, there should be an Engine Developer Guide added to o3de.org. The Engine Developer Guide would cover low-level documentation for contributors and engine modification from an official, vetted, quality-controlled source.

## Motivation

Contributors and developers modifying the engine require low-level documentation to perform their tasks. Some existing resources that they have access to which can provide some of this information are: Source code; Header documentation and API reference; RFCs.

While new features in the engine require RFCs, this information is not available for all parts of O3DE. In addition, header documentation and API reference have many issues in the project's current state. In particular, API reference has been a lower priority for developers. Relying on source code can be difficult for even advanced users, especially in cases where there are many abstraction layers. With the modular design of O3DE, this is a particular concern.

While there are long-term solutions to some of these issues such as API reference requirements for source contribution, we need a more immediate stopgap that allows developers to share notes, reference, and other critical implementation documentation. The Engine Developer Guide is intended to serve this purpose, and carrying forward, provide authoritative information on designs and implementation.

### Advantages

* Provides a dedicated repository of information for low-level developers, available from the same source as user-facing documentation. Initiatives to expand existing API reference and core documentation in the future will help focus the contents of the engine developer guide.
* Creates a specific dividing line between "project development" (user guide) and "engine development" (engine developer guide).
* Allows for different review standards from sig-docs-community through processes and procedures described in #61.

### Disadvantages

* Requires clarity of a dividing line between "user-facing development" (such as Gems, plugin tools, or new Components) and "contributor/engine-facing development" (low-level work on core O3DE Frameworks and Gems.) Users who fall into the former category may mistakenly end up in the Engine Developer Guide.
* sig-docs-community could not reasonably handle review responsibilities for the Engine Developer Guide. As a result, places an additional obligation on a technical sig or the TSC to handle reviewer/maintainer responsibilities of the guide.

### Design

The design for a new guide encompasses:

* Ownership of contents and review process (under #61)
* Types of content included
* Content hierarchy / Information architecture

#### Ownership of contents and review process

The overall reviewer standards and any required style guide are maintained by a technical SIG in conjunction with SIG Docs-Community. This proposal recommends the following:

* Meeting a minimal style guide. The SIG owning the guide is responsible for setting review standards and style. The only requests from SIG Docs-Community for this style guide are:
  * **Meets legal requirements**: Content in the Engine Developer Manual must meet the legal requirements for submission under the o3de.org license. In addition, documentation which uses trademarks is required to follow all trademark requirements.
  * **Uses consistent terminology**: Terminology used within the guide must remain consistent. Terminology should follow that established in the User Guide. Any terminology index or glossary should be co-owned by all SIGs for accuracy.
* **Guidelines to become a reviewer of Engine Developer Guide documentation**. This is entirely at the discretion of the central technical SIG owning the guide. We recommend each SIG (co-)owning the areas of content in the guide related to their code set any specific standard, while the technical SIG owning the overall guide sets a basic standard required by all content.
* **At least one reviewer.** In order to merge content to the public site, at minimum one reviewer should always be required. This reviewer is from the reviewer/maintainer pool for the Engine Developer Manual.
* **Content ownership delegated to SIGs.** Content for each Framework and included Gem will be (co-)owned by the SIG(s) responsible for the maintenance of those components.

#### Types of content

No content will be explicitly excluded from the Engine Developer Guide by SIG Docs-Community; Content of the guide will be at the discretion of the technical SIG owning the manual.

However, there is the risk of mixing content across guides, requiring some very specific dividing lines between the style and intended audience of User Guide content and Engine Developer Manual content. The following two examples outline some potential scenarios in which such a conflict happens.

**Example 1 - Prototype Feature Documentation**

Ada, a developer on the O3DE project, is submitting a prototype feature. This feature is not ready for user-facing documentation, but still requires engineer documentation for people willing to contribute and basic bootstrapping/README information for the feature.

Ada needs to submit both feature documentation (user-facing) and implementation details (engine dev-facing). Ada needs to know where to put each documentation set. There are three possible paths for this documentation to go:

1. Split at time of submission: Engineers are responsible for differentiating between "in-development user-facing documentation" and "developer-facing implementation and design" in their written documentation. The former documentation is submitted to the User Guide, and the latter to the Engine Developer Guide. Both submissions are still required to go to development.
1. All documentation goes to the `development` branch User Guide. While a feature is in development, we may consider "users" to be alpha/beta testers who would be comfortable working with lower-quality instructions. *However*, during stabilization for a release, this would require sig-docs-community (relying on other SIGs) to evaluate content in the User Guide for release.
1. All documentation goes to the engine developer guide. Users engaging with a prototype feature are most likely there to test, submit bug reports, or contribute improvements. *However*, there is an opposite stabilization risk here: During stabilization, sig-docs-community (relying on other SIGs) would evaluate content in the Engine Developer Guide for release.

*Recommendation*: Developers who understand where to split their content should *Split at time of submission*. For developers who are unsure, they should *Submit to developer guide* and ideally request a reviewer from sig-docs-community for evaluating content for split, to create an issue to split content when the feature is stable.

**Example 2 - Gem development File locations**

Bill, a project developer looking for information on custom Gem development, comes to the o3de.org site looking for documentation. Bill isn't interested in the workings
of the Gem system; Only in the process of constructing a Gem from templates and integrating it with their project. There's now the following point of confusion: Is this information in the "User Guide", or the "Engine Developer Guide"?

This RFC recommends the following to mitigate this sort of problem:

1. There should still be a clear split between user-facing and developer-facing documentation. Where this is in question, the Engine Developer Guide reviewers should engage sig-docs-community's documentation reviewer pool.
1. The Engine Developer Guide should come with a highly visible warning on the main index page, or a persistent banner, which indicates the user is in this guide.
1. sig-docs-community should regularly evaluate user feedback and site behavior, and update any individual pages that seem to be causing problems with an appropriate notice about content in the User Guide.

#### Branching

The Engine Developer Manual structure and page serving information will be available only on the development branch, staged at https://development--o3deorg.netlify.app/. We recommend that the Engine Developer Manual also ships in a locked and versioned edition as part of any release.

#### Information architecture

The Engine Developer Manual will have page content hosted at `/docs/engine-dev-guide` (source: `/content/docs/engine-dev-guide`) and image/video materials hosted at `/images/engine-dev-guide` (source: `/static/images/engine-dev-guide`).

The following broad architecture for the Engine Developer Manual is as follows (paths are relative to `https://o3de.org/docs/engine-dev-guide`):

```
_index.md           # Overview page, maintained jointly by o3de/maintainers and sig-docs-community
architecture/*      # Broad architecture documents
framework/*         # Per-framework documentation.
framework/_index.md # Index linking to all framework pages, with a brief overview of the framework.
#framework/azcore   # Naming example; Frameworks should be named after their associated binary products.
gem/*               # Per-gem documentation. Only provided for Gems included in the O3DE distribution.
gem/_index.md       # Index linking to all Gem pages, with a brief overview of each Gem from a technical level.
#gem/networking     # Naming example; Gems should be named after the gem name, not any produced artifacts.
```

Further subdirectories on top of these are at the discretion of the TSC and o3de/maintainers groups who own the Engine Developer Manual. We recommend against further subdirectories for Gems, unless absolutely necessary. Subdirectories for frameworks which have broad topic are recommended; An example would be `framework/azcore/allocators` for information on memory allocation systems.

Changes to the root `_index.md` or directory structure should require review by sig-docs-community as information architecture stakeholders.

#### Style requirements

The Engine Developer Manual is intended to be as style-light as possible. The TSC must maintain the style and quality standards, outside of the following requirement set by sig-docs-community and required for all site content: Correct usage of terminology and associated style, for consistency of readability across guides.

If this requirement is not accepted by the TSC, at minimum the Engine Developer Manual must have a requirement that contributors respect trademarks as listed in the terminology. This is a non-negotiable legal requirement.

### Technical considerations

Acceptance of this RFC and the consequent requirements of maintaining this documentation guide is likely to have an impact on the development of O3DE itself. Such an impact would be determined entirely by the policies established by the TSC or a representative group.

There are no technical changes required to website infrastructure to support this change, other than an addition to `CODEOWNERS` to give access to a reviewer group for the Engine Developer Guide.

### Scope of work

* Establishing content architecture for the new guide. Requires only the creation of new directories for o3de.org and addition of `_index.md` file stubs for the architecture as described if needed.
* Addition of o3de/maintainers and the TSC (or another designated group[s]) as the maintainers/reviewers/approvers of Engine Developer docs.
* Establishment of policies by the TSC or a representative group regarding the content of this guide. A description of these policies is outside the scope of this RFC.
* The guide will not be provided any content at launch. The scope of content production for this guide is outside of this RFC.

### Alternatives considered

* Usage of the GitHub Wiki for O3DE or another Wiki system for tracking developer-specific documentation. GitHub Wiki restrictions may make it too difficult to accept contributions. Other wiki systems weren't investigated for this RFC - if it is rejected, the TSC or a representative SIG may establish a wiki instead of the Engine Developer Guide.
* Combining developer docs with user docs in the single guide. This is a poor choice for audience separation and discovery reasons, and also is impacted by user-facing documentation style guides, content quality guidelines, and review policies.

### Are there any open questions?

    What are some of the open questions and potential scenarios that should be considered?
