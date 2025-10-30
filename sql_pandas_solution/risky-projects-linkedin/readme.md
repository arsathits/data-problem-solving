# 💼 Problem 29: Risky Projects (LinkedIn)

## 📌 Problem Statement

You are given datasets containing information about **projects**, **employees**, and their **assignments** to those projects.  
Each project has a defined **budget** and **duration**, while each employee has an **annual salary** and may work on one or more projects.  

Your task is to determine which projects are **overbudget**.  
A project is considered overbudget if the **total prorated salary expenses** of all employees assigned to it **exceed its budget**.

---

## 🧮 Calculation Logic

- Each employee’s salary must be **prorated** based on how long the project lasts relative to a full year.  
  For example:  
  - If a project runs for **6 months**, only **half** of each employee’s annual salary should count toward that project’s expenses.
- The prorated salary for each employee on a project is calculated as:  
  \[
  \text{prorated cost} = \text{employee salary} \times \frac{\text{project duration in days}}{365}
  \]
- Sum the prorated costs for all employees assigned to a project to get **total expenses**.
- A project is **overbudget** if:
  \[
  \text{total expenses (rounded up)} > \text{project budget}
  \]

---

## 📂 Input Data

### 1. `linkedin_projects`

| Column Name | Data Type | Description |
|--------------|-----------|-------------|
| id           | BigInt    | Unique ID of the project |
| title        | Text      | Name or title of the project |
| budget       | BigInt    | Total allocated budget for the project |
| start_date   | Date      | Start date of the project |
| end_date     | Date      | End date of the project |

---

### 2. `linkedin_emp_projects`

| Column Name | Data Type | Description |
|--------------|-----------|-------------|
| emp_id       | BigInt    | Employee ID assigned to the project |
| project_id   | BigInt    | Project ID the employee is assigned to |

---

### 3. `linkedin_employees`

| Column Name | Data Type | Description |
|--------------|-----------|-------------|
| id           | BigInt    | Unique employee ID |
| first_name   | Text      | Employee's first name |
| last_name    | Text      | Employee's last name |
| salary       | BigInt    | Employee's annual salary |

---

## 🎯 Expected Output

| Column Name   | Data Type | Description |
|----------------|-----------|-------------|
| project_name   | Text      | Title of the project |
| budget         | BigInt    | Budget allocated for the project |
| total_expenses | BigInt    | Total prorated employee expenses (rounded up to the nearest dollar) |

---

## ✅ Requirements

- Compute project duration as `(end_date - start_date)` in days.
- Prorate each employee’s annual salary based on the project duration divided by 365.
- Sum prorated salaries for all employees assigned to the same project.
- Round the total expenses **up** to the nearest whole number.
- Return only projects where total expenses **exceed** the project’s budget.
- Sort the output by `total_expenses` in **descending order**.
- Assume all years have **365 days** (ignore leap years).

---

## 🧪 Example Output

| project_name     | budget  | total_expenses |
|------------------|----------|----------------|
| Marketing Boost  | 250000  | 280340         |
| Data Platform    | 400000  | 452760         |
| AI Integration   | 500000  | 523420         |

---

## 💡 Insight

This analysis helps management identify **risky or overbudget projects** early.  
By comparing prorated employee costs to allocated budgets, companies can take proactive measures such as **resource reallocation**, **budget adjustments**, or **timeline optimizations** to reduce financial risk.
