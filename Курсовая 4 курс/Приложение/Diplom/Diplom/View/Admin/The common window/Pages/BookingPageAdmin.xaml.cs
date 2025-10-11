using Diplom.Model.User;
using Diplom.ViewModel.Admin.PagesAdminViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Diplom.View.Admin.The_common_window.Pages
{
    /// <summary>
    /// Логика взаимодействия для BookingPageAdmin.xaml
    /// </summary>
    public partial class BookingPageAdmin : Page
    {
        public BookingPageAdmin()
        {
            InitializeComponent();
            DataContext = new BookingPageAdminViewModel();
        }
    }
}
