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
using System.Windows.Shapes;
using Diplom.View.Admin.The_common_window.Pages;
using Diplom.ViewModels;
using Diplom.ViewModels.Admin;

namespace Diplom.View.Admin.The_common_window
{
    /// <summary>
    /// Логика взаимодействия для The_common_window.xaml
    /// </summary>
    public partial class The_common_window : Window
    {
        public The_common_window()
        {
            InitializeComponent();

            DataContext = new AdminFormViewModels(MainFrame);
        }
    }
}
