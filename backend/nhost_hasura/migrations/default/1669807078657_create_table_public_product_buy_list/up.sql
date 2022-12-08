CREATE TABLE "public"."product_buy_list" ("uuid" uuid NOT NULL DEFAULT gen_random_uuid(), "buy_list_uuid" uuid NOT NULL, "product_uuid" uuid NOT NULL, "price_uuid" uuid, "quantity" integer NOT NULL, "bought" boolean NOT NULL DEFAULT false, "updated_at" timestamptz NOT NULL DEFAULT now(), "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("uuid") , FOREIGN KEY ("buy_list_uuid") REFERENCES "public"."buy_list"("uuid") ON UPDATE cascade ON DELETE restrict, FOREIGN KEY ("product_uuid") REFERENCES "public"."product"("uuid") ON UPDATE cascade ON DELETE restrict);
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_product_buy_list_updated_at"
BEFORE UPDATE ON "public"."product_buy_list"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_product_buy_list_updated_at" ON "public"."product_buy_list" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
