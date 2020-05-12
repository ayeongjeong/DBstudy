--AUTHORITY_MEMBER 권한이 'ROLE_STUDENT’을 가진 목록
SELECT MEMBER.MEMBER_SEQ, MEMBER_ID,NAME,AUTHORITY_ID FROM MEMBER INNER JOIN AUTHORITY_MEMBER
WHERE AUTHORITY_ID = 'ROLE_STUDENT';

--'강의/강연 신' 조직 구조 확인 : ORGANIZATION
WITH RECURSIVE tmp1 AS (
    SELECT ORGANIZATION_SEQ, NAME, TYPE, PARENT_ORGANIZATION_SEQ, 1 AS LEVEL
    FROM ORGANIZATION WHERE ORGANIZATION_SEQ ='UUID-ORGANIZATION-YOJULAB'
    UNION ALL
    SELECT o.ORGANIZATION_SEQ, o.NAME, o.TYPE, o.PARENT_ORGANIZATION_SEQ, t.LEVEL+1 AS LEVEL
    FROM tmp1 t JOIN ORGANIZATION o
    ON t.ORGANIZATION_SEQ = o.PARENT_ORGANIZATION_SEQ
)
SELECT ORGANIZATION_SEQ, NAME, TYPE, PARENT_ORGANIZATION_SEQ, LEVEL
FROM tmp1
ORDER BY level;


SELECT MEMBER.MEMBER_SEQ, ORGANIZATION_SEQ, NAME FROM ORGANIZATION_MEMBER INNER JOIN MEMBER
WHERE MEMBER.MEMBER_SEQ =  ORGANIZATION_MEMBER.MEMBER_SEQ
and ORGANIZATION_MEMBER.ORGANIZATION_SEQ LIKE '%YOJULAB' ;