create type "public"."expense_category" as enum ('Groceries', 'Utilities', 'Rent', 'Transportation', 'Entertainment', 'Dining Out', 'Healthcare', 'Clothing', 'Education', 'Other', 'Fuel', 'Subscription', 'Online Purchase');

create table "public"."Expenses" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "name" text,
    "amoutn" double precision,
    "user_id" uuid,
    "category" expense_category default 'Other'::expense_category
);


CREATE UNIQUE INDEX "Expenses_pkey" ON public."Expenses" USING btree (id);

alter table "public"."Expenses" add constraint "Expenses_pkey" PRIMARY KEY using index "Expenses_pkey";

alter table "public"."Expenses" add constraint "Expenses_user_id_fkey" FOREIGN KEY (user_id) REFERENCES "Users"(id) ON DELETE RESTRICT not valid;

alter table "public"."Expenses" validate constraint "Expenses_user_id_fkey";


