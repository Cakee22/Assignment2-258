using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using 濒临动物.Models;
using 濒临动物.Models.DAL;
using 濒临动物.Models.ViewModel;

namespace 濒临动物.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View(new HomeIndexData());
        }

        [HttpGet]
        public void Search(string text)
        {
            Redirect("/Search/Index");
        }
    }
}