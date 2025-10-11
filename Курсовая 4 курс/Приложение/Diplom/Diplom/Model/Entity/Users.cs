using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Diplom.Model.Entity
{
    [Table("Пользователи")]
    public class Users
    {
        [Key]
        [Column ("ПользовательId")]
        public int Id { get; set; }

        [Column("Имя")]
        public string Имя { get; set; } = string.Empty;

        [Column("Фамилия")]
        public string Фамилия { get; set; } = string.Empty;

        [Column("Отчество")]
        public string Отчество {  get; set; } = string.Empty;

        [Column("ПарольХеш")]
        public string Пароль {  get; set; } = string.Empty;

        [Column("Роль")]
        public string Роль { get; set; } = string.Empty;

        [Column("ЭлПочта")]
        public string Email {  get; set; } = string.Empty;

        [Column("СерияИНомерПаспорта")]
        public string Паспорт {  get; set; } = string.Empty;

        [Column("Телефон")]
        public string Телефон { get; set; } = string.Empty;

        public string ФИО => $"{Фамилия} {Имя}";
    }
}
