# Data Analysis Portfolio
Welcome to my data analysis portfolio, where I present projects that demonstrate my skills in data cleaning, exploration, visualisation and analysis using various tools and techniques. Each project highlights specific methodologies and tools, providing insights into real-world data problems and their solutions.


## Table of Contents
1. [About the Portfolio](#about-the-portfolio)
2. [Tools Used](#tools-used)
3. [Featured Projects](#featured-projects)
   - [Project 1: SQL Data Cleaning of Global Layoffs](#project-1:-sql-data-cleaning-of-global-layoffs)
   - [Project 2: SQL Data Exploration of Global Layoffs](#project-2:-sql-data-exploration-of-global-layoffs)
   - [Project 3: Power BI Dashboard on Hospital Wait List](#project-3:-power-bi-dashboard-on-hospital-wait-list)
   - [Project 4:  Data Professional Survey Power BI Dashboard](project-4:-data-professional-survey-power-bi-dashboard)
   - [Project 5: Excel Sales Data Analysis](#project-5:-excel-sales-data-analysis)
4. [Contact](#contact)


## About the Portfolio
- This portfolio contains a collection of projects that demonstrate my ability to analyse and visualize data across a range of domains. 
- Each project is designed to address a specific problem or dataset, and demonstrates the following:
  
  - Data cleaning - Handling missing values, correcting errors, formatting and preparing data for analysis.
  - Exploratory data analysis - Using statistical techniques to identify patterns and trends.
  - Visualisation - Creating compelling charts and dashboards to better understand and communicate insights.


## Tools Used
- SQL, Power BI query editor and Excel: Data cleaning
- SQL queries and Excel: Data exploration
- Power BI and Excel: Data visualisation


## Featured Projects

### Project 1: SQL Data Cleaning of Global Layoffs

#### Objective 
Perform data cleaning on a dataset of global layoffs for the period 2020 - 2024.

#### Data Source 
- The dataset was sourced from Kaggle and contains information on layoffs across various industries, regions and countries since Covid 19 to the present. 
- Link to data source: [https://www.kaggle.com/datasets/theakhilb/layoffs-data-2022]

#### Tools Used
SQL: For data cleaning.

#### Processes

1. Data loading
2. Data cleaning: Cleaned and normalised data using SQL queries.
- **Key Highlights**
  - Removed duplicates and inconsistent entries.
  - Handled zero, blank and null values to ensure accurate analysis
  - Date formatting
  - Standardised column names and formats.
   
- Link to project: [https://github.com/Blessed-24/Portfolio-Projects/blob/main/SQL%20Data%20Cleaning%20of%20Global%20Layoffs.sql]



### Project 2: SQL Data Exploration of Global Layoffs

#### Objective 
This project analyses global layoff trends from Covid 19 to the present to gain insight into the industries, companies, countries, locations and years most affected by layoffs. The goal is to demonstrate my ability to work with real data, clean it effectively and extract meaningful insights for decision making.

#### Data Source
- The dataset was sourced from Kaggle.
- Link [https://www.kaggle.com/datasets/theakhilb/layoffs-data-2022]

#### Tools Used
SQL: For data querying, and analysis.

#### Processes

1. Data Cleaning (Project 1)
2. Data Analysis
- Queried the dataset to identify:
  - Industries with the highest number of layoffs.
  - Companies most affected by redundancies.
  - Countries and locations with the highest number of layoffs.
  - Periods with spikes in layoffs.
 
#### Key Insights
- **Countries Most Affected**
  - The United States, India, Germany, Sweden and the United Kingdom were the countries most affected by redundancies.
  - These countries were hit hard because they rely on industries such as technology, manufacturing and retail, which were severely disrupted during the pandemic. Problems with global supply chains and               overstaffing in the technology sector also led to job losses. In addition, the speed of layoffs depended on labour laws, the strength of their economies and how they managed the recovery.

    ![image](https://github.com/user-attachments/assets/c9b273b5-cafa-4e5d-b3c0-9562142b8606)

- **Regional Highlights**
  - The San Francisco Bay Area experienced the highest number of layoffs, followed by Seattle, New York City, Bengaluru and Austin. A
  - This highlights the vulnerability of major technology hubs and economically diverse regions.

    ![image](https://github.com/user-attachments/assets/52e60a7d-01e0-4a5c-9d69-93c7db1c8e37)

- **Industry and Company Impact**
  - The transportation sector accounted for the highest number of layoffs, with a notable spike in 2024.
  - Amazon recorded the most layoffs by a single company, cutting 18,000 jobs.
  - The transportation sector faced the most layoffs due to falling demand, supply chain issues and rising costs with a sharp increase in 2024. Amazon leads the way in company-specific layoffs, cutting 18,000        jobs due to overstaffing and economic uncertainty.
 
    ![image](https://github.com/user-attachments/assets/0ab0db20-2999-4f17-8928-9f1c82d16cfc) ![image](https://github.com/user-attachments/assets/dc8a1e62-852e-40f4-a817-82e96a7aa042)

- **Layoff Trends by Year**
  - **2020:** A significant increase of 60,960 layoffs, driven by the COVID-19 pandemic.
  - **2021:** Layoffs slow to 6,490 as regions adjust to the "new normal".
  - **2022:** Layoffs surge to 126,450, reflecting ongoing economic challenges.
  - **2023:** Further increase to 158,363, suggesting lingering effects of the pandemic on the workforce.
  - **2024 (as of October):** Marked slowdown with layoffs at 95,225, signalling gradual stabilization.
 
    ![image](https://github.com/user-attachments/assets/24ca6c99-58bd-47d5-b8d1-61a50df2af5b)

- Link to Project: [https://github.com/Blessed-24/Portfolio-Projects/blob/main/SQL%20Data%20Exploration%20of%20Global%20Layoffs.sql]



### Project 3:  Power BI Dashboard on Hospital Waitlist
  
#### Objective
This project analyse and visualise hospital wait list data to identify trends, optimise resource allocation and reduce patient wait times. The dashboard provides actionable insights into case types, wait time distribution, specialty performance and monthly trends, enabling better decision making for healthcare management.
  
#### Data Source
Hopistal "Waitlist_data.csv" file.

#### Processes
1. Data loading
2. Data transformation: Cleaned and normalised data using power query editor.

- **Key Highlights**
  - Removed duplicates.
  - Handled blank and null values to ensure accurate analysis
  - Standardised column names and formats.
      
#### Actionable Insights for Stakeholders

- **1. Total Waiting List Trends**
  - The latest waitlist stands at 709K, an increase of 10.8% on the previous year (640K), suggesting growing demand or inefficiencies.
  - **Action:** Investigate and address operational bottlenecks contributing to this increase.

- **2. Distribution of Case Types**
  - Outpatients dominate the wait list with 72.5%, followed by day cases (16.89%) and inpatients (10.61%).
  - **Action:**
    - Focus on improving outpatient services as they account for the largest proportion of the waiting list.
    - Re-evaluate outpatient workflows and identify processes that can be optimised.

- **3. Wait Time by Age Profile**
  - Patients aged 16-64 have the longest average waiting times.
  - **Action:**
    - Prioritize scheduling for 16-64 to reduce delay.
    - Introduce targeted strategies to address cases waiting over 18 months.

- **4. Specialities Performance**
  - Specialities with the longest average waiting times include:
    - Paediatric dermatology: 168 days.
    - Paediatric ENT: 148 days.
    - Paediatric orthopaedics: 115 days.
    - Accident and emergency
    - Paediatric cardiology
  - **Action:**
    - Implement streamlined scheduling and resource allocation for these high demand areas.
      
- Link to Project: [https://github.com/Blessed-24/Portfolio-Projects/blob/main/Power%20BI%20Dashboard%20on%20Hospital%20Waitlist.pbix]

   
  
     ### Snapshot of Dashboard

![image](https://github.com/user-attachments/assets/5dde3afe-d8a8-4048-a076-79a921c1647c)


  
### Project 4:  Data Professional Survey Power BI Dashboard

#### Objective
The data professional survey dashboard aims to analyse survey responses from data professionals to uncover trends in geographical distribution, salary levels, job satisfaction and skill preferences. The insights are designed to help recruiters, organisations and aspiring data professionals understand the landscape of the data industry.

#### Data Source
Data professional "survey_data.csv" file.

#### Processes
1. Data loading
2. Data transformation: Cleaned and normalised data using power query editor.
- **Key Highlights**
  - Removed duplicates.
  - Handled blank and null values to ensure accurate analysis
  - Standardised column names and formats.

#### Key Insights

- **Geographical Distribution:**
  - The majority of respondents are from the United States and India, followed by the United Kingdom and Canada.
- **Job Titles and Salaries:**
  - Data scientists have the highest average salary, followed by data architects and data engineers.
  - Data analysts and database developers earn significantly less.
  - Data scientists, data architects and data engineers earn higher salaries because their roles require advanced skills and more experience and they are directly involved in complex tasks such as building           models, designing systems and managing big data. On the other hand, data analysts and database developers earn less because their roles focus more on routine data tasks, which often have a lower skill            barrier and are more widely available.
- **Breaking into Data Roles:**
  - Many respondents found breaking into the field "neither easy nor difficult", but a significant percentage faced challenges.
  - Breaking into the data sector is "neither easy nor difficult" for many, because it requires a mix of technical skills, networking and relevant experience. However, some face challenges due to high                competition, skills gaps or a lack of industry connections.
- **Programming Language Preference:**
  - Python dominates as the most popular language across all roles.
  - Reasons for this may be because python is easy to learn, versatile and widely used for data analysis, machine learning and automation. Its large community and extensive libraries make it a choice for data        professionals.
- **Work-life Balance:**
  - Respondents rate their satisfaction with work-life balance at 5.74/10, showing a moderate level of satisfaction.
- **Salary Satisfaction:**
  - A score of 4.27/10 indicates widespread dissatisfaction with current salary levels.
- **Gender Pay Parity:**
  - Minimal gender disparity, with salaries distributed almost equally between women (51.15%) and men (48.85%), reflecting progress in equal pay practices.

- Link to Project: [https://github.com/Blessed-24/Portfolio-Projects/blob/main/Data%20Professional%20Survey%20Power%20BI%20Dashboard.pbix]


     ### Snapshot of Dashboard

![image](https://github.com/user-attachments/assets/65e6d881-c33f-4f7c-880c-434fe9fa44f9)



### Project 5: Excel Sales Data Analysis

#### Objective
The purpose of this analysis is to evaluate coffee sales performance across regions, customer segments, product types and time periods to provide actionable insights that can help optimise marketing strategies, inventory management and customer engagement efforts. The dashboard serves as a tool to visualise trends, highlight top performing products and identify areas for growth and improvement.

#### Data Source
- Data was sourced from Kaggle. Link: [https://www.kaggle.com/datasets]

#### Processes
1. Data import
2. Data cleaning: Cleaned and normalised data
- **Key Highlights**
  - Removed duplicates.
  - Removed blank rows to ensure accurate analysis
  - Date formatting
  - Standardised column names and formats.
      
#### Key Insights

- **Sales by Country:**
  - The United States leads in total sales, generating $35,639, significantly outperforming other countries.
  - Ireland ($6,697) and the United Kingdom ($2,799) follow as secondary markets. Expansion strategies in these regions could drive further growth.

- **Top Coffee Types:**
  - Sales vary by coffee type, with Arabica and Liberica showing notable seasonal spikes.
  - Consider optimising inventory for strong months based on trends observed for Arabica and Liberica.

- **Customer Analysis:**
  - The top 5 customers, led by Allis Wilmore and Brenn Dundredge, contribute significantly to sales.
  - Introducing loyalty programmes or exclusive offers for top customers could improve retention and increase lifetime value.

- **Order Size Preferences:**
  - The most popular product size is 2.5kg, indicating customer preference for larger packs. Focus promotions and discounts on this size to maximise sales.
  - The preferred roast type is light roast, which could guide product focus and marketing strategies.

- **Monthly Trends:**
  - Seasonal peaks are evident across years; using promotions during high demand months could increase sales.
  - Low demand months indicate opportunities for new campaigns or bundling offers to maintain consistent sales.

#### Recommendations
   - Expand marketing efforts for light roasts and 2.5kg sizes, as these resonate strongly with customer preferences.
   - Loyalty cards have been found to have no impact on sales, but can work if redesigned with better rewards and personalised offers. This could improve retention, increase engagement and drive sales.
   - Conduct regional marketing campaigns in Ireland and the UK to increase their contribution to total sales.
   - Align inventory and supply chain strategies with coffee type trends, seasonal demand and product size preferences.

- Link to Project: [https://github.com/Blessed-24/Portfolio-Projects/blob/main/Excel%20Sales%20Data%20Analysis.xlsx]

     ### Snapshot of Dashboard

![image](https://github.com/user-attachments/assets/19e84a41-0dc3-4041-9395-e254193cdc15)



## 4. Contact
Feel free to reach out if you have questions or would like to collaborate:
- Email: blessedogoh@gmail.com
- LinkedIn: [https://www.linkedin.com/in/dr-blessing-ogoh-orch-b6b792127/]

