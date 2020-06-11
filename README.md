# Police_Brutality_Project
Building a classifier model based on police killings dataset

## Data

Data was gathered from two sources for this project.  

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
This project is composed of two notebooks: "EDA" and "Classification_Model"

### EDA
- The following tasks were performed in the "EDA" notebook (see the notebook for more detailed explanations):
	-  Data cleaning
		- Clean strings
		- Replace null values  
	-  Merging of datasets
	-  Creation and addition of new features
	-  Exploratory data analysis

### Classification_Model
- The following tasks were performed in the "Classification_Model" notebook (see the notebook for more detailed explanations):
	- Converting features to desired data types
		- Convert to boolean:
			-  Manner of death (Shot or Shot & Tasered)
			-  Race (White or POC)
			-  Gender (M or F)
			-  Mental illness (Yes or No)
			-  Body camera (on/off)
			-  City (Top 30 city or Not)
		-  One hot encoding for categorical features:
			-  Month
			-  Day of Week
			-  Region
			-  What was the victim armed with?
			-  Threat Level
			-  How was the victim trying to flee? (by car, by foot, not fleeing, etc.)
	-  Train-Test Split
	-  Baseline Modeling
		-  Logistic Regression
		-  K-nearest Neighbors
		-  Decision Tree
		-  Random Forest
		-  AdaBoost
		-  Gradient Boost
		-  XGBoost
	-  Compare baseline models using F1-score
		- Also look at accuracy, precision, recall