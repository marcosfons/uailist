CREATE TABLE "public"."price" ("uuid" uuid NOT NULL DEFAULT gen_random_uuid(), "product_uuid" uuid NOT NULL, "supermarket_uuid" uuid NOT NULL, "price" integer NOT NULL, "updated_at" timestamptz NOT NULL DEFAULT now(), "created_at" timestamptz NOT NULL DEFAULT now(), PRIMARY KEY ("uuid") , FOREIGN KEY ("product_uuid") REFERENCES "public"."product"("uuid") ON UPDATE cascade ON DELETE restrict, FOREIGN KEY ("supermarket_uuid") REFERENCES "public"."supermarket"("uuid") ON UPDATE cascade ON DELETE restrict, CONSTRAINT "price_is_positive" CHECK (price >= 0));
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
CREATE TRIGGER "set_public_price_updated_at"
BEFORE UPDATE ON "public"."price"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_price_updated_at" ON "public"."price" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
