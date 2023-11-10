using 濒临动物.Models.DAL;
using 濒临动物.Models.Entity;

namespace 濒临动物.Models.ViewModel
{
	public class AboutIndexData
	{
        private readonly MyDbContext ctx;

        public Slogan Slogan1 { get; set; }
        public Slogan Slogan2 { get; set; }
        public Slogan Slogan3 { get; set; }
        public string Viedeo { get; set; }

        public AboutIndexData()
        {
            ctx = new MyDbContext();
            var slogans = ctx.Slogan.Skip(1).Take(3).ToList();
            Slogan1= slogans[0];
            Slogan2= slogans[1];
            Slogan3= slogans[2];
        }
    }
}
