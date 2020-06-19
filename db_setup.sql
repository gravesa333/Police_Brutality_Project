CREATE DATABASE police_brutality;

\connect police_brutality;

CREATE TABLE household_income(
                              geographic_area char(2),
                              city varchar(100),
                              median_income varchar(100)
                             );

CREATE TABLE poverty_level(
                           geographic_area char(2),
                           city varchar(100),
                           poverty_rate varchar(100)
                          );

CREATE TABLE completed_high_school(
                                   geographic_area char(2),
                                   city varchar(100),
                                   percent_completed_hs varchar(100)
                                  );

CREATE TABLE race_distribution(
                               geographic_area char(2),
                               city varchar(100),
                               share_white varchar(100),
                               share_black varchar(100),
                               share_native_american varchar(100),
                               share_asian varchar(100),
                               share_hispanic varchar(100)
                              );

CREATE TABLE police_killings(
                             id int,
                             name varchar(100),
                             "date" varchar(100),
                             manner_of_death varchar(100),
                             armed varchar(100),
                             age int,
                             gender char(1),
                             race char(1),
                             city varchar(100),
                             state char(2),
                             signs_of_mental_illness boolean,
                             threat_level varchar(100),
                             flee varchar(100),
                             body_camera boolean
                            );

\copy household_income FROM 'SQL_Data/median_household_income_2015.csv' DELIMITER ',' CSV HEADER;
\copy poverty_level FROM 'SQL_Data/poverty_level.csv' DELIMITER ',' CSV HEADER;
\copy completed_high_school FROM 'SQL_Data/completed_high_school.csv' DELIMITER ',' CSV HEADER;
\copy race_distribution FROM 'SQL_Data/share_race_by_city.csv' DELIMITER ',' CSV HEADER;
\copy police_killings FROM 'SQL_Data/police_killings_US.csv' DELIMITER ',' CSV HEADER;


