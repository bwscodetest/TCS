CREATE PROC GetEmployee
AS
BEGIN
	SELECT e.EmployeeId,e.FirstName,e.LastName,e.[Address],e.City,s.[State],c.Country,t.JobTitle,d.Department,m.ManagerFirstName,m.ManagerLastName
	from dbo.Employee e
	JOIN dbo.JobTitle t ON t.JobTitleId = e.JobTitleId
	JOIN dbo.Department d ON d.DepartmentId = e.DepartmentID
	JOIN dbo.EmployeeManager em ON em.EmployeeId = e.EmployeeId
	JOIN dbo.Manager m ON m.ManagerId = em.ManagerId
	JOIN dbo.StateCountry sc ON sc.StateCountryId = e.StateCountryId
	JOIN dbo.[State] s ON s.StateId = sc.StateId
	JOIN dbo.Country c ON c.CountryId = sc.CountryId
END

GO