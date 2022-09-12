CREATE TABLE Covid_deaths (
	specimen_date date NOT NULL,
    Number_tested integer NOT NULL,
    Number_confirmed integer NOT NULL,
    Number_deaths integer NOT NULL,
    specimen_batch_ID integer NOT NULL,
	Primary Key(specimen_batch_ID)
);

CREATE TABLE Covid_hosp (
	specimen_date date NOT NULL,
    Number_tested integer NOT NULL,
    Number_confirmed integer NOT NULL,
    Number_hospitalized integer NOT NULL,
	specimen_batch_ID integer NOT NULL,
    Primary Key(specimen_batch_ID)
);

SELECT * FROM Covid_deaths;

SELECT * FROM Covid_hosp;

-- Joining Covid_deaths and Covid_hosp tables
CREATE TABLE COVID_df AS(
SELECT Covid_hosp.specimen_date,
     Covid_hosp.Number_tested ,
     Covid_hosp.Number_confirmed,
     Covid_hosp.Number_hospitalized,
	Covid_hosp.specimen_batch_ID,
	 Covid_deaths.Number_deaths
	 
FROM Covid_hosp
LEFT JOIN Covid_deaths
ON Covid_hosp.specimen_batch_ID = Covid_deaths.specimen_batch_ID
);

SELECT count (*) FROM COVID_df;
