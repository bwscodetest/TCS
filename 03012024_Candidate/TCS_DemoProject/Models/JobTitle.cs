using System;
using System.Collections.Generic;

namespace TCS_DemoProject.Models;

public partial class JobTitle
{
    public int JobTitleId { get; set; }

    public string JobTitle1 { get; set; } = null!;

    public virtual ICollection<Employee> Employees { get; set; } = new List<Employee>();
}
