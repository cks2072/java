--  LIKE, NOT LIKE
SELECT * FROM students;
SELECT * FROM students WHERE school_name LIKE  '도%';-- %시작문자열
SELECT * FROM students WHERE school_name LIKE '%빈'; -- 끝나는문자열%
SELECT * FROM students WHERE school_level LIKE '%등%';-- %포함한문자열%
SELECT * FROM students WHERE school_name NOT LIKE '도%';-- not like '패턴'은 제외

SELECT * FROM students WHERE school_level LIKE  '고_학교';-- 한개의 문자는 와일드카드


/*
	비교 연산자
	=, !=와 <>, >, >=, <=
	BETWEEN(주어진 범위) => BETWEEN A and B : A와 B사이
	NOT BETWEEN(주어진 범위 밖에 있는) => A and b :  A와 B사이 제외한 모든
	IN(주어진 열에 여러조건 제시할 때) => in (값,...)
	NOT IN
	LIKE, NOT LKE, AND, OR
	
*/
SELECT * FROM students;
SELECT * FROM students 
	WHERE school_name != '도화' 
	AND 	school_name <> '남원';
	
SELECT * FROM students WHERE student_age <= 30;
SELECT * FROM students WHERE student_age IN (17,18,19);
SELECT * FROM students WHERE school_name IN ('활빈', '도화');

SELECT * FROM students WHERE student_age BETWEEN 30 AND 39;
SELECT * FROM students
	WHERE (school_name = '조선' or school_name='남원') 
	AND (student_age NOT BETWEEN 10 AND 19);

