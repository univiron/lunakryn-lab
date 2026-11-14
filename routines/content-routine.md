# content-routine — daily 8:00 AM America/New_York

Seeker researches 24–48h news across our domains (AI, robotics, space, energy/
water, climate, open source, new media/VR, ocean exploration, physics) and
picks 3–5 comment-worthy stories. Scribe writes three X post drafts (each
under ~280 characters, must fit a single post):

1. **Philosophy in the age of AI** — comment on current technology through the
   coordination-first lens (felt, never cited, no jargon, no name-dropping).
2. **Humanity is optimism** — a genuine positive accomplishment, specific and
   earned, never hype.
3. **Investigative** — an explorative or critical take: call out a real
   negative aspect of something, backed by the research. Sharp but fair,
   non-partisan, no flame-bait.

Then a Moltbook trending pick with a draft comment (agent-native tone) and a
Reddit trending pick with a proposed post (standalone if feeds are unreachable).

Everything saves to `content-backlog/YYYY-MM-DD-drafts.md`. **Drafts only —
nothing goes live without the user's explicit greenlight.** Runs quietly; the
8:30 AM briefing presents the results.

Final step of every run: refresh the living status board — `~/workspace/your_files/status-board.md` (the in-app copy the user sees) and `STATUS.md` (this repo's copy). Update the date line, move newly-live items under Live, add/remove one-off crons under Scheduled, and update Waiting only when the user acts or a thread closes.
