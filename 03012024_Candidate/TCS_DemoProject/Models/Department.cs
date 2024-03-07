using System;
using System.Collections.Generic;

namespace NonFactorGrid.Models;

public partial class Department
{
    public int DepartmentId { get; set; }

    public string Department1 { get; set; } = null!;

    public virtual ICollection<Employee> Employees { get; set; } = new List<Employee>();
}
