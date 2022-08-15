# *How are educational outcomes affected by different factors across New York State Districts*
### **Contributors:** Yiqing Guo, Tavianne Kemp, Stanley Perez, Paul Polsinelli

<h1>Overview</h1>

We are presenting our information to an educational advocacy group whose aim is to ensure that the school districts of New York State are receiving equal education. We analyzed the graduation rate on a district level and gathered other relevant information to compare against. Some of the information we
gathered was in relation to the district’s student body information and their financial situation. For the student body of the district we gathered information such as how many students enrolled, what percentage of those students are a minority, the percentage of students that graduated and more. On the
financial side, we gathered information about how much funding that district receives per student, the median household income for that district and is that district federally funded.
Data on student demographics, graduation rate, and dropout rate was scraped from [**NYSED site**](https://data.nysed.gov/lists.php?type=district). Data for the median household income came from [**U.S. Census Bureau**](https://data.census.gov/cedsci/table?q=median+income&g=860XX00US11701). We converted the zipcodes to school districts through the use of the [**NCES School District Geographic Relationship Files**](https://nces.ed.gov/programs/edge/Geographic/RelationshipFiles). Funding data was found on the [**NYC Open Data**](https://data.cityofnewyork.us/Education/FY2020-Local-Law-16-Final-Report/cvqn-xqrr/data) site and the [**New York State Funding Transparency**](https://openbudget.ny.gov/sft/sft-districts-19.html) site.
The **RepeatableETLReport** document explains our ETL process in full. 

### **From analyzing the data, we hope to answer the following questions**

1. Which districts have the most funding per student and what differentiates them from the other districts? Is there a difference in graduation rate for these districts compared to the ones that don’t receive as much funding?
2. What is the percentage of districts that get federal funding vs ones that do not? How do the districts that received federal funding compare to the ones that didn’t?
3. What kind of correlation is there between the graduation rate and the other factors we’ve acquired?
4. Is there a discrepancy between the graduation rate and the percentage of minority students in a district?
5. Can we predict the graduation rate for a district based on the data and which factor has the most effect on the graduation rate for a school district?

<h1>Table of Contents</h1>
1. <a href = "#datasets"> Datasets</a> <br />
2. <a href = "#entity-relationship">Entity Relationship</a> <br />
3. <a href = "#executive-summary">Executive Summary</a><br />
4. <a href = "#exploratory-questions">Exploratory Questions</a> <br />
5. <a href = "#map">Map</a><br />
6. <a href = "#napkin-drawings">Napkin Drawings</a> <br />
7. <a href = "#powerbi">PowerBI</a> <br />
8. <a href = "#project-management-plan">Project Management Plan</a> <br />
9. <a href = "#repeatable-etl-report">Repeatable ETL Report<a/><br />
10. <a href = "#sql">SQL <a/><br />
11. <a href = "#code">Code</a>

<h2>Datasets</h2>
  
  This section has a combination of csv files used throughout the data exploration process. Each csv is named it's purpose. The csv that contains all the information is the [Districtdatafinal.csv](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Datasets/districtdatafinal.csv). For clarity purposes, below is a list of the remaining csv files and their purpose.
* [Districtdatascraping.csv](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Datasets/DistrictDataScraping.csv) - Data scraped from [data.nysed.gov](https://data.nysed.gov/lists.php?type=district) for preliminary data on New York State districts.
* [FederallyFundedDistricts.csv](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Datasets/FederallyFundedDistricts.csv) - Data provided by [Openbudget.ny.gov](https://openbudget.ny.gov/sft/sft-districts-19.html) to show which districs received federal funds for 2019
* [NYCSchoolDistricts.csv](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Datasets/NYCSchoolDistricts.csv) - Funding data on NYC schools that were then grouped by district to determine the funding per student per district for NYC.
* [medianincome.csv](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Datasets/medianincome.csv) - Median income data gathered on each of the districts of New York State. 
* [nycdistrict-zipcode.csv](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Datasets/nycdistrict-zipcode.csv) - Matching each NYC school district to a zipcode to determine the median income for that district.
* [Zipcodemedianincome.csv](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Datasets/Zipcodemedianincome.csv) - Census data on the median income for zip codes in NY state in order to determine the median income for a school district.
* [Districtmapping.csv](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Datasets/Districtmapping.csv) - Mapping data on the districts in order to be used for for mapping visualization.
  
<h2>Entity Relationship</h2>
  
  Diagrams are stored in this folder.
* [DataFlowVisualizations.pdf](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/ER/DataFlowVisualization.pdf) - shows how our network functioned and flowed. 
* [District Data ERD.drawio.pdf](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/ER/District%20Data%20ERD.drawio.pdf) - shows how the SQL tables connected the information together. 
<h2>Executive Summary</h2>
  
  [Executive Summary.pdf](https://github.com/knowledgeforall/Dev10_Final_Project/tree/main/Exec%20Summary) - Summary of the project.
  
<h2>Exploratory Questions</h2>
  
  [Exploratory Questions.pdf](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Exploratory%20Questions/Exploratory%20Questions.pdf) - Questions that we are looking to answer once all the data is gathered and analyzed.
  
<h2>Map</h2>
  
  [map.pbix](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Map/map.pbix) - PowerBI file with the map visualization. Make sure you have PowerBI desktop installed. 
  
<h2>Napkin Drawings</h2>
  
 * [VisualizationsNapkinsAndFeedback.pdf](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Napkin%20Drawings/VisualizationsNapkinsAndFeedback.pdf) - Napkin drawing showing the preliminary thoughts on the visualizations to be created from the data. Also includes feedback from peers. 
  
 * [DashboardNapkinsAndFeedback.pdf](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Napkin%20Drawings/DashboardNapkinsAndFeedback.pdf) - Napkin drawing showing the preliminary thoughts on the dashboard including feedback from peers.
  
<h2>PowerBI</h2>

<h2>Project Management Plan</h2>
  
  [ProjectManagementPlan.pdf](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Project%20Management%20Plan/ProjectManagementPlan.pdf) - Our project management plan that outlined tasks and time alloted to each task for each team member.
  
<h2>Repeatable ETL Report</h2>
  
  [RepeatableETLReport.pdf](https://github.com/knowledgeforall/Dev10_Final_Project/blob/main/Repeatable%20ETL%20Report/RepeatableETLReport.pdf) - Our <b>E</b>xtract <b>T</b>ransform <b>L</b>oad process in detail.
  
<h2>SQL</h2>
  
  Files that outline the tables used in SQL.
  
<h2>Code</h2>
  
  Files containig python code that was used throughout the process of the project. Each file's name is indicative of its use.
