-- SQL Operators Filtering Lab
-- Investigating login activity related to a security incident

-- =====================================================
-- Task 1: Retrieve Login Attempts After a Certain Date
-- =====================================================

SELECT *
FROM log_in_attempts
WHERE login_date >= '2022-05-09';

-- =====================================================
-- Task 2: Retrieve Logins in a Date Range
-- =====================================================

SELECT *
FROM log_in_attempts
WHERE login_date BETWEEN '2022-05-09' AND '2022-05-11';

-- =====================================================
-- Task 3: Investigate Logins at Certain Times
-- =====================================================

-- Retrieve logins before 07:00:00

SELECT *
FROM log_in_attempts
WHERE login_time < '07:00:00';

-- Retrieve logins between 06:00:00 and 07:00:00

SELECT *
FROM log_in_attempts
WHERE login_time BETWEEN '06:00:00' AND '07:00:00';

-- =====================================================
-- Task 4: Investigate Logins by Event ID
-- =====================================================

-- Retrieve login attempts with event_id greater than or equal to 100

SELECT event_id, username, login_date
FROM log_in_attempts
WHERE event_id >= 100;

-- Retrieve login attempts with event_id between 100 and 150

SELECT event_id, username, login_date
FROM log_in_attempts
WHERE event_id BETWEEN 100 AND 150;
