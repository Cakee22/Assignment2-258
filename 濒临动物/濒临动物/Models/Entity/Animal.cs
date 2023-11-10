using System.ComponentModel.DataAnnotations.Schema;

namespace 濒临动物.Models.Entity
{
    [Table("T_Animal")]
	public class Animal
	{
        public int Id { get; set; }
        public string Name { get; set; }
        public string Desc { get; set; }
        public string Action { get; set; }
        public string WeDo { get; set; }
    }
}
