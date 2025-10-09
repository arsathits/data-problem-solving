# Problem 23: GPS Distance Analysis

This project analyzes **GPS tracking data** from fitness sessions to compare two methods of calculating travel distance — one that accounts for the Earth's curvature (Haversine formula) and one that assumes a flat surface.  

---

## 🧭 Objective
For each fitness session:
1. Compute the distance between the **farthest steps** (minimum and maximum step IDs).
2. Calculate distance using two models:
   - **Curved Earth Model (Haversine formula)**
   - **Flat Surface Model (Euclidean approximation)**
3. Exclude sessions that have only one step.
4. Output the **average distance** for both methods and the **difference** between them.

---

## 📘 Input Table — `user_sessions`

| Column Name | Description |
|--------------|-------------|
| `user_id` | Unique identifier for each user |
| `session_id` | Unique session identifier |
| `step_id` | Step number within the session |
| `day` | The day number of the tracking activity |
| `latitude` | GPS latitude of the step |
| `longitude` | GPS longitude of the step |
| `altitude` | Altitude in meters |

---

## 🧩 Sample Input

| user_id | session_id | step_id | day | latitude | longitude | altitude |
|----------|-------------|----------|-----|-----------|------------|-----------|
| user_1 | 101 | 1 | 1 | 37.7749 | -122.4194 | 15.0 |
| user_1 | 101 | 2 | 1 | 37.7750 | -122.4195 | 15.5 |
| user_1 | 101 | 3 | 1 | 37.7751 | -122.4196 | 16.0 |
| user_1 | 102 | 1 | 1 | 34.0522 | -118.2437 | 20.0 |
| user_1 | 102 | 2 | 1 | 34.0523 | -118.2438 | 20.5 |
| user_2 | 201 | 1 | 1 | 40.7128 | -74.0060 | 5.0 |
| user_2 | 201 | 2 | 1 | 40.7129 | -74.0061 | 5.5 |
| user_2 | 202 | 1 | 1 | 51.5074 | -0.1278 | 10.0 |
| user_2 | 202 | 2 | 1 | 51.5075 | -0.1279 | 10.5 |
| user_3 | 301 | 1 | 1 | 48.8566 | 2.3522 | 25.0 |
| user_3 | 301 | 2 | 1 | 48.8567 | 2.3523 | 25.5 |

---

## 🧾 Expected Output

| session_id | avg_distance_curved | avg_distance_flat | difference |
|-------------|---------------------|-------------------|-------------|
| 101 | 0.0283 | 0.0314 | 0.0031 |
| 102 | 0.0144 | 0.0157 | 0.0013 |
| 201 | 0.0140 | 0.0157 | 0.0017 |
| 202 | 0.0131 | 0.0157 | 0.0026 |
| 301 | 0.0133 | 0.0157 | 0.0024 |

---

## 🧠 Formulas Used

**Curved Earth Model (Haversine formula):**

$$d=6371\times \arccos (\sin (\varphi _{1})\times \sin (\varphi _{2})+\cos (\varphi _{1})\times \cos (\varphi _{2})\times \cos (\lambda _{2}-\lambda _{1}))$$

**Flat Surface Model (Euclidean approximation):**

$$d = 111 \times \sqrt{(\text{lat}_{2} - \text{lat}_{1})^2 + (\text{lon}_{2} - \text{lon}_{1})^2}$$

