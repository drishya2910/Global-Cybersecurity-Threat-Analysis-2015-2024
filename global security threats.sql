CREATE TABLE cybersecurity_threats (
    Country VARCHAR(100),
    Year INT,
    Attack_type VARCHAR(100),
    Target_industry VARCHAR(100),
    Financial_loss_millions DECIMAL(10,2),
    Affected_users INT,
    Attack_Source VARCHAR(100),
    Vulnerability_type VARCHAR(100),
    Defense_mechanism VARCHAR(100),
    Resolution_time_hours INT
);

select count(*) AS total_rows
from cybersecurity_threats;

SELECT 
    COUNT(*) - COUNT(Country) AS country_nulls,
    COUNT(*) - COUNT(Year) AS year_nulls,
    COUNT(*) - COUNT(Attack_type) AS attack_type_nulls,
    COUNT(*) - COUNT(Target_industry) AS Target_Industry_nulls,
    COUNT(*) - COUNT(Affected_users) AS Affected_Users_nulls,
    COUNT(*) - COUNT(Financial_loss_millions) AS loss_nulls,
    COUNT(*) - COUNT(Attack_Source) AS Attack_Source_nulls,
    COUNT(*) - COUNT(Vulnerability_type) AS Security_Vulnerability_Type_NULL,
    COUNT(*) - COUNT(Defense_mechanism) AS Defense_Mechanism_NULL,
    COUNT(*) - COUNT(Resolution_time_hours) AS Incident_Resolution_Time_NULL
FROM cybersecurity_threats;

SELECT COUNT(DISTINCT Country) AS unique_countries
FROM cybersecurity_threats;

SELECT COUNT(DISTINCT Target_industry) AS unique_industries
FROM cybersecurity_threats;

SELECT COUNT(DISTINCT Attack_type) AS unique_threats
FROM cybersecurity_threats;

SELECT COUNT(DISTINCT Year) AS years_covered
FROM cybersecurity_threats;

SELECT Attack_type, COUNT(*) AS total_incidents
FROM cybersecurity_threats
GROUP BY Attack_type
ORDER BY total_incidents DESC;

SELECT Target_industry, SUM(Financial_loss_millions) AS total_loss
FROM cybersecurity_threats
GROUP BY Target_industry
ORDER BY total_loss DESC;

WITH yearly_incidents AS (
  SELECT
    Year, 
    COUNT(*) AS incidents
  FROM cybersecurity_threats
  GROUP BY Year
)

SELECT AVG(Resolution_time_hours) AS avg_resolution_time
FROM cybersecurity_threats;

select
country,
year,
Attack_Type,
count(*) AS duplicate_count
from cybersecurity_threats
GROUP BY Country, Year, Attack_type
HAVING COUNT(*) > 1;

SELECT
  MIN(Financial_loss_millions) AS min_loss,
  MAX(Financial_loss_millions) AS max_loss,
  MIN(Resolution_time_hours) AS min_hours,
  MAX(Resolution_time_hours) AS max_hours
FROM cybersecurity_threats;

SELECT * FROM v_yearly_growth;

SELECT
  Attack_type,
  SUM(Financial_loss_millions) AS total_loss_musd,
  RANK() OVER (
    ORDER BY SUM(Financial_loss_millions) DESC
  ) AS threat_rank
FROM cybersecurity_threats
GROUP BY Attack_type;

SELECT
  Year,
  COUNT(*) AS incidents,
  ROUND(
    AVG(COUNT(*)) OVER (
      ORDER BY Year
      ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ), 2
  ) AS rolling_3yr_avg
FROM cybersecurity_threats
GROUP BY Year;

SELECT
  attack_type,
  ROUND(AVG(resolution_time_hours), 2) AS avg_resolution_hours
FROM cybersecurity_threats
GROUP BY attack_type
ORDER BY avg_resolution_hours DESC;

