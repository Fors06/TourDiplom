using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Diplom.Model.Entity
{
    [Table("Сотрудники")]
    public class Employee
    {
        [Key]
        [Column("СотрудникId")]
        public int Id { get; set; }

        [Column("Должность")]
        public string Должность { get; set; } = String.Empty;

        [Column("ДатаПриема")]
        public DateTime ДатаПриема {  get; set; }

        [Column("ПользовательId")]
        public int ПользовательId { get; set; }

        [ForeignKey("ПользовательId")] 
        public virtual Users Users { get; set; }
    }
}
