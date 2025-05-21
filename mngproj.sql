USE mng;


SELECT * FROM allocationcsv;

SELECT * FROM demandcsv;

SELECT *
FROM allocationcsv
INNER JOIN demandcsv ON allocationcsv.SNo=demandcsv.SNo;

SET @prev_R_ID = NULL;


UPDATE allocationcsv 
SET 
    R_ID = (IF(R_ID IS NULL OR R_ID = '',
        @prev_R_ID,
        R_ID));


SELECT *
FROM demandcsv d
INNER JOIN allocationcsv a ON d.SNo = a.SNo;


SELECT R_ID, Name,W_Name, Application_Date, Date_Wdemanded, Allocation_Date, Allocation_Date_Wdemanded, Days
FROM (
  SELECT d.R_ID, d.Name,a.W_Name, d.Date AS Application_Date, d.Date_Wdemanded, a.Date AS Allocation_Date, a.Date_Wdemanded AS Allocation_Date_Wdemanded,   d.Days
  FROM demandcsv d
  INNER JOIN allocationcsv a ON d.SNo = a.SNo
) AS joined_data;