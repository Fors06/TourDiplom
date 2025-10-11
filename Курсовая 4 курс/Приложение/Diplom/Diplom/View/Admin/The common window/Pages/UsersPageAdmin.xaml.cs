using System.Windows.Controls;
using Diplom.ViewModel.Admin.PagesAdminViewModels;

namespace Diplom.View.Admin.The_common_window.Pages
{
    /// <summary>
    /// Логика взаимодействия для Users.xaml
    /// </summary>
    public partial class UsersPageAdmin : Page
    {
        public UsersPageAdmin()
        {
            InitializeComponent();

            DataContext = new UsersPageAdminViewModel();
        }
    } 
}
