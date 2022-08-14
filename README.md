# *How are educational outcomes affected by different factors across New York State Districts*
#### *Mastery Project including use of Kafka, Machine Learning, Azure Databricks, Azure Data Factory/SQLServer, Power BI, Pyspark, and MS Project.*
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
1. [Datasets](#dataset) <br />
2. Entity Relationship <br />
3. Executive Summary <br />
4. Exploratory Questions <br />
5. Map <br />
6. Napkin Drawings <br />
7. PowerBI <br />
8. Project Management Plan <br />
9. Repeatable ETL Report <br />
10. SQL <br />
11. Code

***Dataset
these are the datasets
