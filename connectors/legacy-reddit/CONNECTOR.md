

# Reddit

## Purpose
Use Reddit's official OAuth API with the user-connected `custom.reddit` credential (registered app, scopes: identity submit).

## Tooling
CLI: `~/workspace/custom-connectors/custom.legacy-reddit/bin/reddit`.

```
reddit me                          # verify auth, show the connected Reddit username (ALWAYS check this first)
reddit post <sub> <title> <body>   # submit a self post to r/<sub> as the connected user
```

CLIs must use authd surrogates via `/opt/muse/skills/custom-connector-setup/bin/dynamic_credentials.py`.
They must not read OAuth client credentials, refresh tokens, or access tokens directly.
Reddit requires a descriptive User-Agent on every request.

## Auth
The credential is already stored; nothing here collects one. Never ask the user to paste a raw key in chat, set a secret environment variable, pass a secret flag, or write an auth file.

**Critical:** before any post, run `reddit me` and confirm the username is `lunakryn`. If the token belongs to any other account (e.g. the user's personal Reddit account), STOP — do not post. Tell the user to redo the connect flow while logged in as u/lunakryn.

A 401/403 is a question about the request before the key: check the surrogate was attached and the User-Agent set. Only after a credential-carrying request is still rejected, call `credentials.request_api_access` with `reconnect=true` for provider `reddit`.

## Operating Rules
1. Restrict authenticated requests to: oauth.reddit.com.
2. Do not print, log, or persist raw credentials.
3. Posting is drafts-by-default: only post content the user explicitly approved.
4. Respect subreddit rules; no spam, no flooding (space posts well apart).
