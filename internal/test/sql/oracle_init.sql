DROP TABLE "person_project";
DROP TABLE "projects";
DROP TABLE "people";

CREATE TABLE "people" (
  "id" number(*) PRIMARY KEY NOT NULL,
  "group_id" integer DEFAULT 65534,
  "name" varchar2(40) NOT NULL,
  "email" varchar2(40),
  "created_at" timestamp with time zone NOT NULL,
  "updated_at" timestamp with time zone
  -- created_at timestamp without time zone NOT NULL,
  -- updated_at timestamp without time zone
);

CREATE TABLE "projects" (
  "name" varchar2(40) NOT NULL,
  "id" varchar2(40) PRIMARY KEY,
  "start" date NOT NULL,
  "end" date
);

CREATE TABLE "person_project" (
  "person_id" integer NOT NULL REFERENCES "people" ON DELETE CASCADE,
  "project_id" varchar2(40) NOT NULL REFERENCES "projects" ON DELETE CASCADE,
  UNIQUE ("person_id", "project_id")
);

exit
