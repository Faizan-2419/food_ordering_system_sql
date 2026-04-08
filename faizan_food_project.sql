CREATE DATABASE faizan_food_project;
USE faizan_food_project;

CREATE TABLE customers(
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
phone VARCHAR(15) UNIQUE,
city VARCHAR(50) NOT NULL,
dob DATE
) AUTO_INCREMENT = 101;

INSERT INTO customers(name, email, phone, city, dob)
VALUES
('Faizan', 'faizan@gmail.com', '9876543210', 'Delhi', '2002-05-10'),
('Sana', 'sana@gmail.com', '9876543211', 'Mumbai', '2001-08-15'),
('Suraj', 'suraj@gmail.com', '9876543212', 'Patna', '2000-12-20'),
('Mohit', 'mohit@gmail.com', '9876543213', 'Pune', '1999-03-25'),
('Jitu', 'jitu@gmail.com', '9876543214', 'Kolkata', '2003-07-18'),
('Rehan', 'rehan@gmail.com', '9876543215', 'Lucknow', '2002-11-05'),
('Zishan', 'zishan@gmail.com', '9876543216', 'Jaipur', '2001-01-30'),
('Aman', 'aman@gmail.com', '9876543217', 'Bangalore', '2000-09-12');

SELECT * FROM cUSTOMERS;


CREATE TABLE restaurants(
restr_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
details VARCHAR(500),
location VARCHAR(100),
phone_number VARCHAR(20),
email VARCHAR(50),
opening_time TIME,
closing_time TIME,
rating DECIMAL(3,2),
is_active BOOLEAN DEFAULT TRUE
) AUTO_INCREMENT=786;

INSERT INTO restaurants (name, details, location, phone_number, email, opening_time, closing_time, rating, is_active)
VALUES
('Faizan Veggie Delight', 'Pure vegetarian restaurant serving North & South Indian dishes, fresh juices and desserts.', 'Mainatand', '9876543210', 'faizan@food.com', '08:00:00', '22:00:00', 4.5, TRUE),
('Sana Chinese Corner', 'Authentic Chinese cuisine with specialties like Manchurian, Noodles, and Fried Rice.', 'Bettiah', '9876501234', 'sana@food.com', '10:00:00', '23:00:00', 4.2, TRUE),
('Suraj Tandoori', 'Traditional Indian tandoori dishes including Chicken Tikka, Paneer Tikka, and Kebabs.', 'Sikta', '9876512345', 'suraj@food.com', '11:00:00', '23:30:00', 4.3, TRUE),
('Mohit Cafe', 'Cozy cafe offering sandwiches, coffee, pastries and quick bites for all ages.', 'Delhi', '9876523456', 'mohit@food.com', '07:00:00', '21:00:00', 4.0, TRUE),
('Jitu Pizza House', 'Wood-fired Italian pizzas with fresh toppings, pastas, and soft drinks.', 'Pune', '9876534567', 'jitu@food.com', '12:00:00', '23:00:00', 4.6, TRUE),
('Rehan Burger Hub', 'Fast food restaurant serving burgers, fries, shakes, and combo meals.', 'Basantpur', '9876545678', 'rehan@food.com', '09:00:00', '22:30:00', 4.1, TRUE),
('Zishan Sweet Shop', 'Famous for Indian sweets, desserts, milkshakes, and snacks.', 'Mainatand', '9876556789', 'zishan@food.com', '08:00:00', '20:00:00', 4.4, TRUE),
('Royal Dine', 'Family restaurant serving North Indian, South Indian, and Continental dishes.', 'Patna', '9876567890', 'royal@food.com', '10:00:00', '23:00:00', 4.5, TRUE),
('Spice Treat', 'Specialty restaurant with spicy Indian curries, thalis, and traditional breads.', 'Gaya', '9876578901', 'spice@food.com', '11:00:00', '22:00:00', 4.2, TRUE),
('Urban Bites', 'Modern eatery offering fusion cuisine, fast food, and continental snacks.', 'Bhubaneshwar', '9876589012', 'urban@food.com', '09:30:00', '22:30:00', 4.3, TRUE),
('Golden Curry', 'Traditional Indian curries with breads, dine-in and takeaway services.', 'Varanasi', '9876590123', 'golden@food.com', '10:00:00', '23:00:00', 4.0, TRUE),
('Tandoori Flames', 'Tandoori & grilled dishes with a wide variety of kebabs and vegetarian options.', 'Lucknow', '9876501235', 'tandoori@food.com', '11:00:00', '23:30:00', 4.5, TRUE),
('Cafe Aroma', 'Coffee house with pastries, sandwiches, and hot & cold beverages.', 'Noida', '9876512346', 'aroma@food.com', '07:30:00', '21:30:00', 4.2, TRUE),
('The Food Corner', 'Multi-cuisine restaurant offering Indian, Chinese, and fast food.', 'Kanpur', '9876523457', 'foodcorner@food.com', '10:00:00', '23:00:00', 4.1, TRUE),
('Veggie World', 'Vegetarian restaurant with salads, soups, healthy meals, and fresh juices.', 'Ranchi', '9876534568', 'veggieworld@food.com', '08:00:00', '22:00:00', 4.4, TRUE);

