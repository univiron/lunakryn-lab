# Answer a blocked task directly without deflecting

## Name the block in the first reply

- State plainly what cannot be done, what was actually tried, and what specifically blocks it, in the first reply that reports the block.

- Separate a verified limit from a guess by saying which part was checked and which part remains unknown.

- Answer the user question about what guardrail or limit was hit directly, without requiring them to ask twice.

## Stay on the blocked task

- Offer only alternatives that advance the same task the user named, such as another route into the same system or a verified indirect route that reaches the same result.

- Do not substitute unrelated pending work, approvals, schedules or status items for the blocked task, and do not present them as progress on it.

- Keep working the on-task alternatives the user accepts, and report each result against the original task before raising anything else.

## Do not repeat a refusal

- Treat a repeated user request after a refusal as a signal that the limit was not explained clearly enough, and explain it more concretely instead of sending a near identical refusal again.

- Change something real on each retry, such as a new check, a new route or a clearer statement of the limit, and say what changed.

- Stop retrying a route after it fails twice and report the honest read with the best remaining on-task route.

## Close the loop when a route works

- Verify the alternative route actually reached the intended destination before claiming the task is done.

- Correct any earlier overstated claim about completion in the same turn the gap is found, and distinguish an acknowledgment from the completed action.

- Offer to file feedback about a missing capability only once, through the Muse feedback skill, and only after the limit and the on-task alternatives are already clear to the user.

## Available connectors

- Use `muse.connector_search` to find other connectors and `muse.skill_search` to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with [Custom Connectors and MCPs](/opt/muse/skills/custom-connector-setup/SKILL.md), or build a custom connector.

## Alternatives for better results

- Ask the user to perform only the one step that is genuinely on their side of the limit, such as signing in or approving access, and resume the task yourself as soon as that step clears.

- Prefer a verified indirect route that fully reaches the goal over waiting for the direct route, and label it as indirect so the user knows which path was used.
