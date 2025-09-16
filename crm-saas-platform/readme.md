👨‍💼 Problem 2: CRM SaaS Platform

You're working as a Data Engineer at a company that builds Customer Relationship Management (CRM) software.

Your task is to build a unified view that shows order details along with customer and product information — useful for internal dashboards and reporting.

✅ Task

Write a function (or SQL query) that:

Joins the customers, orders, and products datasets.

Creates a new column called customer_name by concatenating first_name and last_name with a space in between.

Returns a new DataFrame (or result set) with the following column layout and renaming:

Column Name	Description
order id	Order ID
customer name	Full name of the customer
customer email	Customer's email address
product name	Name of the product ordered
product category	Category of the product
order date	Date of the order

⚠️ Column order matters — make sure the output follows the structure above.
