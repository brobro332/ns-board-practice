---------------------------------------
---------------------------------------
-- 1. POST 테이블 CREATE
---------------------------------------
---------------------------------------
CREATE TABLE POST (
	POST_ID NUMBER(19) NOT NULL,
	TITLE VARCHAR2(30) NOT NULL,
	CONTENT CLOB NOT NULL,
	CREATED_DATE TIMESTAMP NOT NULL,
	LAST_MODIFIED_DATE TIMESTAMP NOT NULL,
	MEMBER_ID NUMBER(19) NOT NULL,
	PARTY_ID NUMBER(19) NOT NULL,
	PARENT_ID NUMBER(19) NULL
);