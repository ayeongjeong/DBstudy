-- SQLite
CREATE TABLE WINE_AVG(
TARGET TEXT, alcohol REAL, malic_acid REAL, ash REAL, alcalinity_of_ash REAL, magnesium REAL,total_phenols REAL,flavanoids REAL,
nonflavanoid_phenols REAL ,proanthocyanins REAL,color_intensity REAL,hue REAL, proline REAL );


INSERT INTO WINE_AVG SELECT TARGET, avg(alcohol),avg(malic_acid),avg(ash),avg(alcalinity_of_ash),avg(magnesium),avg(total_phenols),avg(flavanoids),
avg(nonflavanoid_phenols),avg(proanthocyanins),avg(color_intensity),avg(hue),avg(proline) FROM wine_table GROUP BY TARGET;