# Publish to a version guarded repo on schedule

## Check the guard before you schedule

- Confirm the repo is one of Luna's own repos before you apply this method.

- Check for a pre-push guard and a VERSION file at the repo root before you schedule a push.

- Stop and ask the user when a change looks breaking or would need a major version or a 1.x version.

- Treat a scheduled push as a push to main for guard purposes, since the guard checks main pushes and lets tag pushes pass.

## Build the bump into the job

- Add a patch bump step to the job definition for new content such as a blog essay.

- Run the repo bump script from the repo root in that step so VERSION moves in the same commit as the published content.

- Add VERSION to the files the job commits, alongside the content and any rebuilt output.

- Never let a job commit only content and rebuilt output without VERSION.

- Keep the bump script out of major version work, since it has no major mode by design.

## Verify before the fire time and after the push

- Read the booked job definition back before its fire time and confirm the bump step and VERSION are present.

- Surface a missing bump step well before the fire time instead of letting the job run and fail.

- Remember a failed scheduled push does not retry, so a fix after the fire time means rescheduling.

- After the push lands, add an annotated tag matching the new version with a v prefix and push the tag separately.

- Verify the live site after the push by checking that the post count moved and the new post serves.

- Report the version, the commit, and the tag together once all three are verified.

## Available connectors

- [GitHub](/opt/hatch/connectors/github/CONNECTOR.md) for working with the repo and its pushes.

- Use `muse.connector_search` to find other connectors and `muse.skill_search` to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with [Custom Connectors and MCPs](/opt/muse/skills/custom-connector-setup/SKILL.md), or build a custom connector.

## Alternatives for better results

- Reuse one fixed publish job template for repeat essays, so each new date only changes the content and the fire time.

- Check the guard state at authoring time rather than at fire time, so a missing bump is a drafting error and not a missed deadline.

- Keep content approval and version ceremony as separate decisions, so a greenlight for content never silently implies a version change.
