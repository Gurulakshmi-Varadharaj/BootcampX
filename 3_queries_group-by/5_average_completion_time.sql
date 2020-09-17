SELECT students.name AS student, AVG(assignments.duration) AS average_assignment_duration
FROM assignments
JOIN assignment_submissions ON assignment_submissions.assignment_id = assignments.id
JOIN students ON students.id = assignment_submissions.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC;