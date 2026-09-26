-- Active users by role
SELECT u.role, COUNT(DISTINCT m.user_id) AS active_users
FROM implementation_users u
JOIN medication_events m ON u.user_id=m.user_id
WHERE m.status='Completed'
GROUP BY u.role
ORDER BY active_users DESC;

-- Average workflow duration
SELECT event_type, AVG(duration_seconds)/60.0 AS avg_minutes
FROM medication_events
WHERE status='Completed'
GROUP BY event_type
ORDER BY avg_minutes DESC;

-- Tickets by severity
SELECT severity, COUNT(*) AS ticket_count
FROM support_tickets
GROUP BY severity
ORDER BY ticket_count DESC;

-- Average resolution time
SELECT category, AVG(resolution_hours) AS avg_resolution_hours
FROM support_tickets
WHERE status='Closed'
GROUP BY category
ORDER BY avg_resolution_hours DESC;
