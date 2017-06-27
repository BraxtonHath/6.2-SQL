CREATE TABLE "todolist" (
  "id" serial NOT NULL PRIMARY KEY,
  "title" varchar(250) NOT NULL,
  "details" VARCHAR(10485760),
  "priority" INTEGER NOT NULL,
  "created_at" TIMESTAMP NOT NULL,
  "completed_at" TIMESTAMP
);

INSERT INTO todolist VALUES (6, 'Clean Room', 'not done', '1', '2004-10-19 10:23:54', '2004-10-19 10:23:55');
INSERT INTO todolist VALUES (7, 'Clean Kitchen', 'done', '2', '2001-12-13 1:53:53', NULL );
INSERT INTO todolist VALUES (8, 'Clean Den', NULL , '3', '2001-1-1 12:54:21', NULL );
INSERT INTO todolist VALUES (9, 'Clean Car', NULL , '2', '2006-4-14 10:43:54', NULL );
INSERT INTO todolist VALUES (10, 'Clean Dog', 'not done', '2', '2000-1-1 1:00:00', NULL );

SELECT *
FROM todolist
WHERE completed_at IS NULL ;

SELECT *
FROM todolist
WHERE priority = 1;

UPDATE todolist
SET completed_at = '2000-12-12 10:23:32'
WHERE id = 7;

DELETE
FROM todolist
WHERE todolist.completed_at IS NOT NULL;
