CREATE TABLE "public"."supermarket" ("uuid" uuid NOT NULL DEFAULT gen_random_uuid(), "name" text NOT NULL, "image" text NOT NULL, "address" text NOT NULL, "latitude" float8, "longitude" float8, PRIMARY KEY ("uuid") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
