-- SQLite
CREATE TABLE MEMBER_INFO
(
  ID   REAL NULL    ,
  NAME text NULL    ,
  AGE  REAL NULL    ,
  SEX  TEXT NULL    ,
  ROLE TEXT NULL    
);

CREATE TABLE VERIFY
(
  ID   REAL NULL    ,
  TYPE TEXT NULL    
);


INSERT INTO MEMBER_INFO VALUES (10,'고상훈',18,'남성','행동대원');
INSERT INTO MEMBER_INFO VALUES (20,'아사코',15,'여성','행동대장');
INSERT INTO MEMBER_INFO VALUES (30,'김열정',17,'남성','저격수');
INSERT INTO MEMBER_INFO VALUES (40,'이윤화',16,'여성','적군 전략분석');
INSERT INTO MEMBER_INFO VALUES (50,'이루다',16,'여성','자금조달') ;

INSERT INTO VERIFY VALUES (10,'불순분자') ;
INSERT INTO VERIFY VALUES (20,'정상') ;
INSERT INTO VERIFY VALUES (30,'자유민주주의') ;
INSERT INTO VERIFY VALUES (40,'정상') ;
INSERT INTO VERIFY VALUES (50,'정직') ;

INSERT INTO MEMBER_INFO VALUES (60,'이기철',18,'남성','식량공급') ;
INSERT INTO MEMBER_INFO VALUES (70,'한동주',20,'여성','무기관리') ;
INSERT INTO MEMBER_INFO VALUES (80,'김대현',17,'여성','문지기') ;
INSERT INTO MEMBER_INFO VALUES (90,'박봄수',15,'남성','청소') ;
INSERT INTO MEMBER_INFO VALUES (100,'이즌오',18,'남성','취사') ;
INSERT INTO MEMBER_INFO VALUES (110,'김영희',18,'여성','밀정') ;
INSERT INTO MEMBER_INFO VALUES (120,'정민지',18,'여성','행동대원') ;
INSERT INTO MEMBER_INFO VALUES (130,'나석주',17,'남성','정보원') ;
INSERT INTO MEMBER_INFO VALUES (140,'장기훈',20,'남성','수송') ;

INSERT INTO VERIFY VALUES (60,'정상') ;
INSERT INTO VERIFY VALUES (70,'천주교도') ;
INSERT INTO VERIFY VALUES (80,'바른생각') ;
INSERT INTO VERIFY VALUES (90,'정상') ;
INSERT INTO VERIFY VALUES (100,'정상') ;
INSERT INTO VERIFY VALUES (110,'정상') ;
INSERT INTO VERIFY VALUES (120,'정상') ;
INSERT INTO VERIFY VALUES (130,'반반') ;
INSERT INTO VERIFY VALUES (140,'정상') ;