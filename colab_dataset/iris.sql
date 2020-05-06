-- SQLite
--target 0='setosa', 1='versicolor', 2='virginica'

CREATE TABLE IRIS_MAX (
TARGET TEXT NULL,
MAX_SEPAL_len REAL NULL,
MAX_SEPAL_wid REAL NULL,
MAX_PETAL_len REAL NULL,
MAX_PETAL_wid REAL NULL );

INSERT INTO IRIS_MAX 
SELECT TARGET, max(SEPAL_len),max(SEPAL_wid),max(PETAL_len),max(PETAL_wid) FROM iris_table GROUP BY TARGET;
