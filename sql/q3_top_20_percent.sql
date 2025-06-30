WITH segment_rates AS (
  SELECT
    education,
    job,
    ROUND(SUM(CASE WHEN subscribed = 'yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS seg_response_rate
  FROM sms_campaign
  GROUP BY education, job
),
scored AS (
  SELECT
    sc.*,
    sr.seg_response_rate
  FROM sms_campaign sc
  JOIN segment_rates sr
    ON sc.education = sr.education
   AND sc.job = sr.job
)
SELECT
  age,
  job,
  education,
  balance,
  seg_response_rate AS estimated_response_pct
FROM scored
ORDER BY estimated_response_pct DESC, balance DESC
LIMIT CEIL((SELECT COUNT(*) FROM sms_campaign) * 0.20);
