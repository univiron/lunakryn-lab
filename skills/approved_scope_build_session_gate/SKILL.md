# Gate a build session on its approved scope

## Write the scope before work starts

- Read the user approval and the session prep brief with `muse.read` before launching any specialist work.

- Write two short lists from that approval, one for changes the session may make and one for changes it must not make in this session.

- Copy both lists into the context of every `workflow.launch` call for the session instead of relying on a brief that a specialist may only skim.

- Treat words such as only, deferred, no new, and additions only as hard limits on the second list, not as preferences.

- Stop and ask the user before work starts when the approval and the prep brief disagree about whether an item is in scope.

## Check the diff before any sync

- Compare the staged changes and the final commit contents against both lists after testing and before any sync to main.

- Count a new guard, a new page element, a new concept, or a change to build behavior as out of scope when it is absent from the approved list, even when it works and passes tests.

- Make the scope comparison a separate pass or fail check alongside link, design, and security checks, so a session cannot pass on quality alone while carrying an unapproved change.

- Remove or stash any out-of-scope change before sync and keep it as a proposal for a later session unless the user approves it in the meantime.

- Recheck the diff after any fix round, because a repair can add a file or behavior that the first check never saw.

## Report the scope result

- State the scope check result in the session report beside the test, design, and security results.

- Name any out-of-scope item that was found and removed before sync, and say where it was left for a later decision.

- Never present a session as a clean pass when an unapproved change reached main, even when nothing broke.

- Flag a scope deviation in the same report that announces the shipment, with the approval wording that the change crossed.

## Available connectors

- [GitHub](/opt/hatch/connectors/github/CONNECTOR.md) for reviewing the commit, its changed files, and the push to main.

- Use `muse.connector_search` to find other connectors and `muse.skill_search` to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with [Custom Connectors and MCPs](/opt/muse/skills/custom-connector-setup/SKILL.md), or build a custom connector.

## Alternatives for better results

- Offer a deferred idea as a short proposal for a later session instead of building it inside the current one.

- Split the session when approved work and a new idea both deserve doing, so each part carries its own approval and its own report.

- Narrow the approved list further when a session touches a build guard or a publish path, because those changes can break work that is already booked.
