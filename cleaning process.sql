-- cleaning process
-- CREATE TABLE students_financial_aid_cleaned 
-- LIKE students_financial_aid;
INSERT INTO students_financial_aid_cleaned
SELECT * FROM students_financial_aid;
-- ... Check for duplicates using ROW_NUMBER()
SELECT * , ROW_NUMBER()  OVER ( 
PARTITION BY student_id,full_name ,dob,email ,amount_allocated,disbursed_date,'status' )
AS row_num 
FROM students_financial_aid_cleaned ;

-- 2. Remove duplicate records, keeping the first occurrence
WITH duplicate_cde AS
(SELECT * , ROW_NUMBER()  OVER ( 
PARTITION BY student_id,full_name ,dob,email ,amount_allocated,disbursed_date,'status' )
AS row_num 
FROM students_financial_aid_cleaned 
)
DELETE
 FROM duplicate_cde
WHERE row_num >1
;

