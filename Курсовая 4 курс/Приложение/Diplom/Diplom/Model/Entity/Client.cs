using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Diplom.Model.Entity
{
    [Table("Клиенты")]
    public class Client
    {
        [Key]
        [Column("КлиентId")]
        public int Id { get; set; }
        [Column("ПользовательId")]
        public int? ПользовательId { get; set; }

        [ForeignKey("ПользовательId")] 
        public virtual Users Users { get; set; }


    }
}
