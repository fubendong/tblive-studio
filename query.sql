-- 按照suid和sbizcode分组统计次数
SELECT
  suid, 
  sbizcode,
  COUNT(*) as count_times
FROM ieg_tdbank::djc_dsl_monitor_report_fht0
WHERE tdbank_imp_date BETWEEN '2025082100' AND '2025083100'
  AND isuberrcode = '-720311'
GROUP BY suid, sbizcode
ORDER BY suid, sbizcode;

-- 只按照suid分组统计次数
SELECT
  suid, 
  COUNT(*) as count_times
FROM ieg_tdbank::djc_dsl_monitor_report_fht0
WHERE tdbank_imp_date BETWEEN '2025082100' AND '2025083100'
  AND isuberrcode = '-720311'
GROUP BY suid
ORDER BY suid;