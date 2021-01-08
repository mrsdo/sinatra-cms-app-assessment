/*
 Navicat Premium Data Transfer

 Source Server         : development@localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 130001
 Source Host           : localhost:5432
 Source Catalog        : db/development
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 130001
 File Encoding         : 65001

 Date: 08/01/2021 12:06:25
*/


-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS "public"."companies";
CREATE TABLE "public"."companies" (
  "id" int8 NOT NULL DEFAULT nextval('companies_id_seq'::regclass),
  "name" varchar(200) COLLATE "pg_catalog"."default",
  "address" varchar(300) COLLATE "pg_catalog"."default",
  "logo" text COLLATE "pg_catalog"."default",
  "agents" varchar(255) COLLATE "pg_catalog"."default",
  "listings" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) NOT NULL,
  "updated_at" timestamp(6) NOT NULL

)
;
ALTER TABLE "public"."companies" OWNER TO "mj163";

-- ----------------------------
-- Primary Key structure for table companies
-- ----------------------------
ALTER TABLE "public"."companies" ADD CONSTRAINT "companies_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Cluster option for table companies
-- ----------------------------
ALTER TABLE "public"."companies" CLUSTER ON "companies_pkey";