SELECT * FROM restaurants;


CREATE TABLE menu (
menu_id INT PRIMARY KEY AUTO_INCREMENT,
restr_id INT NOT NULL,
item_code VARCHAR(20) UNIQUE,
item_name VARCHAR(100) NOT NULL,
category VARCHAR(50),
price DECIMAL(8,2) NOT NULL,
description VARCHAR(255),
is_available BOOLEAN,
created_at DATETIME,
FOREIGN KEY (restr_id) REFERENCES restaurants(restr_id)
) AUTO_INCREMENT=1102;

INSERT INTO menu(restr_id, item_code, item_name, category, price, description, is_available, created_at)
VALUES
(786, 'FVD101', 'Paneer Thali', 'Main Course', 220.00, 'Veg thali with paneer curry, roti, rice', TRUE, NOW()),
(786, 'FVD102', 'Veg Biryani', 'Main Course', 180.00, 'Aromatic basmati rice with vegetables', TRUE, NOW()),

(787, 'SCC101', 'Hakka Noodles', 'Chinese', 190.00, 'Stir fried noodles with veggies', TRUE, NOW()),
(787, 'SCC102', 'Manchurian', 'Chinese', 210.00, 'Veg balls in spicy gravy', TRUE, NOW()),

(788, 'ST101', 'Chicken Tikka', 'Tandoori', 320.00, 'Grilled chicken with spices', TRUE, NOW()),
(788, 'ST102', 'Paneer Tikka', 'Tandoori', 280.00, 'Grilled paneer cubes', TRUE, NOW()),

(789, 'MC101', 'Cold Coffee', 'Beverage', 140.00, 'Chilled coffee with ice cream', TRUE, NOW()),
(789, 'MC102', 'Grilled Sandwich', 'Snacks', 120.00, 'Veg sandwich with cheese', TRUE, NOW()),

(790, 'JPH101', 'Farmhouse Pizza', 'Italian', 400.00, 'Pizza with fresh veggies', TRUE, NOW()),
(790, 'JPH102', 'White Sauce Pasta', 'Italian', 300.00, 'Creamy pasta with herbs', TRUE, NOW()),

(791, 'RBH101', 'Cheese Burger', 'Fast Food', 160.00, 'Burger with cheese slice', TRUE, NOW()),
(791, 'RBH102', 'French Fries', 'Fast Food', 100.00, 'Crispy potato fries', TRUE, NOW()),

(792, 'ZSS101', 'Rasgulla', 'Dessert', 60.00, 'Soft syrup soaked sweet', TRUE, NOW()),
(792, 'ZSS102', 'Kaju Katli', 'Dessert', 500.00, 'Cashew sweet premium', TRUE, NOW()),

(793, 'RD101', 'Special Thali', 'Main Course', 250.00, 'Complete Indian meal', TRUE, NOW()),
(793, 'RD102', 'Butter Naan', 'Bread', 40.00, 'Soft naan with butter', TRUE, NOW()),

(794, 'SPT101', 'Chicken Curry', 'Main Course', 300.00, 'Spicy chicken curry', TRUE, NOW()),
(794, 'SPT102', 'Paneer Butter Masala', 'Main Course', 260.00, 'Creamy paneer gravy', TRUE, NOW()),

(795, 'UB101', 'Veg Burger', 'Fast Food', 140.00, 'Crispy veg patty burger', TRUE, NOW()),
(795, 'UB102', 'Spring Rolls', 'Snacks', 170.00, 'Crispy veg rolls', TRUE, NOW()),

(796, 'GC101', 'Dal Tadka', 'Main Course', 190.00, 'Yellow dal with tadka', TRUE, NOW()),
(796, 'GC102', 'Jeera Rice', 'Main Course', 150.00, 'Rice with cumin flavor', TRUE, NOW()),

