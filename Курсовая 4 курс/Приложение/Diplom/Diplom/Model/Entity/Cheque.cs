using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Diplom.Model.Entity
{
    [Table("Чеки")]
    public class Cheque
    {
        [Key]
        [Column("ЧекId")]
        public int ЧекId { get; set; }

        [Column("БронированиеId")]
        public int БронированиеId { get; set; }

        [Column("ДатаОплаты")]
        public DateTime ДатаОплаты {  get; set; }

        [Column("Сумма")]
        public decimal Сумма {  get; set; }

        [Column("МетодОплаты")]
        public string МетодОплаты { get; set; } = string.Empty;

        [ForeignKey("БронированиеId")]
        public virtual Booking Bookings {  get; set; }
    }
}
