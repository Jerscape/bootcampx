SELECT day, COUNT(assignments.*) as number_of_assignments, COUNT(duration) as total_duration
FROM assignments 
GROUP by day
ORDER by day;