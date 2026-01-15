# Global-Cybersecurity-Threat-Analysis-2015-2024
A comprehensive data analysis of global cybersecurity trends (2015-2024). This project utilizes SQL for data modeling and Power BI to visualize financial impacts, attack vectors, and industry vulnerabilities, providing actionable insights into a decade of digital threats.

Title: Global Cybersecurity Threat Analysis (2015 - 2024)

📌 Project Overview
This project provides a comprehensive evaluation of global cybersecurity trends, financial impacts, and operational response metrics. By examining a decade of historical incident data, the analysis identifies high-risk attack vectors and quantifies the economic burden of security breaches across various business sectors.

📊 Key Performance Indicators (KPIs)
The analysis focuses on three primary pillars of cybersecurity management:
Financial Risk Assessment: Quantifying total losses by industry and attack type.
Operational Efficiency: Measuring the average time required to resolve incidents.
Threat Intelligence: Identifying the most frequent vulnerabilities and attack sources.

🛠️ Technical Methodology (SQL)
To ensure high-quality insights, the following advanced SQL techniques were utilized:
Data Integrity Auditing: Implemented queries to detect null values and duplicate records to ensure data accuracy.
Trend Analysis: Utilized Window Functions to calculate a 3-year rolling average, smoothing annual volatility to identify long-term growth patterns.
Performance Benchmarking: Ranked attack types by total financial loss using the RANK() function to assist in budget prioritization

🔍 Summary of Findings
High-Impact Industries: Identified sectors suffering the highest cumulative financial losses.
Response Bottlenecks: Analyzed attack types with the highest average resolution hours to pinpoint where recovery is slowest.
Vulnerability Mapping: Correlated common attack sources with the effectiveness of existing defense mechanisms.

Attack Type	
The method used (e.g., Phishing, Ransomware, DDoS).

Target Industry	
The business sector affected by the breach.

Financial Loss (Millions)	
Direct financial impact of the attack measured in USD millions.

Resolution Time (Hours)	
The duration from detection to incident closure.

Defense Mechanism	
The security controls in place during the attack.

Recommendations
1) Prioritize Defense Spending: Focus resources on top-ranked threats (e.g., Ransomware).
2) Optimize Incident Response: Investigate attack types where resolution time exceeds the global average.
3) Address Industry Gaps: Tailor security frameworks specifically for the most vulnerable target industries.

After structuring the data through SQL and auditing for integrity, developed a multi-perspective Power BI dashboard to translate raw incident data into actionable business intelligence.
The dashboard is designed to provide both a high-level summary for stakeholders and a granular view for security analysts to identify specific industry vulnerabilities

📊 Interactive Dashboard Layout

The dashboard is organized into six functional areas to provide a comprehensive view of the threat landscape:

Key Performance Indicators (Top Left): Displays essential high-level metrics such as Total Financial Loss, Total Affected Users, and Average Resolution Time for an immediate status check.

Clustered Bar Chart (Bottom Left): Ranks Attack Types (e.g., Phishing, Ransomware, DDoS) by their frequency or financial impact to help prioritize budget allocation.

Interactive List Slicer (Top Middle): Allows users to filter the entire dashboard by specific categories such as Year, Country, or Target Industry for deep-dive trend analysis.

Detailed Data Table (Bottom Middle): Provides a granular view of records, showing specific attributes like Defense Mechanisms and Vulnerability Types to map existing security gaps.

Geographic Threat Map (Top Right): A visual representation of incident distribution across the globe, highlighting high-risk regions and the international reach of specific attack sources.


Operational Gauge (Bottom Right): Measures Resolution Time (Hours) against global benchmarks to visualize operational efficiency and identify response bottlenecks.

