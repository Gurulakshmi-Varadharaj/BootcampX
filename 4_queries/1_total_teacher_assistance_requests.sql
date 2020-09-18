SELECT COUNT(assistance_requests.id) AS total_requests, name
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE completed_at IS NOT NULL AND name = 'Waylon Boehm'
GROUP BY name;