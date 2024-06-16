-- 산술 연산자: +,=,*, /,%

SELECT 13+7 AS 'ADD', 17-3 AS 'SUB', 17*3 AS 'MUL', 
		 17/3 AS 'DIV', 17%3 AS'나머지';
		 
SELECT * FROM students;
SELECT student_name, school_grade+1, student_age+1 FROM students;

CREATE TABLE test(
	tid 				INT 	PRIMARY KEY  AUTO_INCREMENT, -- 기본키 
	student_name 	VARCHAR(20),
	is_taken 		TINYINT(1),
	test_date 		DATE,
	kor 				INT UNSIGNED ,
	eng 				INT UNSIGNED,
	math 				INT UNSIGNED,
	hist 				INT UNSIGNED
	-- PRIMARY KEY (tid)
);

SHOW COLUMNS from test;

INSERT INTO test 
	(student_name, is_taken, test_date, kor, eng, math,hist)
VALUES 
  	('홍길동', 1, 20191211, 65, 83, 43, 100),
  	('허균', 0, 20191211, 0, 0, 0, 0),
  	('연산군', 0, 20191211, 0, 0, 0, 0),
  	('세종', 1, 20191211, 100, 67, 88, 100),
  	('홍상직', 1, 20191211, 65, 64, 60, 78),
  	('성춘향', 1, 20191211, 96, 100, 94, 90),
  	('이몽룡', 1, 20191211, 100, 96, 98, 100),
  	('방자', 1, 20191211, 80, 50, 43, 60),
  	('향단', 1, 20191211, 78, 77, 64, 40),
  	('변사또', 1, 20191211, 82, 88, 78, 100),
  	('심청', 1, 20191211, 93, 82, 84, 98),
  	('심학규', 1, 20191211, 65, 83, 43, 100),
  	('용왕', 1, 20191211, 65, 83, 43, 100),
  	('곽씨', 1, 20191211, 65, 83, 43, 100),
  	('뺑덕', 1, 20191211, 45, 33, 43, 40),
  	('흥부', 1, 20191211, 83, 79, 100, 90),
  	('놀부', 1, 20191211, 98, 100, 88, 94),
  	('현진건', 1, 20191211, 100, 96, 72, 100),
	('염상섭', 1, 20191211, 100, 100, 71, 100),
	('신채호', 1, 20191211, 100, 98, 100, 100)
  	;
  	


-- 문자형 함수
SELECT * FROM test;
SELECT * FROM test WHERE (CHAR_LENGTH(student_name) <=2 ); -- 이름이 두글자이내
SELECT * FROM test WHERE  (CHAR_LENGTH(student_name) > 2);

SELECT student_name, 
		CHAR_LENGTH(student_name), 
		LENGTH(student_name) 
FROM test;3

SELECT CONCAT(student_name, " 학생의 수학성적은", math, "점입니다.")
	FROM test;

SELECT CONCAT_WS('---', student_name, "학생이 수학성적은", math, " 점입니다.") FROM test;
SELECT SUBSTR(student_name, 2,2) FROM test;

-- 숫자형 함수
SELECT AVG(kor), AVG(eng) FROM test;
SELECT COUNT(student_name) FROM test;
SELECT COUNT(*) FROM test;

SELECT * FROM test;
SELECT MAX(kor), MIN(eng), MAX(math), MIN(hist) FROM test;

SELECT POWER(2,2);
SELECT RAND(3), 
			FLOOR(RAND(3) *100), 
			CEIL(RAND(3)*100), 
			ROUND(RAND(3)*100);

SELECT SUM(math) FROM test;
SELECT AVG(hist) ,
			FORMAT(avg(hist),2),
			TRUNCATE(AVG(hist), 2) 
FROM test;

--  날짜형 함수
SELECT CURRENT_DATE(),
		CURRENT_TIME(),1
		CURRENT_TIMESTAMP(),
		SYSDATE();

SELECT 
	ADDDATE( DATE(SYSDATE()), INTERVAL 365 DAY),
	
	ADDDATE( DATE(SYSDATE()), INTERVAL -365 DAY),
	DATE_SUB(DATE(SYSDATE()), INTERVAL 365 day)
;
-- 날짜 차이
select 
	DATEDIFF(CURDATE(),"2024-06-04 23:35:43"),
	DATEDIFF(20240604233543,CURDATE())
	;
-- 날짜 형식
SELECT CURDATE(), DATE_FORMAT(CURDATE(), "%M %D, %Y, %W");
-- 현재 날짜에 산술연산
SELECT CURDATE(),
			CURDATE() + 1, 
			DAYNAME(CURDATE() +1), 
			MONTHNAME(CURDATE());
			
-- 현재의 날짜가 일 년 중 몇번째날인지, 몇 번째 주인지 표시			
SELECT CURDATE() AS '현재 날짜', 
			DAYOFYEAR(CURDATE()), 
			WEEKOFYEAR(CURDATE());
			
SELECT student_name AS 학생이름  FROM students;

-- AS 키워드 별칭붙여주는 기능
SHOW COLUMNS from test;
SHOW COLUMNS FROM students;

SELECT 
	s.student_name
FROM 
	students AS s;

