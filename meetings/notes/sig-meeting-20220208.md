# Docs & Community SIG meeting - 2022-02-08

[Meeting Agenda](https://github.com/o3de/sig-docs-community/issues/25)

Facilitator: Stephen Tramer 

Notetaker: Finite_State

## In attendance 
- stramer [Amazon]
- Aaron Ruiz [Amazon]
- AMZN_Micron
- Finchy [Amazon,Finch Studios]
- Finite_State
- JT [SCB_GameDesign]
- TishShute
- Will Hayward[AMZN]
- Chanelle [Amazon]
- Danilo [Amazon]
- Spotz
- AMZN JoeB

## Sig updates

Regular SIG-Docs meeting scheduled for the second Tuesday of every month at 11am PST / 7pm UTC.

Finchy is the new community manager hired by Amazon, questions and ideas relating to community engagement and communication channels may be directed to her.

Feb-March is 2022 Planning season, so propose RFCs, projects, issues and reach out to the SIG with your feedback and suggestions.

## Reviewer/Maintainer promotions

[SIG Reviewer/Maintainer Nomination: @willihay #28](https://github.com/o3de/sig-docs-community/issues/28)<br>
[SIG Reviewer/Maintainer Nomination: @micronAMZN #27](https://github.com/o3de/sig-docs-community/issues/27)<br>
[SIG Reviewer/Maintainer Nomination: @chanmosq #26](https://github.com/o3de/sig-docs-community/issues/26)<br>
[SIG Reviewer/Maintainer Nomination: @paucom #30](https://github.com/o3de/sig-docs-community/issues/30)<br>

**Approved** new maintainers for sig-docs-community: Chanelle [Amazon], AMZN_Micron, Will Hayward[AMZN].

**Approved** new reviewer for sig-docs-community: Paucom.

## Project updates

[List of SIG Projects](https://github.com/o3de/sig-docs-community/blob/main/projects.md)

**Action Items:**

Programmer Guide Reorganization: Chanelle will report status next meeting.

Lua API Reference: Finite_State will report status next meeting.

### Minimum viable documentation
May be merged into TSCs [feature matrix](https://github.com/o3de/o3de/discussions/6703) intiative.

**Project status updated** to not in progress.

## New project proposals

### Web versioning

As proposed below, the SIG seeks to implement versioning of the documentation. The goal is to provide `development` and `main` branches as well as branches tied to releases. 

**Approved**, and in progress, @willihay assigned as owner.

### API reference generation
The SIG seeks to automate API reference generation and requests an RFC for implementation.

**Approved**, no owner assigned.

## Community agenda items

### `development` branch for o3de-org
> Presenter: @hultonha (also potentially @moraaar)<br>
> Length of time: 10 minutes<br>
> Tagging @amznestebanpapp for visibility on this as they have expressed interest in it too.<br><br>
> As an O3DE contributor I would like to be able to submit documentation of features that are in o3de development branch without affecting the release documentation of o3de.

**Action Item:**

[RFC Proposal - Separate `main` and `development` branches for versioning](https://github.com/o3de/sig-docs-community/issues/32) - Available for comment.

### How much lead time does sig-docs require before a release?

> Presenter: @AMZN-JoeB<br>
> Length of time: 5m<br><br>
> We are putting together the time cost/overhead of a release to help determine a realistic release cadence for O3DE. sig-release would like to know how much lead time sig-docs needs to prepare for a release.

**SIG Response:** 

Feature documentation requires 2 weeks to 2 months of editorial review, depending on the size of the features.  Best-in-class documentation would require 3-6 months of lead time.

## Postponed agenda item

> SIG role in tooltips, in-editor help, etc etc<br>
> Presenter: @sptramer<br>
> Length of time: 10-15m<br><br>
> The docs sig occasionally gets requests to review in-editor help information, and most importantly, our role in in-editor help has come up across the PRs o3de/o3de.org#1339 and o3de/o3de#6555. Engineers may be unwarily making changes which impact the user experience of documentation, and we should consider the sig-docs-community role in making sure that in-Editor documentation resources (whether static strings, site links, or something else) are appropriately reviewed and updated.
