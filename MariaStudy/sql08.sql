-- 테이블 복사
-- CREATE TABLE students2 LIKE students;
-- CREATE TABLE IF NOT EXISTS students2 LIKE students;

SHOW COLUMNS FROM students;
SHOW COLUMNS FROM students2;

SELECT * FROM students;
SELECT * FROM students2;

-- 테이블 데이터 복사
INSERT INTO students2 
	(SELECT * FROM students);
	
DELETE FROM students2;	
	
-- 원하는 필드만 데이터 복사
INSERT
	INTO students2 
		(student_name, school_name) 
		(SELECT student_name, school_name FROM students);

-- 테이블 구조와 데이터 복사
CREATE TABLE students3 (SELECT * FROM students);
CREATE TABLE students4 AS SELECT * FROM students;

SELECT * FROM students;
SELECT * FROM students3;

SHOW CREATE TABLE students3;
SHOW COLUMNS FROM students2;

DELETE FROM students2;
SELECT * FROM students2;

INSERT INTO students2
 (student_name,school_name, school_level, school_grade, 
  student_gender,student_age, is_enrolled, enrolled_date)
VALUES
	('홍길동', '활빈','고등학교', 2,'남자', 16, 1, 20180201),
	('허균', '활빈','고등학교', 2,'남자', 32, 1, 20180201),
	('연산군', '조선','고등학교', 3,'남자', 36, 0, 20180201),
	('세종', '조선','고등학교', 3,'남자', 42, 1, 20170601),
	
	('강감찬', '고려','고등학교', 3,'남자', 42, 1, 20170601),
	('이순신', '조선','고등학교', 3,'남자', 51, 1, 20180601);

SELECT * FROM students;
SELECT * FROM students2;


-- UNION : 중복된 데이터는 병합에 제외
-- 병합하는 테이블이 구조와 필드이름과 컬럼 개수가 일치해야 한다.

SELECT COUNT(*) FROM students;
SELECT COUNT(*) FROM students2;

-- 두 테이블이 데이터 병합
SELECT 
	student_name, school_name, school_level
FROM 
	students
UNION 
	SELECT 
		-- student_name, null, null 
		student_name, school_name, school_level
	FROM students2;

-- 병합에서 중복된 데이터 포함
SELECT 
	student_name, school_name, school_level
FROM 
	students
UNION ALL
	SELECT 
		-- student_name, null, null 
		student_name, school_name, school_level
	FROM students2;



-- GROUP BY 연산자 : 그룹핑
-- COUNT, SUM, AVG, MIN, MAX
SELECT
	math, COUNT(tid)
FROM 
	test
GROUP BY math 
ORDER BY math DESC; 

SELECT * FROM test; 

-- GROUP BY : HAVING => 그룹핑 상태에 사용되는 조건식
SELECT school_name FROM students;

SELECT 
	school_name, COUNT(sid) 
FROM 
	students
GROUP BY 
	school_name;

SELECT 
	school_name, COUNT(sid) 
FROM 
	students
GROUP BY 
	school_name
HAVING COUNT(sid) > 4;

SELECT 
	school_level, COUNT(*)
FROM students
GROUP BY school_level;

SELECT 
	school_level, COUNT(*)
FROM students
GROUP BY school_level
HAVING school_level = '중학교';

SHOW COLUMNS FROM test;
-- test 복사본 test_backup 테이블 생성, student_name은 name으로 변경
CREATE TABLE test_backup LIKE test;
SHOW COLUMNS FROM test_backup;
ALTER TABLE test_backup CHANGE student_name name VARCHAR(20);

INSERT INTO test_backup
	(tid, NAME, kor, eng, math)
	SELECT tid, student_name, kor, eng, math
FROM test;

SELECT * FROM test_backup;



