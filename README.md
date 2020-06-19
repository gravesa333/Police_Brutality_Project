# Police_Brutality_Project
Building a classification model based on police killings dataset

The ultimate goal for this project was to use demographics and shooting data to predict the race of victims of fatal police shootings in the US. A classification model was built to predict whether a victim was white or a person of color (black, latinx).

## Data

- The data for this project was loaded into a PostgreSQL database called `police_brutality` using the "db_setup.sql" file. The tables in the database are:
    - `police_killings`
    - `household_income`
    - `poverty_level`
    - `completed_high_school`
    - `race_distribution`
- Data was gathered from two sources.  
	- Police Killings Dataset from The Washington Post:
		- Includes every fatal shooting in the US committed by a police officer between 2015 and 2017  
		- Features:
			- Was the victim armed?  
			- How old was the victim?  
			- What is the gender of the victim?  
			- What is the race of the victim?  
			- Where did the shooting take place?  
			- Did the victim appear to be suffering from mental illness?  
			- Did the victim appear to be threatening?  
			- Was the victim trying to flee?  
			- Did the cop have a body camera?
	- [Census Data](https://data.census.gov/cedsci/)
		- Data for over 20,000 cities in the US
		- Features:
			- Racial demographics
			- Median household income
			- Poverty rate
			- Percent of residents over 25 who have completed high school

## Notebooks	
This project is composed of three notebooks: "SQL_Data_Cleaning", "SQL_EDA", and "Classification_Model"

### SQL_Data_Cleaning
- The following tasks were performed in the "SQL_Data_Cleaning" notebook (see the notebook for more detailed explanations):
	-  Data cleaning
		- Clean strings
		- Replace null values  
	-  Merging of datasets
	-  Creation and addition of new features

### SQL_EDA
- The following task was performed in the "SQL_EDA" notebook (see the notebook for more detailed explanations):
	-  Exploratory data analysis
-  The EDA performed was done to build a stronger classifier. Therefore, the following question was the focus:
	- **Are there any trends that make race more predictable for each shooting?** i.e. what makes the police more likely to kill POC?
- The following trends were determined from EDA, and thus informed feature engineering for the classifier.
	- Victims with signs of mental illness are disproportionately white.
	- Victims with an "undetermined" threat level are disproportionately POC.
	- Victims who are fleeing by foot are disproportionately POC.
	- Unarmed victims are disproportionately POC.
	- Victims on Thursdays are disproportionately POC.
	- Victims are disproportionately POC in the cities with the most police killings.

### Classification_Model
- The following tasks were performed in the "Classification_Model" notebook (see the notebook for more detailed explanations):
	- Converting features to desired data types
		- Convert to boolean:
			-  Manner of death (Shot or Shot & Tasered)
			-  Race (White or POC)
			-  Gender (M or F)
			-  Mental illness (Yes or No)
			-  Armed (armed or unarmed)
			-  Flee (flee by foot or other)
			-  Threat level (undetermined or other)
			-  Body camera (on/off)
			-  City (Top 30 city or Not)
			-  City type (City or other)
				-  e.g. town, village, etc.
		-  One hot encoding for categorical features:
			-  Month
			-  Day of Week
			-  Region
	-  Train-Test Split
	-  Baseline Modeling
		-  Logistic Regression
		-  K-nearest Neighbors
		-  Decision Tree
		-  Random Forest
		-  AdaBoost
		-  Gradient Boost
		-  XGBoost
	-  Compare baseline models using the following metrics/charts:
		-  accuracy
		-  precision
		-  recall
		-  F1 score
		-  confusion matrix
		-  ROC curve
	-  GridSearch for best two models
		- Logistic Regression
		- Random Forest
	- Evaluate final models and optimize with threshold
		- **Logistic Regression performed the best, with an accuracy of 77.0% and F1 score of 75.6%.**