/*my answer */ 
SELECT teachers.name as teachers, cohort.name as cohort
FROM teachers 
JOIN cohort ON cohort.id = teachers.cohort
WHERE cohort = "JUL02"
ORDER by teacher

/*correct answer*/
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;