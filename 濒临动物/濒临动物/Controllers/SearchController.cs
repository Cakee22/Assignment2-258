using Microsoft.AspNetCore.Mvc;
using System.Text.Json.Serialization.Metadata;
using 濒临动物.Models.ViewModel;

namespace 濒临动物.Controllers
{
	public class SearchController : Controller
	{
		static string sText;
		public IActionResult Index(string text)
		{
			sText = text;
			//var d = new SearchIndexData();
			//d.SearchNews(text);
			return View();

			//return View();
			//return View();
		}

		public IActionResult LoadNews()
		{
			var d = new SearchIndexData();
			d.SearchNews(sText);
			return Ok(d.NewsList);

			//return View();
			//return View();
		}

		public IActionResult Previous(int currentIdx) 
		{
			var d = new SearchIndexData();
			d.PrviousList(currentIdx,sText);
			return Ok(d.NewsList);
		}

		public IActionResult Next(int currentIdx)
		{

			var d = new SearchIndexData();
			d.NextList(currentIdx, sText);
			return Ok(d.NewsList);

		}

		public IActionResult Sort(int mode,int currentIdx)
		{
			//List<int> nums = new List<int>() { 1,3,4,1,6,98,4,8};
			//nums = nums.OrderBy(x => x).ToList();
			//ViewBag.li = nums;
			//return View("Index");
			////return View("Index",nums);
			var d = new SearchIndexData();
			d.Sort(mode,sText, currentIdx);
			return Ok(d.NewsList);

		}

	}
}
