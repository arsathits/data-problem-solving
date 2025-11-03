CREATE SCHEMA titanic_survivor_non_survivor;

CREATE TABLE titanic_survivor_non_survivor.titanic_data (
    passengerid      INT PRIMARY KEY,
    survived         INT,           -- 0 = No, 1 = Yes
    pclass           INT,           -- 1, 2, or 3 (ticket class)
    name             TEXT,
    sex              VARCHAR(10),
    age              NUMERIC(5,2),
    sibsp            INT,           -- # of siblings/spouses aboard
    parch            INT,           -- # of parents/children aboard
    ticket           TEXT,
    fare             NUMERIC(10,2),
    cabin            TEXT,
    embarked         VARCHAR(5)
);
