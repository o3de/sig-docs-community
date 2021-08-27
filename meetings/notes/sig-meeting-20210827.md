# Docs & Community SIG meeting - 2021-08-25 

**Facilitator**: Stephen Tramer (stramer) **Notes taker**: Liv Erickson (Liv [AWS])

[Agenda](https://github.com/o3de/sig-docs-community/issues/5) 

Attendees:
* stramer [Amazon]
* Chanelle [Amazon]
* Finite_State 
* Liv [AWS]
* JT [SCB_GameDesign]
* Pinfel
* Will Hayward [Amazon]

# SIG Updates
*Presenter*: Stephen Tramer
* We will be starting to triage community issues for documentation soon. More details to follow. 

# Docs / Community Charter
*Presenter:* Stephen Tramer
* The SIG is the documentation and community management group; manages the content of the O3DE user guide, documentation for core Gems (including Atom renderer), going to start maintaining the standards for engineering documentation, API documentation standards, minimum requirements. These discussions are starting to happen here soon and guidelines will be posted for people to follow. 

* Also owns blog, training, tutorial - "anyting considered an official resource"

* Controlling and managing forums, Discord, and community engagement channels 
-- Question: How does the overlap work with operations on Discord and engagement?


* Documentation and community have aligned but separate goals; 
    * Docs handles releases for docs, versioning
* Do we have onboarding goals? Should be captured somewhere. The docs team wants to make the taxonomy and goals of different types of documentation content public.
-- Community goals: these overlap with things that Linux Foundation owns and orchestrates; we would like more feedback on this. 
-- Some goals related to community might go to other committees 

* We might not want to own: website infrastructure; that should be owned by marketing committee or owned by another group; potentially operations? The software developement for documentation - how do people feel about the code and content being mixed? 

    * JT: This overlaps with onboarding new developers and community members; the friendliness of the documentation will result in onboarding (or offboarding) people to the project. Mentions an agile style documentation that isn't heavy on the front-end. 


* Scope  - What should be removed or added?
    * Finite_State: Samples and tutorials: what sort of content that isn't traditionally part of the engine, but is a stumbling block (e.g. basic math and programming concepts). stramer: for the SIG, that is probably outside of scope for us, since the goals are to teach the product. It's valuable for us to address these techniques, but feels like a project to take on in the future. Could be something that we look for in the future, do an investigation and potentially help develop these, especially if someone was interested in taking the work on. We'd host the samples. We should discuss at a future point. 

    * Will Hayward: Producing and hosting video training? Yes, this is something that we do want to own. Might want to be explicit about which types of videos may fall into documentation (e.g. tutorials) or community (spotlights, overviews). We will have the tutorials go into docs and other non-tutorial videos in the domain of community. Community will maintain the channels.

    * UI/UX could potentially own the website; marketing committee could also potentially take this on when it's spun up. 

    * Liv mentions roadmap is up for discussion, and that D&I has a committee 


## Action Items: 

* Stephen will reach out to SIG-Operations and see about offloading some of the management with Discord
* Establish way to share taxonomy of goals for documentation to the public for feedback and clarity 
* Stephen will open a PR or issue to allow people to provide feedback on scope of the charter


# Blogs
*Presenter:* Liv Erickson
[Blog contribution pull request](https://github.com/o3de/o3de.org/pull/749)
* Doug has made a PR submission (#749) which is a blog post guidelines for how to accept blog posts. 

## Action Items: 
* We will have the discussion on the issue. Will would like to get final feedback by 9/3 on the PR. 

# Open issue marked for sig-review for a PR template
*Presenter*: Stephen Tramer

[PR template pull request link](https://github.com/o3de/o3de.org/pull/749)
* We would like to get ideas: Would it be helpful to have a template that reminds them about style guide and reading the rules? 
    * If it re-iterates things that are known, it would probably be fine
    * Aim is to keep documentation in a friendly, personable tone
    * Ensure that the documentation is consistent and answers questios that users may have
    * Add checkboxes for "I read the contributor guide / agree to code of conduct" 

## Action Items:  
* Update the PR template and merge it


# How often should these meetings be held?
*Presenter*: Stephen Tramer 
- Do we want to stagger them?
- Do we want to have more frequent SIG meetings with smaller group meetings? 
    * We may not really need to meet as much for an all-up meeting, and once a month would be a good cadence for the whole group
    * We should keep GMT-friendly times (between 9-11am PT)
    * JT suggests that there could be multiple times that account for a wider range of time zones (does require special attention to communication and note-taking to keep the groups in sync)
    * Fridays are not ideal because it's the weekend for some

## Action Items:
* Next SIG meeting is tentatively one month from now, week of 9/20 - three weeks before O3DECon and four weeks before the start of the current proposed start of the game jam. 


# Future topics
* Start talking about specific projects on a wiki page / discussion / issue so we can begin to organize around specific documentation initiatives 
* Documentation roadmap - what projects are teams looking at and planning to address? 
* Onboarding workflow; ratio of time investment for documentation.
* Get feedback on the language in the guidelines around internationalization; ensuring that the documentation and guidelines for contributing are accessible 

# Questions
Q: Is the pull request process the only way that people can contribute to or provide feedback for documentation? A: Yes, right now. We do eventually need feedback mechanisms eventually. If a community member wants to implement, we would accept it. One way of capturing feedback is that we could add a "report issue" / "provide feedback" button next to the "edit this page on GitHub". [Feature request issue for feedback](https://github.com/o3de/o3de.org/issues/845)

Q: What do you know about documentation that is going to be handled immediately (or not)? Curious about the roadmap for documentation. A: We are planning to have a heavy focus on script canvas and physics because they're critical for collision and other key gameplay elements. Probably will also focus on editor integration; things for python scripting of the editor and of asset management and building. Please file feature request issues if you have specific topics you want us to cover!