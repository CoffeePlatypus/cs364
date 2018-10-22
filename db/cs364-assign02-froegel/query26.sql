/*******************************************************************************
List the Firstname,lastname,and title of each employee,as well as the Firstname,
lastname, and title of their supervisor; employees without supervisors should
have NULLfor their supervisor values. Alias only the columns for the
supervisor to SuperFirst,SuperLast,and SuperTitle;columns should be ordered as
FirstName,LastName,Title,SuperFirst,SuperLast,and SuperTitle
********************************************************************************/
SELECT e.FirstName, e.LastName, e.Title, s.FirstName, s.LastName, s.Title
  FROM Employee AS e LEFT JOIN Employee AS s
    ON e.ReportsTo = s.EmployeeID;
