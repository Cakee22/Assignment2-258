using Microsoft.AspNetCore.Mvc;
using 濒临动物.Models.DAL;

namespace 濒临动物.Controllers
{
	public class DetailsController : Controller
	{
		private readonly MyDbContext ctx;
        public DetailsController(MyDbContext ctx)
        {
            this.ctx = ctx;
        }
        public IActionResult Index(int id)
		{
			var animal = ctx.Animals.Where(a=>a.Id== id).FirstOrDefault();
			return View(animal);
		}
	}
}