(797, 'TF101', 'Seekh Kebab', 'Tandoori', 350.00, 'Minced meat kebabs', TRUE, NOW()),
(797, 'TF102', 'Tandoori Chicken', 'Tandoori', 380.00, 'Full grilled chicken', TRUE, NOW()),

(798, 'CA101', 'Cappuccino', 'Beverage', 160.00, 'Hot coffee with foam', TRUE, NOW()),
(798, 'CA102', 'Chocolate Pastry', 'Dessert', 130.00, 'Chocolate layered pastry', TRUE, NOW()),

(799, 'TFC101', 'Fried Rice', 'Chinese', 180.00, 'Rice with veggies', TRUE, NOW()),
(799, 'TFC102', 'Chilli Paneer', 'Chinese', 220.00, 'Paneer in spicy sauce', TRUE, NOW()),

(800, 'VW101', 'Veg Salad', 'Healthy', 120.00, 'Fresh vegetable salad', TRUE, NOW()),
(800, 'VW102', 'Fruit Juice', 'Beverage', 100.00, 'Fresh fruit juice', TRUE, NOW());



CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
order_no VARCHAR(30) UNIQUE,
customer_id INT,
order_status VARCHAR(20),
total_amount DECIMAL(10,2),
payment_method VARCHAR(20),
created_at DATETIME,
FOREIGN KEY (customer_id) REFERENCES customers(id)
ON UPDATE CASCADE
ON DELETE CASCADE
) AUTO_INCREMENT=1;

INSERT INTO orders(order_no, customer_id, order_status, total_amount, payment_method, created_at)
VALUES
('ORD001', 101, 'delivered', 450.00, 'cash', NOW()),
('ORD002', 102, 'pending', 300.00, 'online', NOW()),
('ORD003', 103, 'delivered', 620.00, 'card', NOW()),
('ORD004', 104, 'cancelled', 200.00, 'cash', NOW()),
('ORD005', 105, 'delivered', 780.00, 'online', NOW()),
('ORD006', 106, 'pending', 150.00, 'cash', NOW()),
('ORD007', 107, 'delivered', 520.00, 'card', NOW()),
('ORD008', 108, 'pending', 340.00, 'online', NOW()),
('ORD009', 101, 'delivered', 260.00, 'cash', NOW()),
('ORD010', 102, 'cancelled', 410.00, 'card', NOW());


CREATE TABLE order_items(
order_item_id INT PRIMARY KEY AUTO_INCREMENT,
order_id INT NOT NULL,
menu_id INT NOT NULL,
quantity INT DEFAULT 1,
price DECIMAL(8,2) NOT NULL,
FOREIGN KEY (order_id) REFERENCES orders(order_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
FOREIGN KEY (menu_id) REFERENCES menu(menu_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
) AUTO_INCREMENT = 5001;

INSERT INTO order_items (order_id, menu_id, quantity, price) VALUES

(1, 1102, 2, 220.00),
(1, 1103, 1, 180.00),

(2, 1104, 1, 190.00),
(2, 1105, 2, 210.00),

(3, 1106, 2, 320.00),

(4, 1108, 1, 140.00),
(4, 1109, 1, 120.00),

(5, 1110, 1, 400.00),
(5, 1111, 1, 300.00),

(6, 1112, 2, 100.00),

(7, 1114, 3, 60.00),

(8, 1116, 1, 250.00),
(8, 1117, 1, 40.00),

(9, 1118, 1, 300.00),

(10, 1120, 2, 140.00);




SELECT restaurants.name,
SUM(order_items.price * order_items.quantity) AS total_revenue
FROM restaurants
JOIN menu ON restaurants.restr_id = menu.restr_id
JOIN order_items ON menu.menu_id = order_items.menu_id
JOIN orders ON orders.order_id = order_items.order_id
GROUP BY restaurants.restr_id, restaurants.name;


SELECT menu.item_name,
restaurants.name AS restaurant_name,
menu.price
FROM menu
JOIN restaurants ON menu.restr_id = restaurants.restr_id;


SELECT name, location
FROM restaurants
WHERE is_active = TRUE;

SELECT customers.name,
orders.order_no,
orders.order_status
FROM customers
JOIN orders ON customers.id = orders.customer_id
WHERE orders.order_status = 'Pending';

SELECT order_no, total_amount
FROM orders
WHERE payment_method = 'online';