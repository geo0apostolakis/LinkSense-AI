-- Waitlist table for LinkSense AI. Run in your Supabase project's SQL editor.

create table if not exists public.waitlist (
  id         bigserial primary key,
  name       text        not null,
  email      text        not null unique,  -- a second sign-up with the same email is refused
  created_at timestamptz not null default now()
);

alter table public.waitlist enable row level security;

-- The page holds the public anon key, so anon may insert and nothing else.
create policy "anon can join" on public.waitlist
  for insert to anon with check (true);

-- Reading the list needs a signed-in dashboard user.
create policy "authenticated can read" on public.waitlist
  for select to authenticated using (true);
