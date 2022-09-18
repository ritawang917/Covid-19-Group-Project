# Covid-19

## Selected Topic

  COVID-19
  
## Roles 

Square: Rita; Triangle: Julia; Circle: Sharmin (Supervised Machine Learning?)
  
## [Google Slides](https://docs.google.com/presentation/d/1AikBbD5WhO2oSrPKW-P_DM_hEYEP0Ak2Z516GCudWLo/edit#slide=id.p)

  Actual Link: https://docs.google.com/presentation/d/1AikBbD5WhO2oSrPKW-P_DM_hEYEP0Ak2Z516GCudWLo/edit#slide=id.p

## Reason why they selected their topic

  We selected the topic of COVID-19, because we are currently in a situtation where there are still relatively high numbers of people with COVID-19.


## Description of their source of data

  The data consists of covid-testing specimens, the extracted date of the specimen results, the number of people tested, the number of people who were tested positive for COVID-19, the number of COVID-19 people who were hospitalized, as well as the number of people who passed away in the hospital due to COVID-19.


## Questions they hope to answer with the data

  Does the number of COVID-19 patients hospitalized correlate with the average percentage of COVID-19 patients who passed away during hospitalization?
  
  By analyzing the data from hospitalization and death rates compared to the tested positive for COVID-19, has the virus appeared to cause a more severe effect on the community?
  
  Did the time of vaccination correlate with the number of deaths in the hospital due to COVID-19?
  
## Machine Learning Model
  
  We have two data sets, one set involving the number of deaths related to COVID-19 and another set involving the number of confirmed COVID-19 cases as well as the number of COVID-19 related patients in the hospital.
  
  We used pandas to clean and analyze the data. The data was cleaned by eliminating the extracted specimen column, changing the data type of the specimen data column to datetime data type, as well as assigning a specimen batch ID to each specimen date for better organization. From our data, we can conclude that there is a linear correlation between the number of people tested positive for COVID-19 and the number of deaths in the hospital. Additionally, the data shows that around late November of 2020, there was a peak of deaths associated with COVID-19; from this point onwards the number of COVID-19 related deaths decreased. The COIVD-19 vaccination was released around the end of 2020, which we can use to infer that the number of deaths due to COVID-19 dropped because the vaccination helped decrease the severity of the symptoms people were experiencing. During this time, quarantine regulations was also strict, which would also be used to infer that quarantine may have also influenced the drop of deaths related to COVID-19 as less people came in contact with people who have COVID-19.
  
  We used linear regression for the main data analysis as we predicted that the number of people who tested positive for COVID-19 will have a linear correlation with the number of deaths in the hosptial due to COVID-19; this was done by splitting the data of the number of people who tested positive for COVID-19 and the number of deaths in the hosptial due to COVID-19. The linear regression model had an accuracy score of 0.97 whereas when a random forest was created the accuracy score was 0.83. The benefit of using this specific model is that the variables do have a linear correlation; the linear regression helps to better visual this aspect. The limitation to this model is that there are only a few graphs that correlates with this model. The other graphs would require other models, for better analysis. For example, some graphs would be better suited for the quadratic regression or logistic regression model instead of the linear regression.
  
## [Dashboard](https://public.tableau.com/app/profile/julia.drobotya2624/viz/COVID-19_16634585629190/Story1)

  Tableau will be used as the main dashboard of the data analysis.
  
  Interactive elements such as the tables and graphs will be used in the Tableau dashboard. Some of the graphs are as shown below.
  
  Actual Tableau link: https://public.tableau.com/views/COVID-19_16634585629190/Story1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link
