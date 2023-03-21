SELECT * FROM ata_db.monthly_segments_total_customer;

-- 每月每个agency的segments计算
SELECT d.agency_name, DATE_FORMAT(month, '%Y-%m') AS datetime, 
ROUND(SUM(b.base_rate*a.base_seg + b.inter_rate*a.inter_seg),2) AS monthly_total_per_cus
FROM ata_db.segments a JOIN ata_db.contract b ON a.contract_id = b.contract_id
JOIN ata_db.customer c ON b.customer_id = c.customer_id
JOIN ata_db.agency d ON d.agency_id = c.agency_id
GROUP BY datetime, a.agency_id
ORDER BY datetime;

-- 每月每个customer的segments计算
SELECT d.agency_name, c.customer_num, b.contract_no AS contractNumber, CONCAT(c.first_name, ' ', c.last_name) AS name, 
a.contract_id, DATE_FORMAT(month, '%Y-%m') AS datetime, SUM(a.inter_seg) AS interSeg, SUM(a.base_seg) AS baseSeg, b.inter_rate AS interRate, b.base_rate AS baseRate,
ROUND(SUM(b.base_rate*a.base_seg + b.inter_rate*a.inter_seg),2) AS monthly_total_per_customer
FROM ata_db.segments a JOIN ata_db.contract b ON a.contract_id = b.contract_id
JOIN ata_db.customer c ON b.customer_id = c.customer_id
JOIN ata_db.agency d ON d.agency_id = c.agency_id
GROUP BY datetime, c.customer_id
ORDER BY datetime;

-- 算每月每个agency的未支付segments计算
SELECT d.agency_name, DATE_FORMAT(month, '%Y-%m') AS datetime, 
ROUND(SUM(b.base_rate*a.base_seg + b.inter_rate*a.inter_seg),2) - SUM(e.total) AS UnpaidPayout
FROM ata_db.segments a JOIN ata_db.contract b ON a.contract_id = b.contract_id
JOIN ata_db.customer c ON b.customer_id = c.customer_id
JOIN ata_db.agency d ON d.agency_id = c.agency_id
JOIN ata_db.payout e ON e.contract_id = a.contract_id
GROUP BY datetime, a.agency_id
ORDER BY datetime;

-- CUSTOMER总表,缺一个计算
SELECT a.agency_name AS Agency, c.customer_num AS Customer, b.office_no AS Office, b.manager_name AS Manager, a.city, a.state, c.contract_expdate AS ContractExpire
FROM ata_db.agency a JOIN ata_db.office b ON a.agency_id = b.agency_id
JOIN ata_db.customer c ON a.agency_id = c.agency_id
LIMIT 15;

-- Basic info display
SELECT c.customer_num, a.agency_name, b.manager_name, c.market, CONCAT(c.first_name, ' ', c.last_name) AS Name, c.email, c.phone_num, 
a.address, b.office_no, c.direct_username, c.direct_pwd, d.contract_no, c.IATA_id, c.amadeus_user, c.amadeus_pwd
FROM ata_db.agency a JOIN ata_db.office b ON a.agency_id = b.agency_id
JOIN ata_db.customer c ON a.agency_id = c.agency_id
JOIN ata_db.contract d ON c.customer_id = d.customer_id;










