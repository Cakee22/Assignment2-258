using Microsoft.EntityFrameworkCore;
using System.Runtime.CompilerServices;
using 濒临动物.Models.DAL;
using 濒临动物.Models.Entity;

namespace 濒临动物.Models.ViewModel
{
    public class HomeIndexData
    {
        private readonly MyDbContext ctx;

        public string? Slogan { get; set; }
        public IEnumerable<news> NewsList { get; set; }
        public IEnumerable<WorkArea> WorkAreaList { get; set; }

        public HomeIndexData()
        {
            this.ctx = new MyDbContext();
            this.Slogan = ctx.Slogan.FirstOrDefault()?.Content;
            this.NewsList = ctx.News.Take(3).ToList();
            this.WorkAreaList = ctx.WorkArea.Include(w => w.Types).ToList();
        }

    }
}
