-- ============================================
-- PocketGuardian AI v2 — Database Setup with Authentication
-- Run this ENTIRE script in Supabase SQL Editor (pocketguardian-v2 project)
-- ============================================

-- Tables (each row now belongs to a specific logged-in user)
create table contacts (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users(id) not null,
  name text not null,
  phone text not null,
  created_at timestamp default now()
);

create table sos_logs (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users(id) not null,
  latitude float,
  longitude float,
  created_at timestamp default now()
);

create table live_tracking (
  session_id text primary key,
  user_id uuid references auth.users(id),
  latitude float,
  longitude float,
  updated_at timestamp,
  active boolean default true
);

-- Enable Row Level Security
alter table contacts enable row level security;
alter table sos_logs enable row level security;
alter table live_tracking enable row level security;

-- Contacts: only the owner can see/add/edit/delete their own contacts
create policy "users manage own contacts" on contacts
for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- SOS logs: only the owner can see/add their own logs
create policy "users manage own sos_logs" on sos_logs
for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- Live tracking: owner can manage their own session
create policy "owner manages tracking" on live_tracking
for all using (auth.uid() = user_id) with check (auth.uid() = user_id);

-- Live tracking: anyone with the share link can VIEW (read-only) — needed so
-- family/friends without an account can open the tracking link
create policy "public can view tracking" on live_tracking
for select using (true);
