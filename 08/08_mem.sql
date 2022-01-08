CREATE TABLE mem(
	id VARCHAR2(30),
	name VARCHAR2(30),
	pwd VARCHAR2(30),
	phone VARCHAR2(30)
);

INSERT INTO mem VALUES('rose', '노지선', '1234', '010-1111-1111');
INSERT INTO mem VALUES('song', '송하영', '1234', '010-2222-2222');
INSERT INTO mem VALUES('chang', '챙람쥐', '1234', '010-3333-3333');

SELECT * FROM mem;

DELETE FROM mem WHERE id=null;
DELETE FROM mem WHERE id=NULL;
DELETE FROM mem WHERE id is NULL;

SELECT * FROM mem;