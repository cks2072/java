-- 서브쿼리
/*
1. 서브쿼리는 반드시 괄호로 감싸주어야 한다.
2. 서브쿼리는 연산자의 오른쪽에 위치해야 한다.
3. 서브쿼리는 in 연산자와함께 사용하면 효율성이 떨어진다.
4. 서브쿼리안에서느 order by 사용할 수 없다.
   order by 결과값의 출력에 관한 것으로 한번 만 사용

*/


SELECT AVG(math) FROM test;

-- 조건없이 모두 조회
SELECT 
	student_name, kor, eng, math 
FROM test;

-- 조건
SELECT 
	student_name, kor, eng, math 
FROM test
WHERE math >= 80;

--  서브쿼리
/*
SELECT AVG(math) FROM test;-- 수학 평균 점수 추출
SELECT 
	student_name, kor, eng, math 
FROM test
WHERE math >= 62.75;-- 수학평균 점수을 가지고 조건
*/

SELECT 
	student_name, kor, eng, math 
FROM test
WHERE math >=  (SELECT AVG(math) FROM test) 
-- where math >= 수학평균점수
ORDER BY kor DESC;

-- 닷 연산자(.)
SELECT mydb.students.student_name FROM students;
SELECT mydb.test.student_name FROM test;

SELECT * FROM students, test;
-- 두개이상 테이블에서 동일한 필드명이 있을 경우에는 
-- 반드시 테이블을 붙여서 식별해야한다.
SELECT test.student_name FROM students, test;
SELECT students.student_name FROM students, test;

SELECT 
	s.student_name, t.student_name 
FROM 
	students AS s, test AS t;
	
-- JOIN 여러테이블의 자료에서 데이터를 추출할 경우  데이터 조작기능
-- inner join(교집합), 
-- left join(특정 테이블을 기준:left), 
-- right join(특정 테이블을 기준:right)

CREATE TABLE tutions(
	sid 				INT AUTO_INCREMENT ,
	student_name 	VARCHAR(20)  NOT NULL, -- 제약조건
	is_paid 			TINYINT(1),
	due_year 		INT NOT NULL,
	due_month 		INT NOT NULL,
	due_day 			INT NOT NULL,
	due_amount 		INT NOT NULL,
	memo 				VARCHAR(100),
	
	PRIMARY KEY(sid)

);

-- 테이블의 컬럼 view
SHOW COLUMNS FROM  tuitions;

INSERT INTO tuitions 
	(student_name, is_paid, due_year, due_month, due_day, due_amount, memo)
VALUES 
	('홍길동', 1, 2019, 11, 1, 300000, ''),
	('허균', 1, 2019, 11, 2, 300000, ''),
	('연산군', 1, 2019, 11, 3, 300000, '교직원할인'),
	('세종', 1, 2019, 11, 3, 150000, '교직원할인'),
	('홍상직', 1, 2019, 11, 5, 300000, ''),
	('성춘향', 1, 2019, 11, 11, 300000, ''),
	('이몽룡', 1, 2019, 11, 15, 300000, ''),	
	('변사또', 1, 2019, 11, 158, 300000, '상습체납자'),	
	('심청', 1, 2019, 11, 211, 150000, '사회보호대상자'),	
	('심학규', 1, 2019, 11, 30, 150000, '사회보호대상자'),
	('졸부', 1, 2019, 11, 30, 300000, ''),	
	('신채호', 1, 2019, 11,30, 150000, '국가유공자')	
	;

SELECT * FROM tuitions;

-- 테이블명 변경
ALTER TABLE tutions RENAME tuitions;

-- INNER JOIN : 오른쪽 테이블과 왼쪽 테이블 모두에서 일치하는 
-- 데이터를 대상으로 연산을 수행

SELECT * FROM students, test;
SELECT 
	s.student_name, s.school_name, t.math
FROM 
	students AS s, test AS t
WHERE s.student_name = t.student_name 
	AND t.is_taken = 1;
	
SELECT 
	s.student_name, s.school_name, t.math
FROM 
	students AS s INNER JOIN test AS t
ON s.student_name = t.student_name 	AND t.is_taken = 1;

-- 두 개 이상의 테이블에서 join
-- 시험에 참여한 학생(test.is_taken =1)중에서 
--- students, test,  tuitions
-- 세개의 테이블에 모두 존재하는 학생의 데이터 추출
SELECT students.student_name, test.math, tuitions.memo
FROM (
		-- 시험에 참여한 학생(test.is_taken =1)
		(students INNER JOIN test
			ON students.student_name = test.student_name 
			AND test.is_taken = 1
		 )
		INNER JOIN tuitions 
		ON tuitions.student_name = test.student_name
	);

-- 위와 동일 처리
SELECT 
	s.student_name, s.school_name, t.math, tu.memo
FROM 
	students AS s, test AS t, tuitions AS tu
WHERE s.student_name = t.student_name 
	AND t.student_name = tu.student_name
	AND t.is_taken = 1;
	
-- LEFT JOIN : 왼쪽 테이블의 모든 데이터와 
-- 왼쪽 테이블과 오른쪽 테이블의 일치하는 데이터를 대상으로 연산
UPDATE 
	tuitions
SET 
	student_name = '놀부'
WHERE  
	sid = 11;
 
-- INNER JOIN 결과
SELECT * FROM 	tuitions
WHERE 
	CHAR_LENGTH(student_name) = 2;
	
SELECT * FROM test;

-- CHAR_LENGTH(tuitions.student_name) = 2와 
-- tuitions.student_name = test.student_name조건을 만족하는 데이터를 먼저 반환
-- 만족하지 않은 tuitions테이블의 너머지를 나중에 반환
SELECT tuitions.*, test.*
FROM 
	tuitions LEFT JOIN test
	ON CHAR_LENGTH(tuitions.student_name) = 2
	AND tuitions.student_name = test.student_name;
	

-- RIGHT JOIN
SELECT tuitions.*, test.*
FROM 
	tuitions RIGHT JOIN test
	ON CHAR_LENGTH(test.student_name) = 2
	AND tuitions.student_name = test.student_name;





