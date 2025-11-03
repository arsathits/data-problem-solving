# 🚢 Problem 32: Titanic Survivors and Non-Survivors

---

## 📌 Problem Statement

You are provided with data about passengers aboard the **Titanic**, including details such as their **class**, **age**, **sex**, and whether they **survived** the disaster.  

Your task is to analyze the dataset and produce a report showing the **number of survivors and non-survivors** for each **passenger class**.

Passenger classes are defined by the `pclass` field as follows:

- **First Class:** `pclass = 1`  
- **Second Class:** `pclass = 2`  
- **Third Class:** `pclass = 3`  

---

## 🎯 Objective

Generate a summary table that displays, for each passenger class, the **count of survivors** (`survived = 1`) and **non-survivors** (`survived = 0`).

---

## 🧩 Input Table

**Table Name:** `titanic`

| Column | Type | Description |
|--------|------|-------------|
| passengerid | INT | Unique ID of each passenger |
| survived | INT | 1 = Survived, 0 = Did not survive |
| pclass | INT | Passenger class (1, 2, or 3) |
| name | TEXT | Passenger’s full name |
| sex | TEXT | Gender of the passenger |
| age | NUMERIC | Age of the passenger |
| sibsp | INT | Number of siblings/spouses aboard |
| parch | INT | Number of parents/children aboard |
| ticket | TEXT | Ticket number |
| fare | NUMERIC | Fare paid for the ticket |
| cabin | TEXT | Cabin number (if known) |
| embarked | TEXT | Port of embarkation |

---
