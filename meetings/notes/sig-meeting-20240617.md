# Docs & Community SIG meeting - 2024-06-17

**Facilitator:** @roddiekieley

**Notes takers:** @roddiekieley, @ShaunaGordon

[Agenda]()

## SIG Updates

Updates from the SIG itself. Information will be provided in advance on the agenda issue.

- Ad hoc meeting with a view to understanding where the O3DE documentation repo, o3de.org, is from a technical point of view with respect to the stabilization ongoing for the upcoming 24.09 O3DE engine release later in 2024.
  - No stabilization branch created yet for o3de.org
  - Process dictates development branch -> stabilization branch, eventually PR -> merge to main -> docs site update for release
    - currently not enforced as only way to update main; hence divergence between development and main
    - likely need @naomi-wash assistance with settings
    - should be modelling how the o3de repo operates
  - GH Discussions vs. Discord longevity
  - Need to review existing PRs and either redirect to development branch if required or reach out to contributors to have them redirect as required
  - Need to clean up existing PRs, merge or close if stale to start with as clean a plate as possible
  - Go through [BROKEN LINK] issues, clean those up
  - Desired state: a good site that we can add automation to to keep clean
  - Ideas for plan to resync development and main
    - Could go through commits that differ and resolve individually
    - Could also merge main -> development then development -> stabilization and then eventually stabilization -> main upon release
      - Might need to force push depending on technique

### Open questions

* Briefly describe any remaining open questions to be created as an issue post-meeting
* need to protect main branch from 'outside the process' merges?
* reasonable to force push if needed to resync branches? if so what permission updates required?
* netlify use vs. automation via github actions?
* would it make sense to use the wiki as a more single source of truth for o3de.org related information for developers?

### Action items

#### Potential next steps summary: ####

1. Lock down main branch for stabilization PRs only (use o3de repo as a guide)
2. Clean up main and dev branches so main is properly "behind" development
3. Proposed way - make sure everything in main is in dev and force push dev back to main
4. Create stabilization branch from dev and keep new process going forward
5. Tag existing PRs for redirecting to development (or update PRs to point to development instead of main)
6. Clean up existing PRs, moving all to development if possible (or request contributor to switch to development branch)
7. Run through broken links issues (could be put aside or done in parallel) as part of stabilization for release
8. Run through any PRs

## Miscellaneous

- also touched on sidebery plugin for firefox or the arc browser on Windows as ways to manage tab lists in a single window
