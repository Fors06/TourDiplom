using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Diplom.Model.Entity
{
    [Table("Бронирование")]
    public class Booking
    {
        [Key]
        [Column("БронированиеId")]
        public int БронированиеId { get; set; }

        [Column("КлиентId")]
        public int КлиентId { get; set; }

        [Column("ПутешествиеId")]
        public int ПутешествиеId { get; set; }

        [Column("ДатаНачала")]
        public DateOnly ДатаНачала {  get; set; }

        [Column("ДатаОкончания")]
        public DateOnly ДатаОкончания {  get; set; }

        [ForeignKey("КлиентId")]
        public virtual Client Clients { get; set; }

        [ForeignKey("ПутешествиеId")]
        public virtual Tour Tours { get; set; }
    }
}
