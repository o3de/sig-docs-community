# Projects proposed for the SIG

During the early days of Open 3D Engine we'll be taking project pitches to find people interested in running or participating in certain medium- and long-term efforts to improve the documentation of O3DE (or access to it) and community outreach.

## How to propose a project

If you're planning to take long-term effort on something which affects the responsibilities of the D&C SIG according to its charter, you might want to propose a project so that at minimum, the SIG is aware that the work is happening (even if it's not "officially" approved.)

Add a row in the table below via a PR to propose a project! Any proposals submitted as changes will be accepted onto this page as long as they:

* Align with the [SIG Charter](https://github.com/o3de/sig-docs-community/blob/main/governance/charter.md) in some way.
* Follow the [Code of Conduct](https://github.com/o3de/community/blob/main/code-of-conduct.md) in their description and intent.
* Fill in the **Project Name**, **Proposer**, and **Description** columns in their table row. If you're currently working on the project in some form (such as RFC or personal research) then please place a `:white_check_mark:` (:white_check_mark:) in the **In Progress** column.

## "Approved" projects

A project gets "official" approval at the discretion of the SIG, which means additional access to organizational and note-taking tools, and projects are required to regularly report on progress (and blockers) to drive behaviors and priorities for _other SIGs_ which block our committed projects. Approved projects are also eligible for a slot on any public roadmaps.

## Project list

Some notes:

* Only officially approved projects have an assigned owner.

| **Project Name** | **Proposer** | **Description** | **In progress** | **Approved** | **Owner** |
|--|--|--|--|--|--|
| Example | @sptramer | Just an example. | :x: | :x: | :x: |
| Lua API Reference | @FiniteStateGit | Proposed project - Lua Documentation.  Determine what steps are required to generate online documentation of the Lua API.  Determine if o3de\Assets\Editor\Translation\scriptcanvas_en_us.ts is sufficient to generate an API.  If generating API documentation is technically feasible, proceed with documenting the API on the docs site.  Scope of proposed documentation: Reflected class_name, method_name, method_parameters, parameter_type. | :x: | :white_check_mark: | @FiniteStateGit |
| Programmer Guide reorganization | @chanmosq | We have a discoverability issue on the documentation website: Information for core developers (and others) is scattered in locations where it can be difficult to find, especially with the website search not working well. We'd like to discuss finding a good way to reorganize the content and get people interested in content architecture working together. | :white_check_mark: |  :white_check_mark: |@chanmosq |
| Minimum viable documentation | @sptramer | Right now there is no amount of documentation required for a feature for O3DE to be considered "DONE". This project will work to define reasonable docs-related requirements (including requirements on API reference) that we feel feature engineers _must_ meet in order to submit a feature. | :x: | :white_check_mark: | @sptramer | 
| Website versioning | @sptramer + sig-release | The website needs to be versioned! This will become an increasingly important problem as we release versions which will be in production for longer stretches of time (Long Term Release, LTS). We also have an issue where the velocity of `development` is impossible to track correctly in tandem with website deployments - separating "stable" documentation for a box release will help us provide guidance for in-flight documentation processes, since there will be a whole docset based around `development`. | :white_check_mark: | :x: | @willihay |
| API reference generation | @sptramer | Currently API reference is generated on a manual basis "when I (@sptramer) remember to do it." Obviously this is not acceptable, especially under website versioning! This project requires an RFC (for process and infrastructure approval), and implementation work (to provide the system for generation). Templates and tools being used to generate the documentation in its current state will be made available. | :x: | :x: | |