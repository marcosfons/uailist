alter table "public"."supermarket"
  add constraint "supermarket_created_by_user_uuid_fkey"
  foreign key ("created_by_user_uuid")
  references "auth"."users"
  ("id") on update cascade on delete restrict;
