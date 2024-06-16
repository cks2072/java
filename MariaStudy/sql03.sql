-- 데이터: select from, insert into values, update set , delete from

SELECT * FROM students;
-- 데이터 수정
UPDATE students SET student_gender ='남자' 
	WHERE sid = 1;
-- 동시에 여러개 일괄 변경
UPDATE students SET student_gender ='여자' 
	WHERE sid = 6 OR sid=9 OR sid=14 OR sid=15;
	
UPDATE students SET student_gender = '남자'
	WHERE sid IN (2,3,4,5,7,10,13,8,16,17,12);
UPDATE students SET student_gender = '여자'
	WHERE sid IN (11);
	
-- 삭제
-- DELETE FROM student; -- 모두 삭제
DELETE FROM students WHERE sid = 1;
DELETE FROM students WHERE sid IN (2,3,4);
DELETE FROM students;

-- 테이블 구조
SHOW COLUMNS from students;
-- 테이블 구조 변경
ALTER TABLE students ADD student_age INT;
ALTER TABLE students ADD is_enrolled TINYINT;
ALTER TABLE students ADD enrolled_date DATE;

-- 데이터 추가
INSERT INTO students
 (student_name,school_name, school_level, school_grade, 
  student_gender,student_age, is_enrolled, enrolled_date)
VALUES
	('홍길동', '활빈','고등학교', 2,'남자', 16, 1, 20180201),
	('허균', '활빈','고등학교', 2,'남자', 32, 1, 20180201),
	('연산군', '조선','고등학교', 3,'남자', 36, 0, 20180201),
	('세종', '조선','고등학교', 3,'남자', 42, 1, 20170601),
	('홍상직', '조선','고등학교', 2,'남자', 40, 0, 20180504),
	('성춘향', '남원','중학교', 3,'여자', 15, 1, 20190216),
	('이몽룡', '남원','고등학교', 1,'남자', 17, 1, 20180415),
	('방자', '남원','중학교', 2,'남자', 18, 1, 20181121),
	('향단', '남원','중학교', 2,'남자', 16, 1, 20190303),
	('변사또', '남원','고등학교',3,'남자', 38, 1, 20170119),
	('심청', '도화','고등학교', 2,'여자', 15, 1, 20190201),
	('심학규', '도화','고등학교', 3,'남자', 33, 1, 20180407),
	('용왕', '도화','고등학교', 3,'남자', 299, 0, 20180201),
	('곽씨', '도화','고등학교', 2,'여자', 31, 1, 20180529),
	('뺑덕', '도화','고등학교', 1,'남자', 33, 1, 20180912),
	('흥부', '남원','고등학교', 2,'남자', 35, 1, 20170611),
	('놀부', '남원','고등학교', 3,'남자', 36, 1, 20170611);	