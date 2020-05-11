-- SQLite

CREATE TABLE emp(
id INT AUTO_INCREMENT PRIMARY KEY,
ename VARCHAR(255),
parent_id INT DEFAULT 0 REFERENCES id );

INSERT INTO emp VALUES
(1, 'name1', 0),(2, 'name2', 1),(3, 'name3', 1),(4, 'name4', 3),(5, 'name5', 0),
(6, 'name6', 3),(7, 'name7', 4),(8, 'name8', 5),(9, 'name9', 8),(10, 'name10',8);

WITH RECURSIVE tmp1 AS (
    SELECT id, ename, parent_id, ename AS path, 1 AS level  --level=depth
    FROM emp WHERE parent_id=0
    UNION ALL
    SELECT e.id, e.ename, e.parent_id, t.path ||','||
    e.ename, t.level+1 AS level FROM tmp1 t JOIN emp e ON t.id=e.parent_id )
SELECT id, ename, parent_id, path, level
FROM tmp1 
ORDER BY path ;


WITH RECURSIVE tmp2 AS (
    SELECT id, ename, parent_id, ename AS path, 1 AS level
    FROM emp WHERE parent_id=0 
    UNION ALL
    SELECT e.id, e.ename, e.parent_id, t.path ||','||
    e.ename, t.level+1 AS level FROM tmp2 t JOIN emp e ON t.id=e.parent_id and e.id <=7 )
SELECT id, ename, parent_id, path, level
FROM tmp2 
ORDER BY ename DESC;