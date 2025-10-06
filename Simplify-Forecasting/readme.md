# 🚖 Problem 21: Simplify Forecasting

## 📝 Problem Statement
You are given a table of ride requests containing the distance to travel and the monetary cost for each ride.  
The task is to **forecast the "distance per dollar"** for each month using a naïve forecasting method and evaluate its accuracy.

---

## 📌 Requirements

1. **Aggregate Monthly Data**  
   - Calculate the total distance traveled and total monetary cost for each month.

2. **Compute Actual Distance per Dollar**  
   - Actual distance per dollar = total distance ÷ total cost

3. **Naïve Forecast**  
   - Forecast for the current month = actual value from the previous month

4. **Compute Forecast Error**  
   - Error = actual distance per dollar − forecasted distance per dollar

5. **Compute RMSE (Root Mean Squared Error)**  
   - RMSE = square root of the average of squared errors  
   - Round RMSE to 2 decimal places

---

## 🧾 Table Schema

### `ride_requests`
| Column Name                | Type       | Description                                      |
|----------------------------|------------|--------------------------------------------------|
| request_id                 | INT        | Unique identifier for each ride request.        |
| request_date               | DATE       | Date of the ride request.                        |
| request_status             | STRING     | Status of the request ('success' or 'fail').    |
| distance_to_travel         | NUMERIC    | Distance to be traveled (in km).                |
| monetary_cost              | NUMERIC    | Cost of the ride (in local currency).           |
| driver_to_client_distance  | NUMERIC    | Distance between driver and client before ride. |

---

## 📥 Example Input

| request_id | request_date | request_status | distance_to_travel | monetary_cost | driver_to_client_distance |
|------------|--------------|----------------|------------------|---------------|---------------------------|
| 1          | 2020-01-09   | success        | 70.59            | 6.56          | 14.36                     |
| 2          | 2020-01-24   | success        | 93.36            | 22.68         | 19.90                     |
| 3          | 2020-02-08   | fail           | 51.24            | 11.39         | 21.32                     |
| 4          | 2020-02-23   | success        | 61.58            | 8.04          | 44.26                     |
| 5          | 2020-03-09   | success        | 25.04            | 7.19          | 1.74                      |

---

## 📤 Expected Output

| month   | total_distance | total_cost | actual_distance_per_dollar | forecasted_distance_per_dollar | error  |
|---------|----------------|------------|----------------------------|-------------------------------|--------|
| 2020-01 | 163.95         | 29.24      | 5.607045                   | NULL                          | NULL   |
| 2020-02 | 112.82         | 19.43      | 5.806485                   | 5.607045                      | 0.19944|
| 2020-03 | 25.04          | 7.19       | 3.482615                   | 5.806485                      | -2.32387|

**RMSE:** 1.65

---

## ⚙️ Approach

1. Aggregate total distance and cost per month.  
2. Compute the actual "distance per dollar".  
3. Forecast next month using the naïve method (previous month’s value).  
4. Compute forecast error for each month.  
5. Compute RMSE as the overall measure of forecast accuracy.
