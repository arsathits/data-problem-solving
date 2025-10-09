# 🍳 Problem 27: Recipe Distribution

## 📘 Problem Statement

You are provided with a dataset that lists recipe titles along with the page numbers where they appear in a cookbook. Each recipe is printed on a single page, and pages are numbered starting from **1**.

Your goal is to analyze how recipes are distributed across the **left (even)** and **right (odd)** pages of the book and create a new table with the following details:

- **left_page_number** → The even-numbered page (left side of the open book).
- **left_title** → The recipe title on the left page.
- **right_title** → The recipe title on the right page (odd-numbered page immediately following the left page).

If a page does not contain any recipe, the corresponding field should be **NULL**.  
The inner side of the front cover (page 0) is guaranteed to be empty and should also be included in the result as a row.

## 📋 Input Table: `recipe_pages`

| Column Name   | Data Type      | Description              |
| -------------- | -------------- | ------------------------ |
| `page_number`  | `INT`          | Page number in the book. |
| `title`        | `VARCHAR(255)` | Title of the recipe.     |

## 📘 Sample Input

| page_number | title          |
| ------------ | -------------- |
| 1            | Scrambled eggs |
| 2            | Fondue         |
| 3            | Sandwich       |
| 4            | Tomato soup    |
| 6            | Liver          |
| 11           | Fried duck     |
| 12           | Boiled duck    |
| 15           | Baked chicken  |

## ✅ Expected Output

| left_page_number | left_title  | right_title |
| ---------------- | ----------- | ------------ |
| 0                | NULL        | NULL         |
| 2                | Fondue      | Sandwich     |
| 4                | Tomato soup | NULL         |
| 6                | Liver       | NULL         |
| 12               | Boiled duck | NULL         |
