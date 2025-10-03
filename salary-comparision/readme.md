# 💼 Problem 17: Salary Comparison

## 📝 Problem Statement
A company tracks salary payouts for employees across multiple departments.  
The goal is to calculate the **average salary per department** for March 2024 and compare it to the **overall company average** for the same month.  

For each department with salary activity in March 2024, classify its average salary as:
- **'higher'** → if department average > company average  
- **'lower'** → if department average < company average  
- **'same'** → if department average = company average  

---

## 📦 Table Schemas

### `sc_employee`
| Column        | Type     |
|---------------|----------|
| employee_id   | INT      |
| name          | VARCHAR  |
| salary        | DECIMAL  |
| department_id | INT      |
| manager_id    | INT      |

### `sc_salary`
| Column       | Type      |
|--------------|-----------|
| salary_id    | INT       |
| employee_id  | INT       |
| amount       | DECIMAL   |
| payment_date | TIMESTAMP |

---

## 📥 Example Input

### sc_employee
| employee_id | name             | salary | department_id | manager_id |
|-------------|------------------|--------|---------------|------------|
| 1           | Emma Thompson    | 3800   | 1             | 6          |
| 2           | Daniel Rodriguez | 2230   | 1             | 7          |
| 3           | Olivia Smith     | 7000   | 1             | 8          |
| 4           | Ethan Brown      | 6800   | 1             | 9          |
| 5           | Sophia Martinez  | 1750   | 1             | 11         |

### sc_salary
| salary_id | employee_id | amount | payment_date         |
|-----------|-------------|--------|----------------------|
| 1         | 1           | 3800   | 2024-03-01 00:00:00 |
| 2         | 2           | 2230   | 2024-03-01 00:00:00 |
| 3         | 3           | 7000   | 2024-03-01 00:00:00 |
| 4         | 4           | 6800   | 2024-03-01 00:00:00 |
| 5         | 5           | 1750   | 2024-03-01 00:00:00 |

---

## 📤 Expected Output
| comparison | department_id | payment_month |
|------------|---------------|---------------|
| same       | 1             | 03-2024       |

---

## ⚙️ Approach
1. **Filter March 2024 salaries** from the salary table.  
2. **Join** employee and salary tables to link employees with departments.  
3. **Compute average salary** per department.  
4. **Compute company-wide average salary** for March 2024.  
5. **Compare** each department average with the company average:  
   - Mark as `higher`, `lower`, or `same`.  
6. Format `payment_month` as `MM-YYYY`.  

---

## ✅ Notes
- Comparison is done on raw float values (no rounding before comparison).  
- Output includes only departments with salary activity in **March 2024**.  
