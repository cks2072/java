-- DDL, DML, DCL

-- 구조 변경
-- SHOW COLUMNS from students;

-- 컬럼 추가
ALTER TABLE students ADD student_genter VARCHAR(1);
-- 컬럼 삭제
ALTER TABLE students DROP COLUMN is_admin;
-- 컬럼 자료형을 수정
ALTER TABLE students MODIFY COLUMN student_genter VARCHAR(2);
-- 컬럼 이름 변경1
ALTER TABLE students CHANGE COLUMN  student_genter student_gender VARCHAR(2);
ALTER TABLE students CHANGE COLUMN id sid INT AUTO_INCREMENT ;
SHOW COLUMNS from students;