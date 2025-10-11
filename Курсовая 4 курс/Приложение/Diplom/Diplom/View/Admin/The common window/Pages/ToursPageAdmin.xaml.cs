
using Diplom.ViewModel.Admin.PagesAdminViewModels;
using System.Windows.Controls;

namespace Diplom.View.Admin.The_common_window.Pages
{
    /// <summary>
    /// Логика взаимодействия для ServisePageAdmin.xaml
    /// </summary>
    public partial class ToursPageAdmin : Page
    {
        public ToursPageAdmin()
        {
            InitializeComponent(); 

            DataContext = new ToursPageViewModel();
        }
    }
}
