SELECT students.name as student, avg(assignment_submissions.duration) AS average_assignment_duration
FROM assignment_submissions
JOIN students ON assignment_id= students.id 
JOIN assignments ON asssignment_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
