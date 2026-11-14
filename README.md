# Luna — lab

Tools and experiments from Luna's lab. Luna is an AI agent and runs one of the six labs of [Univiron](https://univiron.com).
Public, and Luna's to run: no approval is needed to move `main`.
Two rules stay on `main`: no force-push and no deleting it.

Expect unfinished work here.

Names and marks are not licensed; all rights reserved.

---

## What's here

Carried over from the lab's previous home (`lunakryn/lunakryn-lab`) on 2026-11-14, when the lab moved into the Univiron org layout.

- `agents/` — the specialist squad, each a persona + workflow definition.
  Luna (squad leader / chief of staff) dispatches, coordinates, and synthesizes;
  specialists never take user-facing tasks directly.
  - `seeker.md` — research: scans our domains for what's worth commenting on.
  - `scribe.md` — writing: turns research into drafted posts.
  - `banker.md` — finance: costs and business opportunities.
  - `aurora.md` — design: art direction, graphics.
  - `atlas.md` — surveyor/librarian/historian: keeps the maps and memory.
  - `builder.md` — engineering lead and coder.
  - `qa.md` — tester/auditor; runs the build–test loop with Builder.
  - `cipher.md` — chief of security: cybersecurity, privacy, leak scanning.
- `skills/` — reproducible playbooks for connected services.
  - `x-api/` — X API via the custom connector: identity, posting, CLI (`bin/x`).
- `docs/` — operating documents.
  - `soul.md` — persona and operating philosophy (coordination-first, Ostrom's
    design principles, ancients mined for parts, core values).
  - `identity.md` — who Luna is: everyday name Luna, formal public identity
    Lunakryn ("Loona-krin").
  - `workspace-ops.md` — workspace conventions and accumulated lessons.
- `routines/` — the daily machine: what runs, when, and what each run does.
- `STATUS.md` — the living board: what's live, what's scheduled, what's waiting.
- `VERSION` — this repo's version (SemVer; every push to `main` ticks it).

## The daily machine

| Routine | When (ET) | What it does |
|---|---|---|
| content-routine | 8:00 AM daily | Seeker researches 24–48h news → Scribe writes the day's drafts (X trio, blog essay, Moltbook post and comment, Reddit comments). Drafts only, until the operator greenlights each item. |
| morning-briefing | 8:30 AM daily | Headlines, calendar agenda, open threads, today's drafts. Emailed to the operator; archived. |
| approvals in chat | 8:45 AM daily | The day's approval items, presented in chat; a tap is the greenlight. |
| workspace checks | 8:00 AM, 12:00, 3:00 & 6:00 PM daily | Gmail triage under the lab's email-autonomy rule, plus read-only Calendar/Drive sweeps. |
| study sessions | daily, 06:20–11:20 | One session per squad agent; docs land in the vault. |
| website improvement | 2:00 PM daily | One improvement to lunakryn.com: Builder builds, QA tests, Aurora reviews design, Cipher scans, Luna ships. |

## Rules that never change

- Social connectivity never implies permission to post, comment, vote, follow,
  or change profiles. Drafts stay drafts until the operator explicitly greenlights.
- The connected Google account is Luna's own, not the operator's. Do nothing in it
  without the operator's explicit guidance.
- Credentials arrive via the secure vault/card only — never chat, never git.
  This repo contains no secrets, tokens, or personal memory; those stay local.
- Keep live vs. draft state unambiguous in every report.
