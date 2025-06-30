SELECT
  campaign,
  COUNT(*) AS total_contacts,
  SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) AS total_responses,
  ROUND(SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS response_rate_pct
FROM sms_campaign
GROUP BY campaign
ORDER BY campaign;
