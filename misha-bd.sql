-- Создание базы данных
CREATE DATABASE IF NOT EXISTS ProductsDB;
USE ProductsDB;

-- Таблица для насадок
CREATE TABLE IF NOT EXISTS Attachments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(50),
    type VARCHAR(50),
    size VARCHAR(50),
    quantity INT,
    package VARCHAR(50)
);

-- Таблица для перфорированных лент
CREATE TABLE IF NOT EXISTS PerforatedStrips (
    id INT AUTO_INCREMENT PRIMARY KEY,
    width DECIMAL(5,2),
    thickness DECIMAL(5,2),
    length VARCHAR(10),
    quantity INT
);

-- Таблица для крепёжных и соединительных пластин
CREATE TABLE IF NOT EXISTS Plates (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type ENUM('Крепёжная', 'Соединительная'),
    width DECIMAL(5,2),
    length DECIMAL(5,2),
    quantity INT
);

-- Таблица для подвесов
CREATE TABLE IF NOT EXISTS Hangers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    thickness DECIMAL(5,2),
    quantity INT
);

-- Таблица для саморезов по дереву
CREATE TABLE IF NOT EXISTS WoodScrews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    color VARCHAR(20),
    diameter DECIMAL(5,2),
    length DECIMAL(5,2),
    quantity INT
);

-- Таблица для саморезов по металлу
CREATE TABLE IF NOT EXISTS MetalScrews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    color VARCHAR(20),
    diameter DECIMAL(5,2),
    length DECIMAL(5,2),
    quantity INT
);

-- Вставка данных в таблицу насадок
INSERT INTO Attachments (brand, type, size, quantity, package) VALUES
('Taiwan', 'Bohrer', 'Pz2*50 мм', 10, 'блистере'),
('WHIRL POWER', 'магнитная', '8*65 мм', 5, NULL),
('WHIRL POWER', 'магнитная', '10*65 мм', 5, NULL),
('GROSS', 'Hex', '4*50 мм', 10, NULL),
('GROSS', 'T30', '50 мм', 10, NULL),
('GROSS', 'Ph', '2*50 мм', 10, NULL),
('GROSS', 'Ph', '2*70 мм', 10, NULL),
('GROSS', 'Ph', '2*90 мм', 10, NULL),
('GROSS', 'Ph', '2*127 мм', 5, NULL),
('GROSS', 'Ph', '2*150 мм', 5, NULL),
('GROSS', 'Pz', '1*50 мм', 10, NULL),
('GROSS', 'Pz', '2*50 мм', 10, NULL),
('GROSS', 'Pz', '2*90 мм', 10, NULL),
('GROSS', 'Pz', '3*50 мм', 10, NULL);

-- Вставка данных в таблицу перфорированных лент
INSERT INTO PerforatedStrips (width, thickness, length, quantity) VALUES
(12, 0.55, '5 м', NULL),
(12, 0.55, '10 м', NULL),
(12, 0.55, '25 м', NULL),
(17, 0.55, '5 м', NULL),
(17, 0.55, '10 м', NULL),
(17, 0.55, '25 м', NULL),
(20, 0.55, '5 м', NULL),
(20, 0.55, '10 м', NULL),
(20, 0.55, '25 м', NULL);

-- Вставка данных в таблицу пластин
INSERT INTO Plates (type, width, length, quantity) VALUES
('Крепёжная', 100, 35, 25),
('Крепёжная', 140, 55, 25),
('Крепёжная', 180, 65, 25),
('Крепёжная', 210, 90, 25),
('Соединительная', 40, 80, 25),
('Соединительная', 40, 100, 25),
('Соединительная', 40, 120, 25),
('Соединительная', 40, 160, 25),
('Соединительная', 40, 240, 25),
('Соединительная', 40, 400, 25),
('Соединительная', 40, 600, 25),
('Соединительная', 50, 100, 25),
('Соединительная', 50, 140, 25),
('Соединительная', 60, 100, 25),
('Соединительная', 60, 140, 25),
('Соединительная', 80, 120, 25),
('Соединительная', 80, 140, 25),
('Соединительная', 80, 240, 25);

-- Вставка данных в таблицу подвесов
INSERT INTO Hangers (thickness, quantity) VALUES
(0.6, 100),
(0.7, 100),
(0.8, 100),
(1.0, 100);

-- Вставка данных в таблицу саморезов по дереву
INSERT INTO WoodScrews (color, diameter, length, quantity) VALUES
('Цинк', 4.8, 29.0, 200),
('Цинк', 4.8, 35.0, 150),
('Цинк', 4.8, 51.0, 100);

-- Вставка данных в таблицу саморезов по металлу
INSERT INTO MetalScrews (color, diameter, length, quantity) VALUES
('Цинк', 5.5, 19.0, 200);

-- Добавьте остальные данные аналогично...

-- Сохраните этот код в файл с расширением .sql, например create_products_db.sql, 
-- и затем вы сможете выполнить его в вашей базе данных MySQL или MariaDB.