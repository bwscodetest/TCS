using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TCS_DemoProject.Models;

namespace TCS_DemoProject.Controllers
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
        public IActionResult Index(int? pageNumber)
        { 
            int pageSize = 20;
			return  View(PaginatedList<Employee>.Create(_context.Employees.ToList(), pageNumber ?? 1 , pageSize));
		}

        [HttpGet]
        public IActionResult Privacy()
        {
            return View(_context.Employees.Include(p => p.Manager).Include(j => j.JobTitle).Include(d => d.Department).ToList());
        }
    

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
