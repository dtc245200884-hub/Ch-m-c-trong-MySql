USE classicmodels;

-- Kiểm tra trước khi tạo Index
EXPLAIN
SELECT *
FROM customers
WHERE customerName = 'Land of Toys Inc.';

-- Tạo Index cho customerName
ALTER TABLE customers
ADD INDEX idx_customerName(customerName);

-- Kiểm tra sau khi tạo Index
EXPLAIN
SELECT *
FROM customers
WHERE customerName = 'Land of Toys Inc.';

-- Tạo Index cho nhiều cột
ALTER TABLE customers
ADD INDEX idx_full_name(contactFirstName, contactLastName);

-- Kiểm tra Index nhiều cột
EXPLAIN
SELECT *
FROM customers
WHERE contactFirstName = 'Jean'
   OR contactFirstName = 'King';

-- Xóa Index
ALTER TABLE customers
DROP INDEX idx_full_name;