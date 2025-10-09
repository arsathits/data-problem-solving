# 🛒 Problem 07: Consumer Goods Discount Confusion

## Problem Statement
You are given a sales dataset from a Consumer Goods company in the form of a DataFrame.  
The DataFrame contains the following columns:

| Column Name | Data Type |
|-------------|-----------|
| StoreID     | String    |
| ProductName | String    |
| Category    | String    |
| SoldUnits   | Integer   |
| Description | String    |

### Task
The `Description` column sometimes contains discount information in square brackets,  
for example: `[10% off]`.  

You need to:
1. Extract the discount percentage from the `Description` column.
2. Convert it into a decimal format (e.g., `0.10` for `10%`).
3. Create a new column called `Discount`.
4. If no discount exists, set the `Discount` to `0`.
5. Keep all other columns unchanged.

### Expected Output Schema
| Column Name | Data Type |
|-------------|-----------|
| StoreID     | String    |
| ProductName | String    |
| Category    | String    |
| SoldUnits   | Integer   |
| Description | String    |
| Discount    | Float     |

---

## Example

### Input DataFrame
| StoreID | ProductName | Category | SoldUnits | Description                |
|---------|-------------|----------|-----------|----------------------------|
| S101    | Biscuits    | Food     | 120       | Tasty Biscuits [10% off]   |
| S102    | Shampoo     | Hygiene  | 85        | Smoothens Hair [5% off]    |
| S103    | Banana      | Food     | 150       | Fresh Bananas              |
| S101    | Toothpaste  | Hygiene  | 300       | Protects Teeth             |
| S102    | Shirt       | Clothes  | 65        | Cotton Shirts [20% off]    |

### Expected Output DataFrame
| Category | Description               | Discount | ProductName | SoldUnits | StoreID |
|----------|---------------------------|----------|-------------|-----------|---------|
| Clothes  | Cotton Shirts [20% off]   | 0.20     | Shirt       | 65        | S102    |
| Food     | Fresh Bananas             | 0.00     | Banana      | 150       | S103    |
| Food     | Tasty Biscuits [10% off]  | 0.10     | Biscuits    | 120       | S101    |
| Hygiene  | Protects Teeth            | 0.00     | Toothpaste  | 300       | S101    |
| Hygiene  | Smoothens Hair [5% off]   | 0.05     | Shampoo     | 85        | S102    |
