using System;
using System.Collections.Generic;

namespace NonFactorGrid.Models;

public partial class Employee
{
    public int EmployeeId { get; set; }

    public string FirstName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public string Address { get; set; } = null!;

    public string City { get; set; } = null!;

    public string State { get; set; } = null!;

    public string Country { get; set; } = null!;

    public int JobTitleId { get; set; }

    public int DepartmentId { get; set; }

    public int ManagerId { get; set; }

    public virtual Department Department { get; set; } = null!;

    public virtual JobTitle JobTitle { get; set; } = null!;

    public virtual Manager Manager { get; set; } = null!;
}
