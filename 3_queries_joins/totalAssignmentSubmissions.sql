SELECT start_date, count(*) as total_submissions
FROM assignment_submissions
JOIN cohorts on cohorts.start_date = start_date 
GROUP BY start_date
ORDER BY start_date ASC;

/*CORRECDT VERSION*/
SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_submissions DESC;