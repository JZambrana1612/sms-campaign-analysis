
-- Question 3: If we can only reach 20% of leads, who should we prioritize?
SELECT
    job,
    education,
    poutcome,
    AVG(balance) AS avg_balance,
    COUNT(*) AS total_contacts,
    SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) AS conversions,
    ROUND(SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS conversion_rate
FROM sms_campaign
GROUP BY job, education, poutcome
HAVING total_contacts > 50
ORDER BY conversion_rate DESC, avg_balance DESC
LIMIT 50;
