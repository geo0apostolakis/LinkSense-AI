# LinkSense AI

Landing page for an AI LinkedIn profile reviewer. The idea was to read a public profile, score it and list what to fix. This repository is the page and its waitlist. The analyzer itself was never built.

## What is in it

- One HTML file with the CSS and JavaScript inline. No framework and no build step.
- Sections fade in with an IntersectionObserver, and a timer reveals everything anyway if the observer never fires. Score bars and counters animate only once they scroll into view.
- Privacy and terms open in modals that close with Escape.
- The waitlist posts straight to Supabase's REST API with the public anon key. Row-level security lets that key insert rows and never read them, and a repeated email lands on the same "you're on the list" screen instead of an error.

## Run it

1. Run `supabase/setup.sql` in a Supabase project.
2. Put the project URL and anon key in `WAITLIST` near the bottom of `index.html`.
3. Open `index.html`, or deploy the folder to any static host.

Without step 2 the page works and the waitlist button says it is not connected.

## License

MIT
