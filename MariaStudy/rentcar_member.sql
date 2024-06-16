

INSERT INTO t_member (
	memId, 
	memPassword ,
	memName, 
	memAddress ,
	memPhoneNum 
) VALUES 
	('hong100','1234','홍길동','서울','010-1234-1234'),
	('lee001','1234','이순신','대구','010-1234-7777'),
	('son007','1234','손흥민','대구','010-1234-7777'),
	('son008','1234','손흥민','서울','010-1234-8888'),
	('hong200','1234','동순이','부산','010-1234-9999');

DELETE FROM t_member;	
SELECT * FROM t_member;
SELECT * FROM t_member WHERE memName = '홍길동' ORDER BY memId;

-- 수정하기
UPDATE t_member 
	SET memPassword = '1111',
	memName = '홍길동100',
	memAddress = '부산',
	memPhoneNum = '010-3333-3333'
WHERE memId = 'HONG100'; 

-- 특정 레코드 삭제
DELETE FROM t_member WHERE memId = '444';

SELECT * FROM t_member WHERE memId = '강감찬';
