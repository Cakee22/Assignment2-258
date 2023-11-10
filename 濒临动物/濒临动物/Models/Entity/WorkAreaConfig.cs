using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace 濒临动物.Models.Entity
{
    public class WorkAreaConfig : IEntityTypeConfiguration<WorkArea>
    {
        public void Configure(EntityTypeBuilder<WorkArea> builder)
        {
            builder.ToTable("T_WorkArea");

            builder.HasMany<AreaType>(a => a.Types).WithOne(w => w.Area).IsRequired();
        }
    }
}
