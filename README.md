# [Data-Cleaning](https://github.com/NicolaRizzitello/Data-Cleaning/blob/main/cleaningData.sql)

This is a project about data cleaning process before to do some kind of analysis. 

**Language**

![alt text](https://user-images.githubusercontent.com/103247709/162441186-e4c62bdf-d526-4d6c-ac48-81735ff247ce.png)

## About Datasets
### Data_athlets
This dataset is composed by 271116 rows and 14 columns. Dataset contains both winter and summer Olympic Games from Athens 1896 to Rio 2016. Each row corresponds to an athlet who partecipated in that game. The variables are: 
* **ID** - Unique number for each athlete
* **Name** - Athlete's name
* **Sex** - M or F
* **Age** - Integer
* **Height** - In centimeters
* **Weight** - In kilograms
* **Team** - Team name
* **NOC** - National Olympic Committee 3-letter code
* **Games** - Year and season
* **City** - Host city
* **Sport** - Sport
* **Event** - Event
* **Kind_medal** - Gold, Silver, Bronze, or NA
* **Medal** - Y or N

## Summary of analysis
* *Populate Team data*
* *Breaking out Games into Individual Columns (Year, Season)*
* *Change Y and N to Yes and No in "Medal" field*
