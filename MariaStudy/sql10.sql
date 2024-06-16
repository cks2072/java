-- 제약 조건 : CONSTRAINTS
-- SQL 제약조건을 통해 테이블 안에 저장될 데이터의 규칙을 정하는 형식
-- 미리 정해진 형태의 데이터만 입력을 허용
-- 데이터의 무결성과 신뢰성을 보장

-- NULL, NOT NULL, DEFAULT, UNSIGNED, UNIQUE, PRIMARY KEY(기본키), 
-- FOREIGN KEY(외래키), CHECK, AUTO_INCREMENT

CREATE TABLE temp(
	id 		INT  AUTO_INCREMENT,
	NAME 		VARCHAR(100) NOT NULL,
	age	 	INT UNSIGNED NOT NULL,
	deposit 	DOUBLE UNSIGNED NULL, 
	address 	VARCHAR(255) DEFAULT '서울',
	score 	INT CHECK (score>= 0 AND score<= 100),

	
	PRIMARY KEY (id),
	UNIQUE(NAME),
	CHECK (age>=18)
);

SHOW COLUMNS FROM temp;

INSERT INTO temp (NAME, age, deposit, score)
VALUES ('홍길동', 25, 300, 0);

INSERT INTO temp (NAME, age, deposit, score)
VALUES ('홍길동', 25, 300, 100);

SELECT * FROM temp;