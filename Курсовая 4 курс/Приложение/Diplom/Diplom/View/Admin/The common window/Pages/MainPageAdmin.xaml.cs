
using Diplom.Model.User;
using System.Windows.Controls;
using static System.Runtime.InteropServices.JavaScript.JSType;
using Diplom.ViewModel.Admin.PagesAdminViewModels;


namespace Diplom.View.Admin.The_common_window.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainPageAdmi.xaml
    /// </summary>
    public partial class MainPageAdmin : Page
    {
        private UserProfile _profile;

        public MainPageAdmin(UserProfile profile)
        {
            InitializeComponent();
            _profile = profile;
            DataContext = new MainPageAdminViewModel(profile);
        }

    }
}
