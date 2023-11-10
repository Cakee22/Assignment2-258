using Microsoft.AspNetCore.Mvc;
using 濒临动物.Models.ViewModel;

namespace 濒临动物.Controllers
{
	public class AboutController : Controller
	{
		public IActionResult Index()
		{
			var about = new AboutIndexData();
			return View(about);
		}
	}
}
