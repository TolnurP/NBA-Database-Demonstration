#View 1
CREATE VIEW view_1 AS
SELECT  seasonStartYear, inflationAdjSalary 
FROM salaries 
WHERE inflationAdjSalary > (
SELECT AVG(inflationAdjSalary)
FROM salaries
ORDER BY inflationAdjSalary);

Select * from view_1;
# View 2
CREATE VIEW view_2 AS
SELECT playerName,Max(salary) as MAX_salary,seasonStartYear  
FROM salaries
GROUP BY seasonStartYear
ORDER BY MAX_salary DESC;

			#RUN the below query to ensure the view_2 is created
SELECT* 
FROM view_2;

#View_3
CREATE OR REPLACE VIEW view_3 AS
	
WITH cte as 
(SELECT playerName, inflationAdjSalary,     min(inflationAdjSalary) OVER (PARTITION BY seasonStartYear) AS min_inflationAdjSalary
,seasonStartYear FROM salaries
WHERE seasonStartYear > 1999

ORDER BY min_inflationAdjSalary DESC)
SELECT playerName,MAX(inflationAdjSalary) as inflationAdjSalary,min_inflationAdjSalary,seasonStartYear 
FROM cte
group by seasonStartYear
;
select * from view_3;