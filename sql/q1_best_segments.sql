
-- Question 1: Which customer segments respond best to SMS outreach messages?
SELECT
    job,
    marital,
    education,
    COUNT(*) AS total_contacts,
    SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) AS conversions,
    ROUND(SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS conversion_rate
FROM sms_campaign
GROUP BY job, marital, education
ORDER BY conversion_rate DESC;
