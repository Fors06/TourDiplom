using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Diplom.Model.Entity
{
    [Table("Отзывы")]
    public class Reviews
    {
        [Key]
        [Column("ОтзывId")]
        public int ОтзывId { get; set; }

        [Column("КлиентId")]
        public int КлиентId { get; set; }

        [Column("ПутешествиеId")]
        public int ПутешествиеId { get; set; }

        [Column("Оценка")]
        public SByte Оценка {  get; set; }

        [Column("Комментарий")]
        public string Комментарий {  get; set; } = string.Empty;

        [ForeignKey("КлиентId")]
        public virtual Client Clients { get; set; }

        [ForeignKey("ПутешествиеId")]
        public virtual Tour Tours { get; set; }
    }
}
