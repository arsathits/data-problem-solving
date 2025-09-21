# 📈 Problem 09: GDP Growth Rate

You are working as an Economist and need to compute the annual growth rate of GDP from multiple economic data sources.  
The GDP growth rate is defined as the **percentage increase in a country's GDP from one year to the next**, using the formula:

\[
GDP\ Growth\ Rate = \frac{GDP_{current} - GDP_{previous}}{GDP_{previous}} \times 100
\]

---

## 📦 Input

You are given two DataFrames with economic data:

### gdp_df1
| Column Name | Data Type |
|-------------|-----------|
| Country     | String    |
| Year        | Integer   |
| GDP         | Double    |

### gdp_df2
| Column Name | Data Type |
|-------------|-----------|
| Country     | String    |
| Year        | Integer   |
| GDP         | Double    |

These DataFrames may contain overlapping or distinct countries and years.

---

## ✅ Your Task

Write a function that:

1. Combines both DataFrames.  
2. Calculates the GDP growth rate for each country and year.  
3. Returns the result in the specified format.  

---

## 📤 Output Schema

| Column Name     | Data Type |
|-----------------|-----------|
| Country         | String    |
| Year            | Integer   |
| GDP_growth_rate | Double    |

---

## 📌 Constraints

- The output must be **sorted by Country and then by Year** (both ascending).  
- GDP growth rate should be **rounded to two decimal places**.  
- If the previous year’s GDP is not available for a country, the GDP growth rate should be **null/None**.  
- Assume all GDP values are clean and non-negative.  

---

## 🧪 Example

**Input**

**gdp_df1**

| Country | Year | GDP      |
|---------|------|----------|
| USA     | 2018 | 20544.34 |
| USA     | 2019 | 21427.70 |
| China   | 2018 | 13894.04 |

**gdp_df2**

| Country | Year | GDP    |
|---------|------|--------|
| China   | 2019 | 14402.72 |
| India   | 2018 | 2713.61 |
| India   | 2019 | 2868.93 |

**Expected Output**

| Country | Year | GDP_growth_rate |
|---------|------|-----------------|
| China   | 2018 |                 |
| China   | 2019 | 3.66            |
| India   | 2018 |                 |
| India   | 2019 | 5.72            |
| USA     | 2018 |                 |
| USA     | 2019 | 4.30            |
