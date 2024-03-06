--CREATE TABLE TEST(
--    TNO NUMBER,
--    TNAME VARCHAR2(20),
--    TDATE DATE
--);
--
--SELECT * FROM TEST;

DROP TABLE MEMBER;
CREATE TABLE MEMBER(
    USERNO	NUMBER PRIMARY KEY, --번호
    USERID	VARCHAR2(15 BYTE) NOT NULL UNIQUE, --아이디
    USERPWD	VARCHAR2(15 BYTE) NOT NULL, -- 비밀번호
    USERNAME VARCHAR2(20 BYTE) NOT NULL, --이름
    GENDER	CHAR(1 BYTE) CHECK(GENDER IN ('M','F')), --성별
    AGE	NUMBER, --나이
    EMAIL	VARCHAR2(30 BYTE), --이메일
    PHONE	CHAR(11 BYTE), --전화번호
    ADDRESS	VARCHAR2(100 BYTE), --주소
    HOBBY	VARCHAR2(50 BYTE), --취미
    ENROLLDATE	DATE DEFAULT SYSDATE NOT NULL --가입일
);

DROP SEQUENCE SEQ_USERNO;
CREATE SEQUENCE SEQ_USERNO
NOCACHE;

INSERT INTO MEMBER
VALUES(SEQ_USERNO.NEXTVAL, 'admin', '1234', '관리자', 'M', 45, 'admin@iei.or.kr', '01012345555', '서울', NULL, '2021-07-27');

INSERT INTO MEMBER
VALUES(SEQ_USERNO.NEXTVAL, 'user01', 'pass01', '홍길동', null, 23, 'user01@iei.or.kr', '01022222222', '부산', '등산, 영화보기', '2021-08-02');

COMMIT;

SELECT * FROM MEMBER;