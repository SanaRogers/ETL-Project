SELECT * FROM perinfo;

SELECT * FROM salaries;

SELECT * FROM draftinfo;

SELECT 
	salaries."Player", 
	salaries.season17_18_salary,
	perinfo."PER", 
	draftinfo."Team", 
	draftinfo.draft_year, 
	draftinfo.draft_round, 
	draftinfo.draft_number
FROM salaries
JOIN draftinfo 
ON salaries."Player" = draftinfo."Player"
JOIN perinfo
ON perinfo."Player" = salaries."Player";

ALTER