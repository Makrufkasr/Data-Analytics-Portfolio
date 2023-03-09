# Data Analyst Portfolio

<p align="center">
  <img src="https://user-images.githubusercontent.com/109516688/215760484-88a68996-62e0-4c83-ad38-eb60eb665e54.png" />
</p>

## 🌟 About Me
A bachelor of industrial engineering, who really loves and always learning about business, data and analysis. Numbers are my best friend for solving problems. In this modern era, data is one of the fuels used in business to compete to be the best in their field. Knowledge of problems and how to solve problems is a much-needed skill. Analysis and decisions without a database have no strong power. By combining some of the knowledge and experience I have, I can present a better solution to a problem, so I can create something new that is more effective and efficient. [link cv](https://drive.google.com/file/d/1rdHoJVjP960MRmgfeex9sTZrHWSNn9Xe/view?usp=sharing)

## Expertise
1. SQL (Structured Query Languange)
2. Python
3. Statistics
4. BigQuery
5. PostgreSQL
5. Looker (Data Studio)
6. Tableau
7. Power BI

<!-- TABLE OF CONTENTS -->
## 📚 Table of Contents
List of project :

1. [Developing Support Dashboard For Business Performance](#developing-support-dashboard-for-business-performance) 
2. [Growth and Cohort Analysis in TheLook E-Commerce](#growth-and-cohort-analysis-in-thelook-ecommerce) 
3. [Clustering Customer Segmentation the Indonesian Investment Platform](#clustering-customer-segmentation-the-indonesian-investment-platform)
4. [Youtube Kenjee Perfomace Analytics](#youtube-kenjee-perfomace-analytics)
5. [Customer Segmentation using RFM Analysis](customer-segmentation-using-rfm-analysis)
6. [Telcom Churn Analytics (Tableau)](#telcom-churn-analytics)
7. [Covid Vaccinations World Progress (Tableau)](#covid-vaccinations-world-progress)
8. [Sales Perfomance Dashboard (Power BI)](#sales-perfomance-dashboard)
9. [Customers reviews AirBnb (Data Studio)](#customer-reviews-airbnb)

<br>

## Developing Support Dashboard For Business Performance(On-going)
Skill Set : Data Studio(Looker), Big Query, SQL (Standard Query Syntax, Aggregate Functions, Joins Functions, Data Type Functions, Date Format Functions, Window Functions)
![image](https://user-images.githubusercontent.com/109516688/222958617-cf3303b7-f223-4b10-9de1-f5e0e800b3bd.png)

<h4>Project Objectives</h4>
The company asked us to analyze data and provide business recommendations based on business process data that has been running from 2020-2021 to be able to get an improvement in 2023, To fulfill this, we as data analysts are asked to create dashboards to monitor Key Performance Indicators for the Executive, Marketing and Operational sections.
<h4>Methodology</h4>

1. Define user need
   * CEO = Monitor Overall business performance of company
   * Marketing Manager = Analyze, Evaluate, And Generate new apporach to meet the business target(Revenue)
   * Product Manager Daily Dashboard = Gain Information regarding smallest level of detai about ouur business performance
2. Define metrics for each user
3. Create query for metrics
4. Mockup Dashboard Design
5. Applicated on BI Tools
   
<h4>Result</h4>

1. on going


| Link Dashboard	| Code 	|               Title              	|
|:----:	|:----:	|:--------------------------------:	|
|   [🔗](https://lookerstudio.google.com/reporting/f5e6e336-f7f0-426b-bb0c-6ff8c8f90d52)  	|   [📜](https://github.com/Makrufkasr/Data-Analytics-Portfolio/tree/main/E-commerce%20Dashboard%20using%20Data%20studio)  	|             E-Commerce Dashboaord           	|


## Growth and Cohort Analysis in TheLook ECommerce
Skill Set : Standard Query Syntax, Aggregate Functions, Joins Functions, Data Type Functions, Date Format Functions, Window Functions
![Desain tanpa judul (7)](https://user-images.githubusercontent.com/109516688/217712500-5df1458a-85db-4bcf-b9b5-cd1752cbff40.png)

<h4>Overview</h4>
TheLook is a fictitious eCommerce clothing site developed by the Looker team. The dataset contains information about customers, products, orders, logistics, web events and digital marketing campaigns. This study will show about the state of TheLook eCommerce and the customer retention rate cohort analysis..
<h4>Methodology</h4>

1. Answer all the business questions by querying SQL in Big Query (Exploratory Data Analysis)
2. Extract the columns needed to make a customer retention rate cohort table using Big Query
3. Export the table into csv and open it in google spreadsheet
4. Make the cohort table, color the cell using conditional formatting
5. Analysis and take the insight from the cohort result

<h4>Result</h4>

1. The customer from Jan and Feb 2019 group have some months with no repurchase. It probably because they are the first user who trying our apps and much of them are dissatisfied with our product launching.
2. There is a significant drop in the first month more than 95%. This may because customers have terrible experience at the first time.
3. TheLook loyal customer rate is between 3-4%.
4. The cohort size show that the user is growing month to month, from 30 total user in Jan 2019, to 5892 users in June 2022. This is showed that TheLook campaign event was successful to make higher impressions and get new users over time.
5. The retention for the first quarter are also getting better and better. Especially in 2022, the retention is higher than 6%. This is showing that TheLook are able to solving the first time experience issue.
6. But, there is a decreasing retention rate from the last month campaign. It may show that the campaign/ events from the last month are ineffective or having worse performance than previous campaign. Thus, TheLook better not use the last campaign for the next month


| Link Deck	| Code 	|               Title              	|
|:----:	|:----:	|:--------------------------------:	|
|   [🔗](https://docs.google.com/presentation/d/1kzWW-kMGigG_iTeIUQZ7LgWPh076QGTn5N7dJlnPQss/edit?usp=sharing)  	|   [📜](https://github.com/Makrufkasr/Data-Analytics-Portfolio/blob/main/project.sql)  	|              Growth and Cohort Analysis in TheLook ECommerce            	|

## Clustering customer segmentation the Indonesian investment platform
Skill Set : K-means, Clustering analysis, Joins FunctionsData visualization, Silhouette Score.
![Desain tanpa judul (9)](https://user-images.githubusercontent.com/109516688/217715350-628cd71d-5394-4892-9593-619a5a35aef6.png)

<h4>Overview</h4>
As an Indonesia investment platform start up  currently focused on app-based mutual fund investment at the end of September 2021. In the mobile app developed by the company, users can register as investor and conduct buy or sell transactions on selected mutual funds. In addition, the platform offers Robo-investing, Which allows users to invest a diversified mutual fund portfolio without hassle while considering the factors such as age, income and overall risk profile. Conduct clustering to maximize campaigns on the marketing team for new products to be launched and provide business recommendations for the analysis that has been produced.

<h4>Methodology</h4>

1. Load the dataset and cleaning the data in Python
2. EDA and Data Visualization using Python
3. Conduct Clustering analysis 
4. Looking for N Cluster using Elbow Method and Silhoutte score Analysis
5. Build K-Means clustering Model using the actual columns

<h4>Result</h4>

1. Starter Stock Investor, Lower segmentation is favored by Gen Z, the majority of gender is male and user occupation in the Student sector, Passive transactions to get transactions and have good passion in stock. Email Campaign : Hi, Starter stock investors!, A future with good finances is the dream of today, Let's build good finances using Product Government Bond and this fits with your character!
2. Enthusiast Stock Investor, The middle segment is favored by Gen X, the majority are male and the users work in the Swasta , passive to transact and have sufficient passion in mutual funds. Email Campaign: Hi Enthusiast Stock Investor, let's collect your stock with our new product, government bond, with the many mutual funds you have, you can increase the income from your portfolio.
3. Rich Stock Investor, The top segmentation is favored by Millennials, male gender and user jobs in the private sector, Top profit, frequent transactions and have a good passion in stock. Email Campaign: Hi Success Person!, You are an amazing person in managing your portfolio!. Having just a few portfolios can result in losses. By adding a government bond in your portfolio, you will reduce the risk of loss!.
4. Campaign Recommendations: If the campaign has a limited budget, you should prioritize the Rich Stock Investor and Enthusiast Stock Investor segment, If you want a job-based campaign, prioritize private work because the majority of private jobs are in the stock investor and Enthusiast stock investor segment.

| Link Deck	| Code 	|               Title              	|
|:----:	|:----:	|:--------------------------------:	|
|   [🔗](https://docs.google.com/presentation/d/1yazXdmaMAEnoTmk9ZexhGK8h43xdWn3WJ3Vr5mw-iyg/edit?usp=sharing)  	|   [📜](https://github.com/Makrufkasr/Data-Analytics-Portfolio/blob/main/Clustering_segmentation_Analysis_.ipynb)  	|               Clustering Segmentation Analysis             	|

## Youtube Kenjee Perfomace Analytics
Skill Set : Data Cleaning, Statistic, Exploratory Data Analysis, Data Visualization
![Desain tanpa judul (8)](https://user-images.githubusercontent.com/109516688/217714234-e3708273-ce09-4389-913e-033f39b97ad0.png)

<h4>Overview</h4>
Ken Jee is someone who is passionate about data science and sports analytics. He has been working in the data science field doing sports analytics for the last 5 years. He decided to start making YouTube videos to share his experiences and help others get into the fields of data science and sports analytics. His goal is to provide insight into the data science community, career advice, and sports-related analysis. This project aims to help Ken Jee get more revenue from his channel.
<h4>Methodology</h4>

1. Understanding YouTube metrics and algorithm
2. Cleaning dataset using spreadsheet and Python
3. EDA by make a channel dashboard using Tableau
4. Main problem definition and decide objective
5. Analysis the content by data and the quality
6. Giving recommendation and further analysis suggestion for Ken Jee’s channel

<h4>Result</h4>

1. Out of 15 video categories, we recommend to focus on Personal Experience, Trend, Job, Tips, Opinion, Collaboration, Tutorial, Series Collaboration
2. Recommended word to use in Video title are 'Data Science', words related to content for beginner and curious-make words.
3. It's best to upload 3-4 videos in a month, on Friday or Saturday
4. The recommended video length is 8-10 minutes as videos with this group of duration generate maximum revenue
5. Further analysis can include engagement rate


| Link Deck	| Dashboard 	|               Title              	|
|:----:	|:----:	|:--------------------------------:	|
|   [🔗](https://drive.google.com/file/d/1L3TKceHBAnEPLeAy7g2aeg-B9EU_6WaB/view?usp=share_link)  	|   [📜](https://public.tableau.com/app/profile/makruf.kausar/viz/GroupN-YoutubeAnalytics/Dashboard2)  	|               Youtube Perfomance Analysis              	|

# Customer Segmentation using RFM Analysis

![2](https://user-images.githubusercontent.com/109516688/194799117-c9766bd6-6750-4312-8172-1b0196f56f5a.jpg)

In this project We segmented our customers using RFM Analysis.

RFM stands for Recency,Frequency and Monetary

* [Dataset](https://archive.ics.uci.edu/ml/datasets/online+retail)

**Recency**: How much time has elapsed since a customer’s last activity or transaction with the brand? Activity is usually a purchase, although variations are sometimes used, e.g., the last visit to a website or use of a mobile app. In most cases, the more recently a customer has interacted or transacted with a brand, the more likely that customer will be responsive to communications from the brand.

**Frequency**: How often has a customer transacted or interacted with the brand during a particular period of time? Clearly, customers with frequent activities are more engaged, and probably more loyal, than customers who rarely do so. And one-time-only customers are in a class of their own.

**Monetary**: Also referred to as “monetary value,” this factor reflects how much a customer has spent with the brand during a particular period of time. Big spenders should usually be treated differently than customers who spend little. Looking at monetary divided by frequency indicates the average purchase amount – an important secondary factor to consider when segmenting customers.

* [Link Project](https://github.com/Makrufkasr/Data-Analytics-Portfolio/blob/main/Customer_Segmentation_using_RFM_Analysis_.ipynb)
## Telcom Churn Analytics
Skill Set : Data Viusaliztion, Tableau, Exploratory Data Analytics.
![Desain tanpa judul (10)](https://user-images.githubusercontent.com/109516688/218933557-75661699-bca7-4bb2-8b75-f3b431a2e209.png)

<h4>Overview</h4>
Telcom U is an American company that operates an Telecomunication Company, Its main product is in the form of data quotas of various types. Telcom U stakeholders  want the report analyze customer churn in the form of a dashboard.


<h5>Objective</h5>
In this case, I'll investigate a dataset from an example telecom company called Databel and analyze their churn rates. Analyzing churn doesn’t just mean knowing what the churn rate is: it’s also about figuring out why customers are churning at the rate they are, and how to reduce churn.
<h4>Methodology</h4>
Asking some crucial questions to be answered by charts and graphs in Tableau :

1. How many number of customer 
2. How many number of customer churn
3. How many churn rate
4. Where Location the most of churn rate?
5. How many customer churn by age?
6. How condition each product towards customer churn
7. Number of churn by payment method and contract type

<h4>Result</h4>

1. The churn rate for Databel is ~27%. 
2. ~45% of the reasons why customers churn is related to competitors.
3. The churn rate in California is abnormally high (>60%).
4. Discovered the churn rate for customers who pay for an international plan, but don't call internationally is skyhigh. Recommdation to Contact customers who are an on an international plan but have not called internationally and propose them to downgrade their plan.
5. Further analysis and create model for predicting churn


| Link Dashboard	|               Title              	|
|:----:	|:--------------------------------:	|
|   [🔗](https://public.tableau.com/app/profile/makruf.kausar/viz/TelcomChurnAnalytics/Overview) 	|               Telcom Churn Analytics             	|

## Covid Vaccinations World Progress
Skill Set : Data Viusaliztion, Tableau, Exploratory Data Analaytics.
![image](https://user-images.githubusercontent.com/109516688/217703487-2f3ef53d-c6ca-4eb8-9769-eab0848bd173.png)

<h4>Overview</h4>
Coronavirus disease (COVID-19) is an infectious disease caused by the SARS-CoV-2 virus. This dashboard will give you an overview about the progress of COVID-19 around the worlds. The majority of the nations with slow vaccinations progress are from the continent of Africa, we should help them immediately!

<h4>Result</h4>

Click this link below to view the full dashboard, please click the full screen icon for the best experience. Thank you!

| Link Dashboard	|               Title              	|
|:----:	|:--------------------------------:	|
|   [🔗](https://public.tableau.com/app/profile/makruf.kausar/viz/TelcomChurnAnalytics/Overview)   	|               Covid Vaccinations World Progress              	|
## Sales Perfomance Dashboard
Skill Set : Data Cleaning, Statistic, Exploratory Data Analysis, Data Visualization
![image](https://user-images.githubusercontent.com/109516688/217702801-5bebfaa4-6b26-4480-8737-90994cd43809.png)


| Link Power BI	|               Title              	|
|:----:	|:--------------------------------:	|
|   [🔗](https://github.com/Makrufkasr/Data-Analytics-Portfolio/blob/main/Sales%20dashboard.pbix?raw=true)  	|              Sales Perfomance Dashboard           	|

## Customer Reviews AirBnB
Skill Set : Data Cleaning, Statistic, Exploratory Data Analysis, Data Visualization
![image](https://user-images.githubusercontent.com/109516688/217704018-201d9879-ffd7-41b0-b7d8-fc140ac3b265.png)

<h4>Overview</h4>
Airbnb is an American company that operates an online marketplace for lodging, primarily homestays for vacation rental and tourism activities. Airbnb stakeholders wanted to know what happened to the business in Singapore in the last 12 months and asked if there were any regions need development. They want the report in the form of a dashboard.

<h5>Objective</h5>
Create an interactive dashboard that summarizes room listing, host, review, and income estimation of AirBnB Singapore
<h4>Methodology</h4>

Asking some crucial questions to be answered by charts and graphs in Tableau and Google Data Studio:

1. How many listings
2. How many host
3. How may listings per neighborhood group and neighborhood
4. Top 10 listings based on total reviews given
5. How many average numbers of reviews
6. The average number of reviews per neighborhood group
7. Number of listings per prie group

<h4>Insight</h4>

As shown in the dashboard below, we got information here:
1. Currently, there are 4220 room listings on Airbnb Singapore. Most of them are private rooms and entire homes/apartments. In addition, the central region became the most populated one (3386 listings). And Kallang has the highest number of listings (543 listings).
2. Currently, there are 1127 unique hosts. Around 63% of them are single-listing.
In the last 12 months, Airbnb Singapore has gained 4121 reviews in total. Out of all room listings, around 69% of them meet our target number of reviews.
3. The total estimation of our income is 3501394 local currency. Focusing on the high-income group, we found that they mainly come from the Central Region and don’t have high daily prices. 

| Link Dashboard Data Studio	| Link Dashboard	Tableau|               Title              	|
|:----:	|:----:	|:--------------------------------:	|
|   [🔗](https://lookerstudio.google.com/s/kuweziNmQVM)  	|   [🔗](https://public.tableau.com/app/profile/makruf.kausar/viz/Makrufkausar-airbnb/Dashboard1)  	|               Customer reviews AirBnb              	|
