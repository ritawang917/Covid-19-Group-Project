# Covid-19

## Selected Topic-Covid-19

## Purpose of the Project

The novel coronavirus disease (COVID-19) is an infectious disease caused by SARS-CoV-2 which is a type of coronavirus discovered in 2019. Coronavirus pandemic was originated from China in December 2019, has resulted with over 604 Million cases and 6.5 Million deaths worldwide. With Covid-19 pandemic, we are in a world crisis likes of which hasn’t been seen in 100 years.The enormous scale of the crisis and the impact it is having are naturally causing a lot of fear, uncertainty and anxiety across the world.This situation is particularly stressful because,we cann't predict how things will develop.There is always an uncertainty of our circumstances.The purpose of this project is to evalute various characteristic from New York City COVID-19 dataset to identify the key findings of the data.
  
## Roles 

Square: Rita; Triangle: Julia; Circle: Sharmin (Supervised Machine Learning)
  
## [Google Slides](https://docs.google.com/presentation/d/1AikBbD5WhO2oSrPKW-P_DM_hEYEP0Ak2Z516GCudWLo/edit#slide=id.p)

  Actual Link: https://docs.google.com/presentation/d/1AikBbD5WhO2oSrPKW-P_DM_hEYEP0Ak2Z516GCudWLo/edit#slide=id.p

## Reason why they selected their topic

  We selected the topic of COVID-19, because we are currently in a situtation where there are still relatively high numbers of people with COVID-19.

## Description of their source of data

  Our dataset comes from NYC open data repository, Data Provided by Department of Health and Mental Hygiene (DOHMH).The dataset shows outcomes (confirmed cases, hospitalizations, and deaths) for cohorts defined by each date of specimen collection (specimen_date). For example, if a NYC resident tested positive for SARS-CoV-2 and was subsequently hospitalized, both events would show under the same specimen_date, indicating the date of specimen collection for the positive test and not the date of the hospitalization.

  The data consists of covid-testing specimens, the extracted date of the specimen results, the number of people tested, the number of people who were tested positive for COVID-19, the number of COVID-19 people who were hospitalized, as well as the number of people who passed away in the hospital due to COVID-19.

## Questions they hope to answer with the data

    * Does the number of COVID-19 patients hospitalized correlate with the average percentage of COVID-19 patients who passed away during hospitalization?
  
    * By analyzing the data from hospitalization and death rates compared to the tested positive for COVID-19, has the virus appeared to cause a more severe effect on the community?
  
    * Did the time of vaccination correlate with the number of deaths in the hospital due to COVID-19?
  
## Resources

### Data Cleaning and Analysis

- Python
- Jupyter Notebook
- Matplotlib

### Database Storage

  * PostgreSQL/pgAdmin4

### Machine Learning

  * SciKitLearn - supervised machine learning models

## DataBase

### SQL

