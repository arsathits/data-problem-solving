# Problem 24: Highest Salaries By Department

## Problem Statement
Identify the top three **unique salaries** for every department in the company. The results should display:

- Department name.
- Top three distinct salaries in **descending order** within each department.
- Results **sorted alphabetically by department name**.

---

## Input Table: `company_employees`

| Column Name  | Data Type    | Description                                         |
| ------------ | ----------- | -------------------------------------------------- |
| id           | INT         | Unique identifier for each employee               |
| first_name   | VARCHAR(50) | Employee's first name                              |
| last_name    | VARCHAR(50) | Employee's last name                               |
| department   | VARCHAR(50) | The department the employee belongs to            |
| salary       | INT         | The employee's salary                              |

### Sample Data

| id | first_name | last_name | department  | salary |
|----|------------|----------|------------|--------|
| 1  | Allen      | Wang     | Management | 200000 |
| 13 | Katty      | Bond     | Management | 150000 |
| 19 | George     | Joe      | Management | 100000 |
| 11 | Richerd    | Gear     | Management | 250000 |
| 17 | Mick       | Berry    | Sales      | 220000 |
| 20 | Sarrah     | Bicky    | Sales      | 200000 |
| 21 | Paul       | Adams    | Sales      | 140000 |

---

## Output

| department  | salary  |
|------------|---------|
| Engineering | 180000 |
| Engineering | 160000 |
| Engineering | 150000 |
| Management  | 250000 |
| Management  | 200000 |
| Management  | 150000 |
| Sales       | 220000 |
| Sales       | 200000 |
| Sales       | 140000 |

---
