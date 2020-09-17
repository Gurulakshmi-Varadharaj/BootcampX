SELECT cohorts.name AS cohorts, COUNT(assignment_submissions.*)
FROM assignment_submissions
JOIN students ON  students.id = assignment_submissions.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.id
ORDER BY COUNT(assignment_submissions.*) DESC;