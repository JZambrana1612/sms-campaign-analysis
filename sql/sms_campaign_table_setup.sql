
-- ========================================
-- SMS Campaign Dataset - MySQL Table Setup
-- ========================================

-- Drop existing table if it exists
DROP TABLE IF EXISTS sms_campaign;

-- Create the sms_campaign table
CREATE TABLE sms_campaign (
    age INT,
    job VARCHAR(50),
    marital VARCHAR(20),
    education VARCHAR(30),
    default_status ENUM('yes', 'no'),
    balance INT,
    housing ENUM('yes', 'no'),
    loan ENUM('yes', 'no'),
    contact VARCHAR(30),
    day INT,
    month VARCHAR(10),
    duration INT,
    campaign INT,
    pdays INT,
    previous INT,
    poutcome VARCHAR(30),
    subscribed ENUM('yes', 'no')
);
