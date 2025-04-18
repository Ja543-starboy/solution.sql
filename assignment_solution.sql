-- MySQL Assignment Solutions
-- Contains all required queries in a single file

-- =============================================
-- Question 1: Drop an Index
-- Write an SQL query to drop an index named IdxPhone from customers table
-- =============================================
DROP INDEX IF EXISTS IdxPhone ON customers;


-- =============================================
-- Question 2: Create a User
-- Write an SQL query to create a user named bob with the password 'S$cu3r3!',
-- restricted to the localhost hostname
-- =============================================
CREATE USER IF NOT EXISTS 'bob'@'localhost' 
IDENTIFIED BY 'S$cu3r3!';


-- =============================================
-- Question 3: Grant Privileges
-- Write an SQL query to grant the INSERT privilege to the user bob 
-- on the salesDB database
-- =============================================
GRANT INSERT ON salesDB.* TO 'bob'@'localhost';


-- =============================================
-- Question 4: Change Password
-- Write an SQL query to change the password for the user bob to 'P$55!23'
-- =============================================
ALTER USER 'bob'@'localhost' 
IDENTIFIED BY 'P$55!23';


-- =============================================
-- Verification Queries (Optional)
-- Uncomment these to verify your changes
-- =============================================
-- SHOW INDEX FROM customers;  -- Verify index dropped (Q1)
-- 
-- SELECT user, host FROM mysql.user 
-- WHERE user = 'bob';  -- Verify user created (Q2)
-- 
-- SHOW GRANTS FOR 'bob'@'localhost';  -- Verify privileges (Q3)
-- 
-- -- For password change verification (Q4), you would need to:
-- -- 1. Log in as bob with new password
-- -- 2. Or check authentication_string in mysql.user table (requires privileges)