using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Diplom.Model.Entity
{
    [Table("Путешествия")]
    public class Tour
    {
        [Key]
        [Column("ПутешествиеId")]
        public int Id { get; set; }


        [Column("Название")]
        public string Название { get; set; } = string.Empty;

        [Column("Описание")]
        public string Описание { get; set; } = string.Empty;

        [Column("Цена")]
        public decimal Цена {  get; set; } = decimal.Zero;

        [Column("ДлительностьДней")]
        public int ДлительностьДней {  get; set; }
    }
}
