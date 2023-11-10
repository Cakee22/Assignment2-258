using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace 濒临动物.Migrations
{
    /// <inheritdoc />
    public partial class slogan : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_Slogan",
                table: "Slogan");

            migrationBuilder.RenameTable(
                name: "Slogan",
                newName: "T_Slogan");

            migrationBuilder.RenameColumn(
                name: "content",
                table: "T_Slogan",
                newName: "Content");

            migrationBuilder.RenameColumn(
                name: "id",
                table: "T_Slogan",
                newName: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_T_Slogan",
                table: "T_Slogan",
                column: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_T_Slogan",
                table: "T_Slogan");

            migrationBuilder.RenameTable(
                name: "T_Slogan",
                newName: "Slogan");

            migrationBuilder.RenameColumn(
                name: "Content",
                table: "Slogan",
                newName: "content");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Slogan",
                newName: "id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Slogan",
                table: "Slogan",
                column: "id");
        }
    }
}
