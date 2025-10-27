-- 1.Getting the total no of rows in out hive table

SELECT  COUNT(*) FROM vgsales;


-- 2.Getting videos games counts per genre.

SELECT Genre, COUNT(Genre) FROM vgsales GROUP BY Genre ORDER BY 2;


-- 3.Displaying titles for specific platform and year.

SELECT * FROM vgsales WHERE Platform = "PS2" AND Year = 2010 LIMIT 10;


--4.Displaying popular genres in our video games sales dataset.

SELECT Genre FROM vgsales WHERE Global_Sales BETWEEN 20.0 AND 30.0;


-- 5.Displaying genre per publishers.

SELECT Publisher, Genre FROM vgsales GROUP BY Publisher, Genre LIMIT 10;


--6.Displaying average sales in a specific region for a genre.

SELECT AVG(NA_Sales) FROM vgsales WHERE Genre = "Action";


-- 7.Displaying total sales of each genre for a region.

SELECT Genre, SUM(JP_Sales) FROM vgsales GROUP BY Genre, 2 ORDER BY 2 DESC LIMIT 10;


-- 8.Displaying average sales of a publisher for a region.

SELECT AVG(EU_Sales) FROM vgsales WHERE Publisher = "Electronic Arts";


