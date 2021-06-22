---
name: "RFC: Documentation or Website Feature"
about: >-
  File an RFC (Request for Comment) for any _new or significantly improved_ feature of the Open 3D Engine documentation website,
  or features of O3DE related to documentation.
title: "Proposed RFC: Feature =description="
labels: 'rfc-feature'
assignees: ''
---

# Open 3D Engine RFC Feature Template

## :no_entry: If you submit a pull request to implement a new feature without going through the RFC process, it may be closed with a polite request to submit an RFC first. :no_entry:

### When using this template, you do not have to fill out every question below. The questions are there for guidance.

This issue template should be used when filing an RFC related to _new or significantly improved documentation or wesite features_ only. Feature RFCs should not be used for
addressing bugs or process changes. If you have a proposed process change, please use the **RFC Suggestion** template.

A hastily proposed RFC can hurt its chances of acceptance. Low-quality proposals, proposals for previously-rejected features, or those that don't fit into the near-term roadmap may be quickly rejected, demotivating the unprepared contributor. Laying some groundwork ahead of the RFC can make the process smoother.

Although there is no single way to prepare for submitting an RFC, it is generally a good idea to pursue feedback from other developers beforehand. Talking to the core team members will help you prepare for a successful RFC.

The most common preparations for writing and submitting an RFC include:

* Talking the idea over on our Discord server.
* Discussing the topic on our GitHub RFCs discussions page.
* Occasionally posting "pre-RFCs" on the GitHub RFCs discussion page.

You may file issues in the RFCs repo for discussion, but these are not actively looked at by the teams.

As a rule of thumb, receiving encouraging feedback from long-standing project developers, and particularly members of the relevant sub-team, is a good indication that the RFC is worth pursuing.

# ----- DELETE EVERYTHING FROM THE TOP TO THE SUMMARY LINE BELOW WHEN USING TEMPLATE ----- #

## Feature [name]

Single paragraph explanation of the feature

### What is the relevance of this feature?

Why is this important? What are the use cases? What will it do once completed?

### What are the advantages of the feature?

- Explain the advantages of making this change.

### What are the disadvantages of the feature?

- Explain any disadvantages of this change. Please take counterarguments in good faith and accurately represent any concerns that you or others have shared about
  the suggested feature.

### Feature design description

- Explain the design of the feature with enough detail that it could be implemented.

### Technical considerations

- Include information related to infrastructure hosting (such as web hosting or GitHub workflows) which is affected by this feature.
- Include any required integrations between external services (such as Discord or GitHub).
- Include information on which parts of the O3DE source need to be touched to enable this feature as currently designed.

### Are there any alternatives to this feature?

- Provide any other designs that have been considered. Explain what the impact might be of not doing this.
- If there is any prior art or approaches with other frameworks in the same domain, explain how they may have solved this problem or implemented this feature.

### Are there any open questions?

- What are some of the open questions and potential scenarios that should be considered?
