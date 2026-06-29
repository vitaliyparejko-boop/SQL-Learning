WITH top_paying_jobs AS (
    SELECT job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM job_postings_fact
        LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE job_location = 'Anywhere'
        AND job_title_short = 'Data Analyst'
        AND salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)
SELECT top_paying_jobs.*,
    skills
FROM top_paying_jobs
    INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY salary_year_avg DESC
    /*1. SQL is essential
     
     Every top-paying role requires SQL, making it the single most important technical skill for high-paying Data Analyst positions.
     
     2. Python is nearly universal
     
     Python appears in 7 of 8 jobs, showing that modern analysts are expected to perform automation, data cleaning, and advanced analysis—not just querying databases.
     
     3. Data visualization is highly valued
     
     Both visualization tools are common:
     
     Tableau: 75%
     Power BI: 25%
     
     This indicates employers expect analysts to communicate insights effectively, not just analyze data.
     
     4. Cloud data platforms are increasingly important
     
     Several cloud technologies appear repeatedly:
     
     Snowflake
     Azure
     AWS
     Databricks
     
     This suggests many high-paying analyst roles involve working with cloud-based data warehouses rather than traditional on-premise databases.
     
     5. Programming ecosystem matters
     
     Beyond Python itself, employers also look for:
     
     Pandas
     NumPy
     PySpark
     Jupyter
     
     These indicate an expectation that analysts can build reproducible analytical workflows.
     
     6. Collaboration tools are common
     
     Several postings include:
     
     Jira
     Confluence
     Bitbucket
     GitLab
     Git
     
     This reflects that analysts increasingly work within software development and agile teams.
     
     7. Traditional spreadsheet skills remain relevant
     
     Although programming dominates, Excel still appears in nearly 40% of the highest-paying roles, showing it remains an important business tool.
     
     [
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "sql"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "python"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "r"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "azure"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "databricks"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "aws"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "pandas"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "pyspark"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "jupyter"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "excel"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "tableau"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "power bi"
     },
     {
     "job_id": 552322,
     "job_title": "Associate Director- Data Insights",
     "salary_year_avg": "255829.5",
     "company_name": "AT&T",
     "skills": "powerpoint"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "sql"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "python"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "r"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "hadoop"
     },
     {
     "job_id": 99305,
     "job_title": "Data Analyst, Marketing",
     "salary_year_avg": "232423.0",
     "company_name": "Pinterest Job Advertisements",
     "skills": "tableau"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "sql"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "crystal"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "oracle"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "tableau"
     },
     {
     "job_id": 1021647,
     "job_title": "Data Analyst (Hybrid/Remote)",
     "salary_year_avg": "217000.0",
     "company_name": "Uclahealthcareers",
     "skills": "flow"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "sql"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "python"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "go"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "snowflake"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "pandas"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "numpy"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "excel"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "tableau"
     },
     {
     "job_id": 168310,
     "job_title": "Principal Data Analyst (Remote)",
     "salary_year_avg": "205000.0",
     "company_name": "SmartAsset",
     "skills": "gitlab"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "sql"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "python"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "azure"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "aws"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "oracle"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "snowflake"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "tableau"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "power bi"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "sap"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "jenkins"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "bitbucket"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "atlassian"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "jira"
     },
     {
     "job_id": 731368,
     "job_title": "Director, Data Analyst - HYBRID",
     "salary_year_avg": "189309.0",
     "company_name": "Inclusively",
     "skills": "confluence"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "sql"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "python"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "r"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "git"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "bitbucket"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "atlassian"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "jira"
     },
     {
     "job_id": 310660,
     "job_title": "Principal Data Analyst, AV Performance Analysis",
     "salary_year_avg": "189000.0",
     "company_name": "Motional",
     "skills": "confluence"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "sql"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "python"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "go"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "snowflake"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "pandas"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "numpy"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "excel"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "tableau"
     },
     {
     "job_id": 1749593,
     "job_title": "Principal Data Analyst",
     "salary_year_avg": "186000.0",
     "company_name": "SmartAsset",
     "skills": "gitlab"
     },
     {
     "job_id": 387860,
     "job_title": "ERM Data Analyst",
     "salary_year_avg": "184000.0",
     "company_name": "Get It Recruit - Information Technology",
     "skills": "sql"
     },
     {
     "job_id": 387860,
     "job_title": "ERM Data Analyst",
     "salary_year_avg": "184000.0",
     "company_name": "Get It Recruit - Information Technology",
     "skills": "python"
     },
     {
     "job_id": 387860,
     "job_title": "ERM Data Analyst",
     "salary_year_avg": "184000.0",
     "company_name": "Get It Recruit - Information Technology",
     "skills": "r"
     }
     ]
     
     */