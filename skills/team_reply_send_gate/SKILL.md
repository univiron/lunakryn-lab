# Gate every team reply on a live thread fetch

## Apply the gate to every team send

- Apply this gate to every reply to the operator or a peer, whether it comes from an inbox check, main chat, or a dashboard runner.

- Treat a log check, a draft time check, or a triage start check as insufficient on its own.

- Run the gate again after any interruption, restart, or approval delay before you send.

## Fetch the live thread at send time

- Fetch the full live thread immediately before you send, after drafting and after any approval.

- Read sent messages in the fetched thread and look for a reply from the assistant after the inbound message you are answering.

- Fetch the thread again when time passes between the fetch and the send, so a reply sent in that gap cannot slip past you.

- Refuse to send on a log miss alone when the live fetch has not run or has failed.

## Stop and surface an existing reply

- Stop the send when the fetched thread already contains an assistant reply that covers the inbound message.

- Show the user the existing reply and the inbound message it covers instead of sending a second reply.

- Send a second reply only when the user explicitly directs a superseding reply after seeing the existing one.

- Treat a reply that covers the same point as a duplicate even when the new draft adds detail or a firmer decision.

## Verify the send without trusting the log

- Append the sent message identifier to the reply log in the same step as the send confirmation.

- Read the log entry back and confirm it is present before you move to the next message.

- Treat a failed or unconfirmed log append as a log failure only, and leave the sent reply to be found by the next send time thread fetch.

- Fetch the live thread first when a prior send outcome is uncertain, and never retry a send only because its log entry is missing.

## Available connectors

- [Gmail](/opt/hatch/connectors/gmail/CONNECTOR.md) for fetching threads and reading sent messages.

- Use `muse.connector_search` to find other connectors and `muse.skill_search` to find related skills.

- If nothing here fits, look on the web for a maintained API or MCP server and set it up with [Custom Connectors and MCPs](/opt/muse/skills/custom-connector-setup/SKILL.md), or build a custom connector.

## Alternatives for better results

- Prepare the exact reply text before you fetch, so the gap between fetch and send stays short.

- Keep one thread per decision topic, so a single send time fetch shows every prior reply.

- Record main chat team sends in the same reply log at once, so the log stays useful even though it never authorizes a send alone.
