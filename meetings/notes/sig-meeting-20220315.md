# Docs & Community SIG meeting - 2022-03-15

[Meeting Agenda](https://github.com/o3de/sig-docs-community/issues/35)

Facilitator: Stephen Tramer 

Notetaker: Finite_State

The [SIG-Docs Meetings](https://github.com/o3de/sig-docs-community/blob/main/meetings/README.md) contains the history past calls, including a link to the agenda, recording, notes, and resources.

Regular SIG-Docs meeting scheduled for the second Tuesday of every month at 11am PST / 7pm UTC.

## In attendance 
- stramer [Amazon]
- AMZN_Micron
- Finchy [Amazon,Finch Studios]
- Finite_State
- GI
- Andre [BytesofPiDev]
- AMZN JoeB

## SIG updates

**Upcoming release (tentatively 05/2022)**
  * TSC not proposing an LTS in 2022


**O3DE Logo change**

* O3DE is getting a new logo.  When the logo is finalized, sig-docs-community will fast-follow with updates to o3de.org.


**Audit activity**

* Partners at Amazon will be undertaking an audit of Github and internal issues in the near future.

* There will also be an audit of animation-related documentation.

* The SIG expects the audit to result in several RFCs.

* PR velocity during the audit period may be reduced.


**Project: Lua API reference**

* Changes have been made to Behavior Context translation assets. `.names` files are generated at `..\O3DE\<version>\Gems\ScriptCanvas\Assets\TranslationAssets\`. @Finite_State will review changes and propose actions.

## Agenda items

**Vote on [Proposed RFC: Separate main and development branches for versioning](https://github.com/o3de/sig-docs-community/issues/32)**

**Approved** RFC has been accepted by the SIG with the amendments.

**Action Items:**
* Changes to the contributor guide on the new `development` branch are required. @stramer assigned as owner.
* The SIG will need to develop a merge strategy for the `development` branch. No owner assigned.
* @willihay continues to work on the website versioning SIG project.

**Discussion and response to community feedback [thread](https://discord.com/channels/805939474655346758/946469530421575720)**

**Action Items:**
* SIG will present the community's feedback to the TSC at the next opportunity.
* SIG will propose including demo levels with distributed gems.

## Postponed agenda items

Cultivating a friendly writing style and tone in O3DE Docs<br>
> Presenter: @AMZN-Gene @chanmosq<br>
> Length of time: 15 minutes to explain situation come up with next steps. If time allows, maybe more discussion.<br><br>
> O3DE Documentation tend to have a more technical and matter-of-fact tone. While this is appropriate for writing docs, tutorials have a more casual nature and can benefit from a friendlier tone. A friendlier tone can make documents more welcoming and easier to understand.<br>
> We want to address the expectations/standards for docs reviewers and contributors regarding cultivating a friendly tone where it's appropriate.

SIG role in tooltips, in-editor help, etc etc<br>
> Presenter: @sptramer<br>
> Length of time: 10-15m<br><br>
> The docs sig occasionally gets requests to review in-editor help information, and most importantly, our role in in-editor help has come up across the PRs o3de/o3de.org#1339 and o3de/o3de#6555. Engineers may be unwarily making changes which impact the user experience of documentation, and we should consider the sig-docs-community role in making sure that in-Editor documentation resources (whether static strings, site links, or something else) are appropriately reviewed and updated.
