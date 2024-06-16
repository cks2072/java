-- 외래키(참고키) : FOREGIN KEY

/* 부모 테이블 */
CREATE TABLE parent(
	region_id 	INT NOT NULL,
	region 		VARCHAR(10) NOT NULL,
	
	PRIMARY KEY (region_id)
) engine = INNODB DEFAULT CHARACTER SET = UTF8;

SHOW COLUMNS FROM parent;

INSERT INTO parent (region_id, region)
VALUES (1, '서울'), (2,'경기'), (3,'부산');

SELECT * FROM parent;

/* 자식 테이블 생성 */
CREATE TABLE child (
	cid 			INT NOT NULL AUTO_INCREMENT,
	region_id 	INT NOT NULL,
	NAME 			VARCHAR(10) NOT NULL,
	
	PRIMARY KEY (cid),
	CONSTRAINT fk_region 
		FOREIGN KEY (region_id)
		REFERENCES parent(region_id)
) engine = INNODB DEFAULT CHARACTER SET = UTF8;

SHOW COLUMNS FROM child;

-- 부모 테이블 삭제
-- DROP TABLE parent; -- 제약 조건에 의하여 삭제 오류

INSERT INTO child (region_id, NAME)
VALUES (1,'홍길동'), (2,'동순이'), (3,'동길이');

-- 외래키 오류 발생 -> 참조 테이블에 필드값이 없기 떄문
-- INSERT INTO child (region_id, NAME) VALUES (4,'이순신');

SELECT * FROM parent;
SELECT * FROM child;

-- 외래키 삭제
ALTER TABLE child DROP CONSTRAINT fk_region;

-- 외래키 추가
ALTER TABLE child 
	ADD CONSTRAINT fk_region
		FOREIGN KEY (region_id) REFERENCES parent(region_id);
		
		