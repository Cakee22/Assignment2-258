using System.Security.Cryptography;
using 濒临动物.Models.DAL;
using 濒临动物.Models.Entity;

namespace 濒临动物.Models.ViewModel
{
	public class SearchIndexData
	{
		private readonly MyDbContext ctx;
		public IEnumerable<news> NewsList { get; set; }
		public SearchIndexData()
		{
			this.ctx = new MyDbContext();
			this.NewsList = new List<news>();
		}

		public void SearchNews(string text)
		{
			if (text == null)
			{
				NewsList = ctx.News.Take(3).ToList();
				return;
			}
			NewsList =  ctx.News.Where(n => n.title.Contains(text)).Take(3).ToList();
		}

		public void PrviousList(int currentIdx, string text)
		{
			if (text != null)
			{
				NewsList = ctx.News.Where(n => n.title.Contains(text)).Skip((currentIdx - 2) * 3).Take(3).ToList();
				return;
			}
			NewsList =  ctx.News.Skip((currentIdx - 2) * 3).Take(3).ToList();
		}

		public void NextList(int currentIdx, string text)
		{
			if (text != null)
			{
				NewsList =  ctx.News.Where(n => n.title.Contains(text)).Skip((currentIdx ) * 3).Take(3).ToList();
				return;
			}
			var list = ctx.News.Skip((currentIdx ) * 3).Take(3).ToList();
			NewsList =  ctx.News.Skip((currentIdx) * 3).Take(3).ToList();
		}

		public void Sort(int mode, string text,int currentIdx)
		{
			IEnumerable<news> query=ctx.News.AsQueryable();
			if (mode == 0)
			{

				query =query.OrderBy(o => o.putTime);
			}

			if (text != null)
			{
				NewsList = query.Where(n => n.title.Contains(text)).Skip(currentIdx*3).Take(3).ToList();
				return;
			}

			NewsList = query.Skip(currentIdx * 3).Take(3).ToList();

		}
	}
}
