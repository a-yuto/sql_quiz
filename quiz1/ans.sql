# The compile wont go through
UPDATE Absenteeism AS A1 SET A1.severity_points = 0 WHERE EXISTS ( SELECT *  FROM Absenteeism AS A2 WHERE A1.emp_id = A2.emp_id AND A1.absent_date = (A2.absent_date + INTERVAL '1' DAY) );

