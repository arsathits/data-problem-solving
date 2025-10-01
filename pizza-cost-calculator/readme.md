# 🍕 Problem 15: Pizza Cost Calculator

## 📝 Problem Statement
A leading pizza chain is preparing a promotion offering **all 3-topping pizzas** at a fixed price.  
You are tasked with analyzing the costs and generating all possible 3-topping pizzas with their total ingredient cost.

---

## 📦 Input Schema

**Table: `pizza_toppings`**

| Column Name      | Type          |
|-----------------|---------------|
| topping_name     | varchar(255)  |
| ingredient_cost  | decimal(10,2) |

**Example Input:**

| topping_name    | ingredient_cost |
|----------------|----------------|
| Pepperoni       | 0.50           |
| Sausage         | 0.70           |
| Chicken         | 0.55           |
| Extra Cheese    | 0.40           |

---

## ✅ Output

**Columns:**

| pizza                          | total_cost |
|------------------------------- |------------|
| Chicken,Pepperoni,Sausage      | 1.75       |
| Chicken,Extra Cheese,Sausage   | 1.65       |
| Extra Cheese,Pepperoni,Sausage | 1.60       |
| Chicken,Extra Cheese,Pepperoni | 1.45       |

---

## 🔍 Explanation

1. **Generate combinations:**  
   - All unique sets of 3 toppings are considered.  
   - No topping is repeated in a combination.

2. **Alphabetical order inside pizza:**  
   - Each combination’s toppings are sorted alphabetically.  
   - E.g., `Chicken,Pepperoni,Sausage` is valid; `Pepperoni,Chicken,Sausage` is not.

3. **Calculate total cost:**  
   - Sum the `ingredient_cost` of the 3 toppings.  
   - Example: `Chicken,Pepperoni,Sausage` → `0.55 + 0.50 + 0.70 = 1.75`.

4. **Sort results:**  
   - First by **total_cost descending**.  
   - For ties, sort **alphabetically** by pizza toppings.

---

## ⚡ Notes

- SQL can use **self-joins or CTEs** to generate combinations.  
- In Python/Pandas, `itertools.combinations()` with `sum()` is convenient.  
- Ensure toppings within each pizza are always in **alphabetical order** for consistency and tie-breaking.
