create table "public"."Income" (
    "id" uuid not null default gen_random_uuid(),
    "created_at" timestamp with time zone not null default now(),
    "source" text,
    "user_id" uuid,
    "amount" double precision
);


CREATE UNIQUE INDEX "Income_pkey" ON public."Income" USING btree (id);

alter table "public"."Income" add constraint "Income_pkey" PRIMARY KEY using index "Income_pkey";

alter table "public"."Income" add constraint "Income_user_id_fkey" FOREIGN KEY (user_id) REFERENCES "Users"(id) ON DELETE RESTRICT not valid;

alter table "public"."Income" validate constraint "Income_user_id_fkey";


