-- An "oraclized" copy of data.sql follows.

INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (1, 'Denis Mills', NULL, TO_DATE('2009-11-10 23:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (2, 'Garrick Muller', 'muller_garrick@example.com', TO_DATE('2009-12-12 12:34:56', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (101, 'Noble Schumm', NULL, TO_DATE('2013-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (102, 'Elfrieda Abbott', 'elfrieda_abbott@example.org', TO_DATE('2014-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO "people" ("id", "name", "email", "created_at") VALUES (103, 'Elfrieda Abbott', NULL, TO_DATE('2014-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('baron', 'Vicious Baron', TO_DATE('2014-06-01', 'yyyy-mm-dd'), TO_DATE('2016-02-21', 'yyyy-mm-dd'));
INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('queen', 'Thirsty Queen', TO_DATE('2016-01-15', 'yyyy-mm-dd'), NULL);
INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('traveler', 'Kosher Traveler', TO_DATE('2016-02-01', 'yyyy-mm-dd'), NULL);
INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('lightfoot', 'Sweet Lightfoot', TO_DATE('2016-01-01', 'yyyy-mm-dd'), NULL);
INSERT INTO "projects" ("id", "name", "start", "end") VALUES ('walker', 'Eager Walker', TO_DATE('2015-01-01', 'yyyy-mm-dd'), NULL);

INSERT INTO "person_project" ("project_id", "person_id") VALUES ('baron', 101);
INSERT INTO "person_project" ("project_id", "person_id") VALUES ('baron', 102);
INSERT INTO "person_project" ("project_id", "person_id") VALUES ('baron', 103);

INSERT INTO "person_project" ("project_id", "person_id") VALUES ('queen', 102);
INSERT INTO "person_project" ("project_id", "person_id") VALUES ('queen', 103);

INSERT INTO "person_project" ("project_id", "person_id") VALUES ('traveler', 103);

exit
