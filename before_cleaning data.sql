-- CREATE A TABLE FOR STUDENTS FINANCIAL AID TABLE

-- Create the table
CREATE TABLE students_financial_aid (
    student_id INT,
    full_name VARCHAR(100),
    dob DATE,
    email VARCHAR(100),
    amount_allocated DECIMAL(10,2),
    disbursed_date DATE,
    status VARCHAR(20)
);

-- Insert sample data (before cleaning)
INSERT INTO students_financial_aid (student_id, full_name, dob, email, amount_allocated, disbursed_date, status)
VALUES
    (101, 'John Doe', '2001-05-10', 'johndoe@gmail', 15000, '2024-01-15', 'Active'),
    (102, 'Sarah Smith', '2000-08-21', 'sarah_smith@xyz.com', NULL, '2024-02-10', 'Pending'),
    (103, 'Alex Johnson', '1999-12-30', 'alex@outlook.com', 12000, '2023-12-20', 'Active'),
    (101, 'John Doe', '2001-05-10', 'johndoe@gmail', 15000, '2024-01-15', 'Active'), -- Duplicate Entry
    (105, 'Mike$ Brown', '1998-07-14', 'mikebrown@mail.com', 11000, NULL, NULL);
