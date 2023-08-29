SELECT cohort.name, sum(duration) as total_duration
FROM assistance_requests
JOIN cohorts ON cohort.id
ORDER BY 

/* CORRECT ANSWER 
SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;

ASK A MENTOR ABOUT THIS ONE THE JOINGS ARE NOT MAKING SENSE. 

