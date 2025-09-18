
## 🐍 Problem 05: Correcting Social Media Post

You are given a table named `correct_social_media_post` that contains posts from various social media platforms. Each post includes metadata like likes, shares, and the post content.

### Task
Write a SQL query that performs the following operations:

- Replace every **case-sensitive** occurrence of `"Python"` with `"PySpark"` in the `text` column.
- Return all columns in the following specific order:
  - `comments`
  - `date`
  - `id`
  - `likes`
  - `platform`
  - `shares`
  - `text`
- Sort the final output by `comments` in **ascending order**.

### Input Table: `correct_social_media_post`

| id | text                                   | date       | likes | comments | shares | platform  |
|----|--------------------------------------|------------|-------|----------|--------|-----------|
| 1  | This is a Python post.                | 2022-03-01 | 10    | 3        | 2      | Twitter   |
| 2  | Another post about Python.            | 2022-03-02 | 20    | 5        | 3      | Instagram |
| 3  | Python is great for data analysis.   | 2022-03-03 | 30    | 2        | 4      | Facebook  |
| 4  | I am learning Python for machine learning. | 2022-03-04 | 40 | 7    | 5      | Twitter   |
| 5  | Python vs. R for data science.        | 2022-03-05 | 50    | 9        | 6      | Instagram |
| 6  | Python web development is awesome.    | 2022-03-06 | 60    | 1        | 1      | Facebook  |
| 7  | Python for finance.                   | 2022-03-07 | 70    | 4        | 3      | Twitter   |
| 8  | Python libraries for data visualization. | 2022-03-08 | 80 | 6       | 2      | Instagram |
| 9  | Why Python is the best programming language. | 2022-03-09 | 90 | 3     | 1      | Facebook  |
| 10 | Python for data engineering.          | 2022-03-10 | 100   | 8        | 7      | Twitter   |

---