-- Member 
CREATE TABLE MEMBER (
	memberno INT,
	id VARCHAR(50),
	NAME VARCHAR(50)
);
SHOW COLUMNS FROM MEMBER;

INSERT INTO MEMBER (memberno, id, NAME) VALUES (1,'hong','홍길동');
INSERT INTO MEMBER (memberno, id, NAME) VALUES (2,'hong2','홍길순');

SELECT * FROM MEMBER;
DELETE FROM MEMBER;

-- db autocommit 상태
SELECT @@autocommit; -- 상태 확인
SET @@autocommit = 0; -- 끄기
SET @@autocommit = 1; -- 켜기

SELECT * FROM member WHERE memberno =2;
UPDATE member SET NAME = 'HongGilSun200' WHERE memberno =2;
DELETE FROM member WHERE memberno = 2;