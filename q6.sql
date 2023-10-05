SELECT DISTINCT adm_sem, DATE_FORMAT(adm_year, '%Y') AS school_year
FROM admission
ORDER BY school_year, adm_sem;