using System.Diagnostics;
using System.Net.WebSockets;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NonFactorGrid.Models;

namespace NonFactorGrid.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly MyCompanyContext _context;
        public HomeController(ILogger<HomeController> logger, MyCompanyContext context)
        {
            _logger = logger;
            _context = context;
        }

        [HttpGet]
        public IActionResult Privacy()
        {
            var result = GetDetails();
            return View(result);
        }

        public IActionResult Index(int? pageNumber, string SortOrder)
        {
            int pageSize = 20;
            ViewBag.PageNumber = pageNumber.HasValue ? pageNumber : 1;
            ViewBag.EmployeeId = string.IsNullOrEmpty(SortOrder) ? "EmployeeId desc" : "";
            ViewBag.FirstName = SortOrder == "FirstName" ? "FirstName desc" : "FirstName";
            ViewBag.LastName = SortOrder == "LastName" ? "LastName desc" : "LastName";
            ViewBag.Address = SortOrder == "Address" ? "Address desc" : "Address";
            ViewBag.City = SortOrder == "City" ? "City desc" : "City";
            ViewBag.State = SortOrder == "State" ? "State desc" : "State";
            ViewBag.Country = SortOrder == "Country" ? "Country desc" : "Country";

            if (SortOrder == "EmployeeId desc")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderByDescending(x => x.EmployeeId).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "FirstName desc")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderByDescending(x => x.FirstName).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "FirstName")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderBy(x => x.FirstName).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "LastName desc")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderByDescending(x => x.LastName).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "LastName")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderBy(x => x.LastName).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "Address desc")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderByDescending(x => x.Address).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "Address")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderBy(x => x.Address).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "City desc")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderBy(x => x.City).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "City")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderByDescending(x => x.City).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "State desc")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderByDescending(x => x.State).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "State")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderBy(x => x.State).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "Country desc")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderByDescending(x => x.Country).ToList(), pageNumber ?? 1, pageSize));

            }
            else if (SortOrder == "Country")
            {
                return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderBy(x => x.Country).ToList(), pageNumber ?? 1, pageSize));

            }

            return View(PaginatedList<Employee>.Create(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).ToList(), pageNumber ?? 1, pageSize));
        }


        public List<Employee> GetDetails()
        {
            var result =new List<Employee>();
 
            result =_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).OrderBy(x => x.EmployeeId).ToList();
            return result;
        }
        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
