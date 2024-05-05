# Google-Data-Analytics-CaseStudy1
Google Data Analytics Capstone Case Study Divvy trips (https://www.coursera.org/learn/google-data-analytics-capstone)
# INTRO

Hi everyone! Today we're doing the Case study which you need to do in order to successfully Complete the Google Data Analytics Project.

In this Case Study, I'll Demonstrate the Applications which I used like ****EXCEL, SQL and Tableau**** Because of the scarcity of time not able to Publish the another version of it using RStudio but sure will be next time.

We're using the same analysis process Which we learned in the Google Data analytics certification ****ASK, Prepare, Process, Analyze, Share and ACT****

Now Let's dive into the ****"Cyclistic bike-share analysis case study!****

# Brief Info about the Company

It is a fictional Company : A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. 

Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.

# Scenario

I am or you are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. ****The director of marketing and your Manager lily moreno**** believes the company’s future success depends on maximizing the number of annual memberships. 

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders.

Therefore, my team or your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.

# Goals

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand ****how annual members and casual riders differ?**** ,
****why casual riders would buy a membership?**** , and ****how digital media could affect their marketing tactics?.****
Moreno and her team are interested in -analyzing the Cyclistic historical bike trip data to identify trends.

# Phase 1: ASK

****Problem Statement****
* Differentiation between annual members and casual riders who use Cyclist bikes.
* Reason for buying a membership for casual riders.
* How to convert casual riders to members through digital media.

****Insights from the analysis will affect: -****
* Marketing Executive (Primary Stakeholders) who makes strategy will change accordingly to the insights to convert the casual rider to annual membership.
* Cyclist Finance analyst (Primary Stakeholders) to identify the budgets and all.
* Consumer (Secondary Stakeholders) will bend to buy the subscription of membership more because of catering of their need.

****Key Task****
* Differentiation between annual members and casual riders who use Cyclist bikes.
* How to convert casual riders to purchase annual membership.
* Digital Marketing Techniques Suggestions for marketing.

# Phase 2: PREPARE

****Information****
* Here we are using Cyclistics historical trip data from 2021 Jan to Dec.
* Data Extracted and Organized in Folder “Case_study_1” the whole CSV file then converted to Excel workbook for Data Exploration.
* Available Data is Reliable as per the source, which is Coursera, it is not original but secondary data.
* It is a public data.
* This data will help to answer business questions.
* Datasets Contains Columns - ride_id (Primary Key), rideable_type (Bike type for ex. Electric bike, docked bike …), started_at (started DateTime of trip), ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat(start_station_latitude), start_lng, end_lat, end_lng, and member_casual (Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members).

Data Source – Coursera (Google Data analytics Certificate capstone Project - [Link here](http://www.divvybikes.com/data-license-agreement)

# Phase 3: PROCESS

****Data Cleaning Information****
* Tools we’re using in the analysis process: -
    * Excel
    * Big Query
    * Tableau


* I’ve done data cleaning in each excel file of 2021 from Jan to Dec (not able to merge it because of limitations of rows in excel, yes, it is a tedious process, but I wanted to do it in excel).
* This dataset has problems, it has some columns which are blanks ex.- end station name, end lat, end lng, end station id. And in col. Started at, ended at, the Ended at col. have some values smaller than the started at which is wrong.
* Data which are missing I filled it with “NA” in those rows (start_station_name,start_station_id,end_station_name, end_station_id,start_lat,end_lat, end_lat, end_log).
* In some month sheets some data which is wrongly written in “ended at” which is smaller than the “started at” and secondly, according to my hypothesis it is wrongly shifted, it means that the data which need to be in “started at” column Written in ended at and the data in ended at need to be in started at. So, I shifted both data in interchange col., according to my hypothesis.
* Some “Started time and date” are same of “end time and date” but I let them remain so that we can ignore that error.
* ride_length a new column is added by Subtracting ended_at – started_at, some output values appear less than 60 sec/1 min. and greater than 1440 sec/ 24 hr. which is logically wrong because no person can travel less than a min and more than a day.


****Steps taken for data Cleaning (Data cleaning all done In Excel but can be done in sql query also): -****


* Identifying Duplicates – No Duplicate found in “ride_id – Primary Key”.
* Identifying Irrelevant/Missing Data – Irrelevant data Identified aforementioned, but it is or will be altered in process for accuracy.
* Data text Consistency – No Inconsistency Founded (all ride_id len is 16 characters).
* Extra Spaces – No Inconsistency Found.


* For Verification of data cleaning, I’ve checked those data cleaning steps multiple times in the data and let data to be peer reviewed by experienced person.
* After Reviewing data twice I’ve noticed some issues for example I’ve tried different method to add Distance element in Km unit, but it is not accurate, so I haven’t included it, and there are some ride lengths which is wrong according to the time and distance given.
* The Variables on which we can answer business questions are date and time of starting point and end, start station name and end, these are already given quantitative characteristics. In addition, ride_length, weekday, month, are added column.
* Created Some Pivot table in Excel of ride_lenght separated by count of casual and members, Avg. ride_length of the casual and members weekly wise and table of count of the riders.

# Merged Data from 01 - 12

You Can See the SQL code [Here](https://github.com/MD-Faisal-Khan/Google-Data-Analytics-CaseStudy1/blob/main/Merging%20Data.sql)

* All 12 data tables from JAN 2021 to DEC 2021 were merged into one and some columns datatype is changed accordingly for the consistency in datatype.

