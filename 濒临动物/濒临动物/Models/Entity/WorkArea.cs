namespace 濒临动物.Models.Entity
{
    public class WorkArea
    {
        public int Id { get; set; }
        public string Area { get; set; }
        public List<AreaType> Types { get; set; }
    }
}
