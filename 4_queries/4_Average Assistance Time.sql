SELECT avg(completed_at - started_at)
FROM assistance_requests
WHERE completed_at IS NOT NULL AND created_at IS NOT NULL;