![](https://github.com/ritawang917/Covid-19-/blob/main/ERD.png)

### [Preprocessing](https://github.com/ritawang917/Covid-19-/blob/main/project.sql)

Below preprocessing operations were done on the original data before storing them into a database:

Visual Studio Code was used to clean or compare python scripts as needed and was used to update the markdown. The Pandas library was used to clean the dataset.Uneccesary columns were dropped. The SQL database contains three tables, where specimen_batch_ID is our only primary key.We have two data sets, one set involving the number of deaths related to COVID-19 and another set involving the number of confirmed COVID-19 cases as well as the number of COVID-19 related patients in the hospital. After the data files were cleaned, they were imported into Postgres using SQL and then combined with SQL joins. To summarize the findings, the joined dataset was exported from PgAmin. At first we import the required packages to import, investigate and plot data: pandas, numpy and matplotlib.Our preliminary database consists of six columns and 176094 rows.
  
## Machine Learning Model

The main objective of the machine learning analysis is to predict the corelation between the features, based on selected features and choice of models.

### Preliminary set of features

 The features come with the dataset. These are indicators which the publishers believe to be the determinants of Covid-19, namely:
    * covid-testing specimens
    * the number of people tested
    * the number of people who were tested positive for COVID-19
    * the number of people who were hospitalized
    * the number of people who passed away in the hospital due to COVID-19.
    
  ![](https://github.com/ritawang917/Covid-19-/blob/main/feature%20selection.png)
  
  Our provisional model is Supervised Machine Learning for Regression. Because our database deals with labeled data, we have selected Supervised Machine Learning. We choose regression over classification, because this is a numerical data.
  Our linear regression model for the number of people who were hospitalized and people who passed away in the hospital due to COVID-19 follows:
  
  ![](https://github.com/ritawang917/Covid-19-/blob/main/linear.png)
  
  After initializing and fitting the model with Linear regression the results are as follows:
  
  ![](https://github.com/ritawang917/Covid-19-/blob/main/ac.png)
  
  
  We used pandas to clean and analyze the data. The data was cleaned by eliminating the extracted specimen column, changing the data type of the specimen data column to datetime data type, as well as assigning a specimen batch ID to each specimen date for better organization. From our data, we can conclude that there is a linear correlation between the number of people tested positive for COVID-19 and the number of deaths in the hospital. Additionally, the data shows that around late November of 2020, there was a peak of deaths associated with COVID-19; from this point onwards the number of COVID-19 related deaths decreased. The COIVD-19 vaccination was released around the end of 2020, which we can use to infer that the number of deaths due to COVID-19 dropped because the vaccination helped decrease the severity of the symptoms people were experiencing. During this time, quarantine regulations was also strict, which would also be used to infer that quarantine may have also influenced the drop of deaths related to COVID-19 as less people came in contact with people who have COVID-19.
  
  ![](https://github.com/ritawang917/Covid-19-/blob/main/specimen.png)
  
  We used linear regression for the main data analysis as we predicted that the number of people who tested positive for COVID-19 will have a linear correlation with the number of deaths in the hosptial due to COVID-19; this was done by splitting the data of the number of people who tested positive for COVID-19 and the number of deaths in the hosptial due to COVID-19. The linear regression model had an accuracy score of 0.97 whereas when a random forest was created the accuracy score was 0.83. The benefit of using this specific model is that the variables do have a linear correlation; the linear regression helps to better visual this aspect. The limitation to this model is that there are only a few graphs that correlates with this model. The other graphs would require other models, for better analysis. For example, some graphs would be better suited for the quadratic regression or logistic regression model instead of the linear regression.
  
  
## [Dashboard](https://public.tableau.com/app/profile/julia.drobotya2624/viz/COVID-19_16634585629190/Story1)

  Tableau will be used as the main dashboard of the data analysis.
  
  Interactive elements such as the tables and graphs will be used in the Tableau dashboard. Some of the graphs are as shown below.
  
  Actual Tableau link: https://public.tableau.com/views/COVID-19_16634585629190/Story1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link
  
## Results of Analysis

  From our linear regression machine learning model, which has an accuracy score of 0.97, we can see that there is a positive correlation between the number of COVId-19 patients in the hospital and the number of deaths in the hospital related to COVID-19. This result was expected, because as there is an increase in people who are tested positive in the hospital, it is more likely for others to be infected which may increase the severity of the symptoms. Our results also showed that there was not a significant change right after the introduction of COVID-19 vaccines, as the number of people tested positive still increased; however after about 6 months of the vaccination introduction there was a slight decrease. However, the data collection stopped shortly after this time, limiting the conclusion we can make regardining whether or not vaccination helped decrease the severity of the pandemic. Additionally, this helped conclude that there was no correlation between the introduction of the vaccination and the number of deaths at the hospital based on the current data set we have.
  
![](https://github.com/ritawang917/Covid-19-/blob/main/Screenshot%20(2034).png)
  
 ## Recommendations for Future Analysis
 
  * Analyze the meaning behind the data set prior to cleaning and conducting machine learning
  
 ## Things To Do Differently
 
  * Use a different data set that includes the most recently data
  * Test with additional machine learning models
  * Use multiple data sets that make more conclusions.
