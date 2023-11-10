using System.ComponentModel.DataAnnotations.Schema;

namespace 濒临动物.Models.Entity
{
    [Table("T_Slogan")]
    public class Slogan
    {

        public int Id { get; set; }
        public string Content { get; set; }
    }
}
