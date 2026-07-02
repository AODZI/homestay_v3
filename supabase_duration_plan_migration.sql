-- Allow Admin duration plans: 7, 15, and 30 days.
-- Run this in Supabase SQL Editor.

alter table public.homestay_plans
  drop constraint if exists homestay_plans_plan_type_check;

alter table public.homestay_plans
  add constraint homestay_plans_plan_type_check
  check (plan_type in ('credit', 'yearly', 'infinity', 'days_7', 'days_15', 'days_30'));

