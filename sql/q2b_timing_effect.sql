
-- Question 2B: How does the timing of contact affect conversion rate?
SELECT
    month,
    day,
    COUNT(*) AS total_contacts,
    SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) AS conversions,
    ROUND(SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS conversion_rate
FROM sms_campaign
GROUP BY month, day
ORDER BY month, day;
