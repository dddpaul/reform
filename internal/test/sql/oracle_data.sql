-- An "oraclized" copy of data.sql follows.

INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (1, 'Denis Mills', NULL, TO_TIMESTAMP_TZ('2009-11-10 23:00:00 00:00', 'yyyy-mm-dd hh24:mi:ss tzh:tzm'));
INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (2, 'Garrick Muller', 'muller_garrick@example.com', TO_TIMESTAMP_TZ('2009-12-12 12:34:56 00:00', 'yyyy-mm-dd hh24:mi:ss tzh:tzm'));

INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (101, 'Noble Schumm', NULL, TO_TIMESTAMP_TZ('2013-01-01 00:00:00 00:00', 'yyyy-mm-dd hh24:mi:ss tzh:tzm'));
INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (102, 'Elfrieda Abbott', 'elfrieda_abbott@example.org', TO_TIMESTAMP_TZ('2014-01-01 00:00:00 00:00', 'yyyy-mm-dd hh24:mi:ss tzh:tzm'));
INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (103, 'Elfrieda Abbott', NULL, TO_TIMESTAMP_TZ('2014-01-01 00:00:00 00:00', 'yyyy-mm-dd hh24:mi:ss tzh:tzm'));

INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('baron', 'Vicious Baron', TO_TIMESTAMP_TZ('2014-06-01 00:00', 'yyyy-mm-dd tzh:tzm'), TO_TIMESTAMP_TZ('2016-02-21 00:00', 'yyyy-mm-dd tzh:tzm'));
INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('queen', 'Thirsty Queen', TO_TIMESTAMP_TZ('2016-01-15 00:00', 'yyyy-mm-dd tzh:tzm'), NULL);
INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('traveler', 'Kosher Traveler', TO_TIMESTAMP_TZ('2016-02-01 00:00', 'yyyy-mm-dd tzh:tzm'), NULL);
INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('lightfoot', 'Sweet Lightfoot', TO_TIMESTAMP_TZ('2016-01-01 00:00', 'yyyy-mm-dd tzh:tzm'), NULL);
INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('walker', 'Eager Walker', TO_TIMESTAMP_TZ('2015-01-01 00:00', 'yyyy-mm-dd tzh:tzm'), NULL);

INSERT INTO "person_project" ("project_id", "person_id") VALUES ('baron', 101);
INSERT INTO "person_project" ("project_id", "person_id") VALUES ('baron', 102);
INSERT INTO "person_project" ("project_id", "person_id") VALUES ('baron', 103);

INSERT INTO "person_project" ("project_id", "person_id") VALUES ('queen', 102);
INSERT INTO "person_project" ("project_id", "person_id") VALUES ('queen', 103);

INSERT INTO "person_project" ("project_id", "person_id") VALUES ('traveler', 103);

exit
