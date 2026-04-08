# 🍽️ Faizan Food Project (SQL-Based Food Ordering System)

## 📌 Project Overview
The Faizan Food Project is a MySQL database that simulates a real food ordering system. It covers important database concepts like table relationships, foreign keys, and normalization.

In this project, I created tables for customers, restaurants, menus, orders, and order items to manage and track food orders efficiently. It also includes sample queries to calculate revenue, check pending orders, and explore the database.

---

## 🎯 Objectives
- Design a normalized relational database.
- Implement real-world entity relationships using foreign keys.
- Perform data analysis using SQL queries.
- Practice interview-level SQL concepts (JOINs, aggregations, filtering).

---

## 🗂️ Database Schema

### 1. Customers
Stores customer details: name, email, phone, city, and date of birth.

### 2. Restaurants
Contains restaurant information: location, rating, timings, and active status.

### 3. Menu
Represents food items offered by restaurants with categories, prices, and availability.

### 4. Orders
Tracks customer orders with status, total amount, and payment method.

### 5. Order Items
Maintains detailed breakdown of each order (items, quantity, and price).

---

## 🔗 Relationships
- One customer → multiple orders  
- One restaurant → multiple menu items  
- One order → multiple order items  
- Menu acts as a bridge between restaurants and order items  

---

## ⚙️ Key Features
- Fully normalized database design  
- Primary and foreign key constraints  
- Realistic dataset for practical understanding  
- SQL operations covered:
  - INNER JOIN
  - GROUP BY with aggregation
  - Filtering using WHERE
  - Alias usage
- Revenue calculation per restaurant  
- Order tracking (Pending, Delivered, Cancelled)

---

## 📊 Sample Queries

### Total Revenue per Restaurant
```sql
SELECT restaurants.name,
       SUM(order_items.price * order_items.quantity) AS total_revenue
FROM restaurants
JOIN menu ON restaurants.restr_id = menu.restr_id
JOIN order_items ON menu.menu_id = order_items.menu_id
JOIN orders ON orders.order_id = order_items.order_id
GROUP BY restaurants.restr_id, restaurants.name;
