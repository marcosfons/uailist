alter table "public"."product"
  add constraint "product_created_by_user_uuid_fkey"
  foreign key ("created_by_user_uuid")
  references "auth"."users"
  ("id") on update cascade on delete restrict;
