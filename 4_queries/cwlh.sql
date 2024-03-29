SELECT cohorts.name, max(avg(completed_at - started_at)) as longest_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY longest_assistance_time;