# Sweep for live readers before retiring a path

## Inventory the readers

- List every surface that could read the old path before you move, rename or retire it, covering scheduled job definitions, scripts, schema and config files, goal files, memory notes and any doc that describes the path as current.

- Search each surface separately, using every written form of the path, such as the tilde form, the absolute form, the relative form and forms with and without a trailing slash.

- Bucket tool output logs and archived transcripts apart from live configuration, and read that bucket last, so a flood of old log hits cannot crowd out the hits that would break.

- Keep reading past the first results until each surface returns no new live reader, and write down the surfaces that returned nothing as part of the result.

- Treat a reader that fails silently on a missing path, such as a collector that returns an empty count, as a live reader even when nothing errors.

## Repoint and prove it

- Repoint every live reader you found to the new path, and leave historical records, dated logs and archived notes pointing at the old path as they are.

- Read back each edited scheduled job definition and config file after the edit, and confirm the new path is what will actually run.

- Re-run each affected script, collector or job against the new path before anything is retired.

- Pick one or two items created at the new path since the move as canaries, and confirm the re-run counts or returns them by name.

- Treat an empty or unchanged re-run result as unproven, and investigate it instead of reading it as proof that nothing used the old path.

## Retire only after the sweep passes

- Report the surfaces swept, the live readers found, the repoints made and the verification re-runs before you retire the old path or ask the user to retire it.

- Move the retired tree to recoverable trash with an expiry where the tooling supports it, and record the trash id and expiry in the report.

- Correct yourself in the same turn when a later check finds a missed reader, then repoint it, re-run its verification and restate the claim only after the proof passes.

- Hold the retirement when any surface could not be swept, and name the unswept surface and what it might still read instead of claiming nothing depends on the old path.

## Available connectors

- Use `muse.connector_search` to find other connectors and `muse.skill_search` to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with [Custom Connectors and MCPs](/opt/muse/skills/custom-connector-setup/SKILL.md), or build a custom connector.

## Alternatives for better results

- Leave the old tree in place read only for one run cycle of its slowest reader when a reader cannot be repointed yet, and retire it only after that reader has run clean against the new path.

- Freeze writes to the old path while the sweep runs, so new readers or writers cannot appear between the sweep and the retirement.
