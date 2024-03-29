DROP TABLE CLIENT;
CREATE TABLE CLIENT(
    CLNO NUMBER PRIMARY KEY,    -- 회원 번호
    CLID VARCHAR2(20 BYTE) UNIQUE NOT NULL,    -- 회원 아이디
    CLPW VARCHAR2(20 BYTE) NOT NULL,    -- 회원 비밀번호
    CLGRADE NUMBER NOT NULL -- 회원 등급(1:관리자, 2:사용자)
);

DROP SEQUENCE SEQ_CLNO;
CREATE SEQUENCE SEQ_CLNO
NOCACHE;

SELECT * FROM CLIENT;