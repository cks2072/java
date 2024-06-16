-- 회원테이블
CREATE TABLE t_member(
	memId 		VARCHAR(20) PRIMARY KEY, -- 아이디
	memPassword VARCHAR(20), -- 비밀번호
	memName 		VARCHAR(30), -- 이름
	memAddress 	VARCHAR(100), -- 주소
	memPhoneNum VARCHAR(20) -- 전화번호
);
SHOW COLUMNS FROM t_member;

-- 렌터카 테이블
CREATE TABLE t_car(
	carNumber VARCHAR(30) PRIMARY KEY, -- 차번호
	carName 	VARCHAR(30), -- 차 이름
	carColor VARCHAR(30), -- 차 색상
	carSize 	INT, -- 배기량
	carMaker VARCHAR(50) -- 제조가
);

SHOW COLUMNS FROM t_car;

-- 예약 테이블
CREATE TABLE t_res(
	resNumber 	VARCHAR(30) PRIMARY KEY, -- 예약 번호
	resDate 			DATE, -- 예약일자
	useBeginDate 	DATE, -- 이용 시작일자
	returnDate 		DATE, -- 반납 일자
	resCarNumber 	VARCHAR(30), -- 예약 차번호
	resUserId 		VARCHAR(20), -- 예약자 아이디t_cart_membert_rest_membert_car
	
	-- 외래키
	CONSTRAINT FK_RES_USER_ID FOREIGN KEY (resUserId) 
					REFERENCES t_member(memId),
					
	CONSTRAINT FK_RES_CAR_NUMBER FOREIGN KEY (resCarNumber) 
					REFERENCES t_car(carNumber)
);

t_resSHOW COLUMNS FROM t_res;