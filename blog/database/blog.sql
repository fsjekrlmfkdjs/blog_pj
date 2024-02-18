-- 사용자 테이블 생성
CREATE TABLE b_user (
    blog_id VARCHAR2(50) PRIMARY KEY,
    password VARCHAR2(50) NOT NULL,
    nickname VARCHAR2(20) NOT NULL,
    email VARCHAR2(50) NOT NULL,
    created DATE NOT NULL,
    info VARCHAR2(100)
);

-- 사용자 프로필 테이블 생성
CREATE TABLE b_profile (
    profile_id INT PRIMARY KEY,
    blog_id VARCHAR2(50),
    profile_type VARCHAR2(50) NOT NULL,
    profile_name VARCHAR2(50) NOT NULL,
    profile_created DATE NOT NULL,
    FOREIGN KEY (blog_id) REFERENCES b_user(blog_id)
);

-- 게시판 테이블 생성
CREATE TABLE b_board (
    board_id INT PRIMARY KEY,
    blog_id VARCHAR2(50),
    title VARCHAR2(50) NOT NULL,
    content CLOB NOT NULL,
    view_count NUMBER NOT NULL,
    board_created DATE NOT NULL,
    like_count NUMBER NOT NULL,
    FOREIGN KEY (blog_id) REFERENCES b_user(blog_id)
);

-- 태그 테이블 생성
CREATE TABLE b_tag (
    tag_id INT PRIMARY KEY,
    tag_name VARCHAR2(30) NOT NULL
);

-- 게시판 태그 테이블 생성
CREATE TABLE b_board_tag (
    board_id INT NOT NULL,
    tag_id INT NOT NULL,
    FOREIGN KEY (board_id) REFERENCES b_board(board_id),
    FOREIGN KEY (tag_id) REFERENCES b_tag(tag_id)
);

-- 게시판 파일 테이블 생성
CREATE TABLE b_board_file (
    board_file_id INT PRIMARY KEY,
    board_id INT NOT NULL,
    file_type VARCHAR2(50) NOT NULL,
    file_name VARCHAR2(50) NOT NULL,
    board_file_created DATE NOT NULL,
    FOREIGN KEY (board_id) REFERENCES b_board(board_id)
);

-- 게시판 좋아요 테이블 생성
CREATE TABLE b_board_like (
    board_like_id INT PRIMARY KEY,
    board_id INT NOT NULL,
    blog_id VARCHAR2(50) NOT NULL,
    FOREIGN KEY (board_id) REFERENCES b_board(board_id),
    FOREIGN KEY (blog_id) REFERENCES b_user(blog_id)
);

-- 게시판 댓글 테이블 생성
CREATE TABLE b_com (
    com_id INT PRIMARY KEY,
    board_id INT NOT NULL,
    com_content VARCHAR2(2000) NOT NULL,
    com_created DATE NOT NULL,
    FOREIGN KEY (board_id) REFERENCES b_board(board_id)
);

-- 댓글 좋아요 테이블 생성
CREATE TABLE b_com_like (
    com_like_id INT PRIMARY KEY,
    com_id INT NOT NULL,
    blog_id VARCHAR2(50) NOT NULL,
    FOREIGN KEY (com_id) REFERENCES b_com(com_id),
    FOREIGN KEY (blog_id) REFERENCES b_user(blog_id)
);

-- 일기 테이블 생성
CREATE TABLE b_diary (
    diary_id INT PRIMARY KEY,
    blog_id VARCHAR2(50) NOT NULL,
    friend_id VARCHAR2(50) NOT NULL,
    diary_weather NUMBER NOT NULL,
    diary_content CLOB NOT NULL,
    diary_created DATE NOT NULL,
    diary_status NUMBER NOT NULL,
    FOREIGN KEY (blog_id) REFERENCES b_user(blog_id),
    FOREIGN KEY (friend_id) REFERENCES b_user(blog_id)
);

-- 친구 관계 테이블 생성
CREATE TABLE b_friend (
    friend_id INT PRIMARY KEY,
    user_a_id VARCHAR2(50) NOT NULL,
    user_b_id VARCHAR2(50) NOT NULL,
    request_sent_date DATE NOT NULL,
    request_accepted_date DATE NOT NULL,
    relationship_status VARCHAR2(20) NOT NULL,
    CONSTRAINT fk_user_a FOREIGN KEY (user_a_id) REFERENCES b_user(blog_id),
    CONSTRAINT fk_user_b FOREIGN KEY (user_b_id) REFERENCES b_user(blog_id)
);



-- 시퀀스
CREATE SEQUENCE b_user_profile_seq
  START WITH 10001
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE b_board_seq
  START WITH 20001
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE b_tag_seq
  START WITH 30001
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE b_board_file_seq
  START WITH 40001
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE b_board_like_seq
  START WITH 50001
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE b_com_seq
  START WITH 60001
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE b_com_like_seq
  START WITH 70001
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE b_diary_seq
  START WITH 80001
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

CREATE SEQUENCE b_friend_seq
  START WITH 90001
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
 


 -- 시퀀스 삭제
DROP SEQUENCE b_user_profile_seq;
DROP SEQUENCE b_board_seq;
DROP SEQUENCE b_tag_seq;
DROP SEQUENCE b_board_file_seq;
DROP SEQUENCE b_board_like_seq;
DROP SEQUENCE b_com_seq;
DROP SEQUENCE b_com_like_seq;
DROP SEQUENCE b_diary_seq;
DROP SEQUENCE b_friend_seq;

-- 테이블 삭제
DROP TABLE b_friend;
DROP TABLE b_diary;
DROP TABLE b_com_like;
DROP TABLE b_com;
DROP TABLE b_board_like;
DROP TABLE b_board_file;
DROP TABLE b_board_tag;
DROP TABLE b_board;
DROP TABLE b_profile;
DROP TABLE b_tag;
DROP TABLE b_user;

-- 조회
SELECT * FROM b_friend;
SELECT * FROM b_diary;
SELECT * FROM b_com_like;
SELECT * FROM b_com;
SELECT * FROM b_board_like;
SELECT * FROM b_board_file;
SELECT * FROM b_board_tag;
SELECT * FROM b_board;
SELECT * FROM b_profile;
SELECT * FROM b_tag;
SELECT * FROM b_user;

INSERT INTO b_user (blog_id, password, nickname, email, created, info)
VALUES ('abc123', 'pass123', '갈색양말', 'abc@gmail.com', sysdate, '');

SELECT blog_id FROM b_user;