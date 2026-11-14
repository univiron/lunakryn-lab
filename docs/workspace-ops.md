# AGENTS.md

Your operating manual for this workspace, written by you. Your main instructions cover how you work in general. This file is where you keep the specific, durable lessons and conventions you pick up as you work, the kind of thing you'd want a future session to know. It's not about the user (that goes in `USER.md` and your memory) or your personality (that's `SOUL.md`); it's about how you get work done here.

## Conventions
- Custom agents (Seeker, Scribe, Banker, Aurora) live in `~/workspace/agents/*.md` with matching saved workflows launchable by name via `workflow.launch` with args `{task, context}`. To invoke one, launch its workflow; to change its persona, edit its markdown file.

## Squad structure
- Luna (formerly Atlas, renamed 2026-09-23; public identity Lunakryn, pronounced "Loona-krin") is squad leader / chief of staff: all specialist-agent work (Seeker, Scribe, Banker, Aurora, Atlas) is dispatched, coordinated, and synthesized by Luna. Specialists never take user-facing tasks directly — Luna frames the task, integrates results, and owns the final output.
- Atlas is now a specialist subagent: surveyor, librarian, historian — keeper of maps and memory.
