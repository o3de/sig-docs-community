# Docs & Community SIG meeting - 2021-06-04

Facilitator and meeting notes: Stephen Tramer

## Agenda

### O3DE docs and site update

*Presenter*: Stephen Tramer

* Primary documentation focus is for our 7/6 alpha, and now that a stabilization branch is cut, we're reprioritizing around major features.
  * Less of a focus on content creation
  * Higher focus on engine development, Gems, infrastructure, core principles
  * Major other flows: Installation, build, project setup, external projects/"O3DE as SDK"
* Website focus:
  * Clean up the Table of Contents behavior
  * Clean up the blog roll
  * Other minor cleanup around the Website

**General questions**

* Better name for "O3DE as SDK" - describing it makes it clear how inadequate the name is, as the docs go up we're encouraging feedback
  for a better name. O3DE would be better described as "project-centric" when used in this mode, where it's a series of binaries and tools
  used by a project rather than built into a monolithic lib?

**Actions**

* Partners, please go to the website and find areas you're most interested in, and file bugs (including specific requests)
  so that we can be aware of where the biggest problems are and prioritize work.

### Tutorials planning

*Presenter*: Melissa Austin

* "Day One" and "Week One" topic styles:
  * "Day One": The startup experience and getting running. What is O3DE, quick concepts, getting running (binaries and GitHub), beginner workflows, building, etc.
  * "Week One": More in-depth content that starts directing people in specific disciplines towards proficiency with O3DE.
    * We have a large backlog of this, which includes items in the GitHub Issues for written content

**Clarifications**

* Our documentation should be descriptive, not prescriptive, for now. This is a bigger discussion to happen within the SIG leading up to release and post-7/6.
* Documentation will remain largely fragmented for the moment and step-oriented, because of the high velocity of the project.
* "Best practices" discussion hasn't really happened yet - needs to occur early after release.

### Community strategy

*Presenter*: Phillip Wang

* Looking for partners to form up a group to help with Day One material and get the initial community kickoff running.
* [Supplemental PDF](supplements/early-community-strategy-20210604.pdf)

### API Reference Project

*Presenter*: Stephen Tramer

This will be our first major project for the SIG. The goal is to establish some minimum guidelines for API content with the
\#sig-core team (via representative(s)) as well as a "north star" for an ideal state of the documentation. The initial project
group should be 3-5 people who are willing to focus on a single vertical in the source code to provide high-level, comprehensive
documentation that meets these standards to provide an example of the kind of quality we strive for (but won't necessarily require).

### Meeting cadence

* Next meeting: June 15-17, Pacific-friendly
* Final pre-release meeting: July 1, EU-friendly

## Ongoing discussions

### Descriptive vs. Prescriptive docs

This is effectively a "procedure vs. best practices" style question. The general policy of the
Amazon team so far has been to write feature documentation as descriptive ("Feature X does Y, available through Z interfaces") and
prefers to write tutorials, samples, examples, and how-to content as prescriptive by offering multiple paths to success through
a variety of examples. Neither of these are probably appropriate for a project like O3DE or maintaining a style and voice that
would encourage common workflows while allowing for flexibility.

## Action items

* **Stephen Tramer** to produce an official project proposal (+ template?) for the API Reference Project
* **Derek Reese** to connect the docs & community teams with other members of LF projects
