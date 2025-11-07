-- Board 
CREATE TABLE mvcBoard(
   no NUMBER,
   name VARCHAR2(51) CONSTRAINT mb_name_nn NOT NULL,
   subject VARCHAR2(2000) CONSTRAINT mb_sub_nn NOT NULL,
   content CLOB CONSTRAINT mb_cont_nn NOT NULL,
   pwd VARCHAR2(10) CONSTRAINT mb_pwd_nn NOT NULL,
   regdate DATE DEFAULT SYSDATE,
   hit NUMBER DEFAULT 0,
   replycount NUMBER DEFAULT 0,
   CONSTRAINT mb_no_pk PRIMARY KEY(no)
);
CREATE SEQUENCE mb_no_seq
     START WITH 1
     INCREMENT BY 1
     NOCACHE
     NOCYCLE;
-- member 
CREATE TABLE mvcMember(
   id VARCHAR2(20),
   pwd VARCHAR2(10) CONSTRAINT mm_pwd_nn NOT NULL,
   name VARCHAR2(51) CONSTRAINT mm_name_nn NOT NULL,
   sex VARCHAR2(6),
   birthday VARCHAR2(20) CONSTRAINT mm_day_nn NOT NULL,
   email VARCHAR2(100),
   post VARCHAR2(10) CONSTRAINT mm_post_nn NOT NULL,
   addr1 VARCHAR2(200) CONSTRAINT mm_addr1_nn NOT NULL,
   addr2 VARCHAR2(200),
   phone VARCHAR2(20),
   content CLOB,
   admin CHAR(1) DEFAULT 'n',
   regdate DATE DEFAULT SYSDATE,
   CONSTRAINT mm_id_pk PRIMARY KEY(id),
   CONSTRAINT mm_sex_ck CHECK(sex IN('남자','여자')),
   CONSTRAINT mm_email_uk UNIQUE(email),
   CONSTRAINT mm_phone_uk UNIQUE(phone),
   CONSTRAINT mm_admin_ck CHECK(admin IN('y','n'))
);
-- BoardReply 
CREATE TABLE mvcBoardReply(
   no NUMBER,
   bno NUMBER,
   id VARCHAR2(20),
   name VARCHAR2(51) CONSTRAINT mr_name_nn NOT NULL,
   msg CLOB CONSTRAINT mr_msg_nn NOT NULL,
   regdate DATE DEFAULT SYSDATE,
   group_id NUMBER,
   group_step NUMBER DEFAULT 0,
   group_tab NUMBER DEFAULT 0,
   root NUMBER DEFAULT 0,
   depth NUMBER DEFAULT 0,
   CONSTRAINT mr_no_pk PRIMARY KEY(no),
   CONSTRAINT mr_bno_fk FOREIGN KEY(bno)
   REFERENCES mvcBoard(no),
   CONSTRAINT mr_id_fk FOREIGN KEY(id)
   REFERENCES mvcMember(id)
);
CREATE SEQUENCE mr_no_seq
      START WITH 1
      INCREMENT BY 1
      NOCACHE
      NOCYCLE;
-- Member
DESC mvcBoard
DESC mvcMember