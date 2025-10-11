﻿using Diplom.Model.User;
using System.ComponentModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using Diplom.View.Admin.The_common_window.Pages;

namespace Diplom.ViewModels.Admin
{
    public class AdminFormViewModels : INotifyPropertyChanged
    {
        private Frame mainFrame; // Основной фрейм для навигации

        // Команда перехода на главную страницу
        public ICommand GoToHomeCommand { get; }

        // Команда перехода на страницу пользователей
        public ICommand GoToUsersCommand { get; }

        // Команда перехода на страницу настроек
        public ICommand GoToSettingsCommand { get; }

        public ICommand GoToBookingCommand { get; }

        // Команда перехода на страницу заказов
        public ICommand GoToSrviseCommand { get; }

        // Команда выхода из программы
        public ICommand ExitApplicationCommand { get; }

       

        // Конструктор
        public AdminFormViewModels(Frame frame)
        {
            mainFrame = frame;

            GoToHomeCommand = new RelayCommand(OnGoToHome);
            GoToUsersCommand = new RelayCommand(OnGoToUsers);
            GoToSettingsCommand = new RelayCommand(OnGoToSettings);
            ExitApplicationCommand = new RelayCommand(OnExitApplication);
            GoToSrviseCommand = new RelayCommand(GoToSrvise);
            GoToBookingCommand = new RelayCommand(OnGoToBooking);

            OnGoToHome(null);
        }

        // Переход на главную страницу
        private void OnGoToHome(object obj)
        {
            mainFrame.Navigate(new MainPageAdmin(CurrentUserInfo.LoggedInUser));
        }

        // Переход на страницу пользователей
        private void OnGoToUsers(object obj)
        {
            mainFrame.Navigate(new UsersPageAdmin());
        }

        private void GoToSrvise(object obj)
        {
            mainFrame.Navigate(new ToursPageAdmin());
        }

        private void OnGoToBooking(object obj)
        {
            mainFrame.Navigate(new BookingPageAdmin());
        }

        // Переход на страницу настроек
        private void OnGoToSettings(object obj)
        {
            mainFrame.Navigate(new SettingsPageAdmin());
        }

        // Выход из приложения
        private void OnExitApplication(object obj)
        {
            //var currentWindow = App.Current.MainWindow as Window ?? Window.GetWindow(obj as DependencyObject);

            //// Создаем новое окно Employee
            //ClientWindow employeeWindow = new ClientWindow();

            //// Назначаем новое окно главным окном приложения
            //Application.Current.MainWindow = employeeWindow;

            //employeeWindow.Show();

            //currentWindow.Close();

        }

        // Реализация уведомлений об изменениях свойств
        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

