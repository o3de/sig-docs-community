# Docs & Community SIG meeting - 2021-05-11

Facilitator and meeting notes: Stephen Tramer

## Overall notes

* For this first meeting participants are encouraged to submit a pull request to these notes adding contact information, filling out names, and
other information that will help us collaborate as we start bringing participants together in the SIG.

## Agenda

### Introductions

*Presenters:* Any/all

* Amazon leads:
  * Documentation: Stephen Tramer (lead), Doug Erickson (manager), Chanelle Mosquera (Atom renderer), Mike Cronin (animation, art, contribution guides, and Gems), William Hayward (scripting, content architecture)
  * Community: Melissa Austin (manager/lead), Alex Damarjian (A/V content, tutorials), Phillip Wang (community manager)
  * `sig-ux` liaisons: Yuyu Hsu (manager), Joshua Rainbolt (site design)

  Please contact members of the Amazon team if you need assistance with accessing the documentation site or any O3DE foundation repositories.

* Partner participants:
  * Apocalypse: Denis Dyack (tutorials and samples support, O3DE user)
  * Kythera: Robin, Matthew Jack (AI Gem)
  * RedHat: Erik Jacobs (copy support, OSS expert)
  * Backtrace: Jason D (debugging Gem(s))

### Site and docs state

*Presenter*: Stephen Tramer

Visual runthrough of the site as it exists at the moment, and the general content architecture. The most important thing for contributors onboarding is: [Follow the contributor guide](https://o3deorg.netlify.app/docs/contributing/). It contains all kinds of information regarding site structure, style, terminology, Hugo shortcodes, PR submission, and review.

* Suggestion: Rather than using 'Welcome', we may want to consider the more standard 'Get Started' or some other similar nomenclature. The User Guide landing page should 
  link directly to Welcome, rather than leading into the "available features". Possible onboarding funnel issue.

  *Recommended action:* Further discussion or a pull request demonstrating a good fix for the problem.

### Content priorities and issue backlog

*Presenter*: Stephen Tramer

Runthrough of the current state of GitHub Issues for the o3de.org repo. Overview of `good-first-issue` and how the tagging system is currently used. As of this meeting there
is no automation or templates. They're on an internal roadmap: Templates should be in place by 5/31 and automation before launch date.

* Tutorials: Apocalypse and Denis to discuss the following with Alex Damarjian:
  * Default or template assets pre-approved for use with tutorials. Based on information from Royal O'Brien, we may be able to use some Kitbash3D resources for this
    exact purpose. Make sure to loop Royal in.
  * Video tutorial content

* AI Gem documentation: Representatives from Kythera to take on AI Gem documentation tasks. Still needed to discuss (w/existing site architects & AMZN business):
  * How/if Kythera licensing for the Gem will affect its representation in open source documentation
  * How the Gem will be distributed (presumably core O3DE?)
  * Whether AI should be its own section of the guide, or remain exclusively part of the Gem Reference

* Backtrace Gem and debugging: Representatives from Backtrace will take on some of these documentation tasks. Still need to discuss:
  * Exactly which topics will be owned by Backtrace before launch, and which cover "general debugging" vs. Backtrace-specific features.

### SIG business

* Charter: Overview of the [Docs and Community SIG charter](https://github.com/o3de/foundation/blob/master/sigs/sig-docs/sig-docs-community-charter.md) roles and responsibilities.
  * **Issue:** Raised the fact that it hasn't been clear that this is a documentation "and community" SIG. The SIG is being (incrementally) renamed to reflect this, as
    `sig-docs-community` and referred to as the "D&C SIG" rather than "Docs SIG".

* Cute animal mascot: Suggested that as part of the default asset set we have some sort of community collaboration to create a character/mascot suitable
  for them.
  
  **Followup:** A brief internal Amazon discussion essentially said: "Good idea, but not right now." Any further discussions postponed until after launch to avoid
  the perception that we're "wasting time on unimportant things" (a valid criticism people would have, even if cute animal design is unrelated to engineering tasks.)

* Code of conduct: Our official code of conduct isn't established yet. For now we are using the CNCF (Cloud Native Computing Foundation) code of conduct. Amazon is working
  internally with a number of DEI stakeholders, including individuals in AGS and GameTech, to help identify areas of concern unique to this project and how we can address
  them effectively.

* Terminology and style: We recommend interested partners take a look at these pages and submit issues, pull requests, or start discussions on the SIG mailing list or in Discord.
  * [Terminology](https://o3deorg.netlify.app/docs/contributing/to-docs/terminology/)
  * [Style Guide](https://o3deorg.netlify.app/docs/contributing/to-docs/style-guide/)

  **Of special interest to our copyeditor friends:** We do not currently follow or advise any particular manual of style. For contributors and partners who are more invested
  in making sure the copy passes of content go smoothly, please suggest _as much as you need to_ for the style guide.

## Postponed due to time

These items from the agenda will be prioritized for the next SIG meeting.

* Tutorial planning - "Day One" and "Week One" content types
  * *Presenter:* Melissa Austin
* Community strategy
  * *Presenter:* Melissa Austin

## Other remarks

Thank you for attending!
