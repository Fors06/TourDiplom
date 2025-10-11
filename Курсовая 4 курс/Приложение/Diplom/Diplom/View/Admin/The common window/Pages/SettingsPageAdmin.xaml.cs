﻿using System;
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
using Diplom.ViewModel.Admin.PagesAdminViewModels;

namespace Diplom.View.Admin.The_common_window.Pages
{
    /// <summary>
    /// Логика взаимодействия для SettingsPageAdmin.xaml
    /// </summary>
    public partial class SettingsPageAdmin : Page
    {
        private SettingsPageAdminViewModel viewModel;
        public SettingsPageAdmin()
        {
            InitializeComponent();
            viewModel = new SettingsPageAdminViewModel();
            DataContext = viewModel;
        }
    }
}
