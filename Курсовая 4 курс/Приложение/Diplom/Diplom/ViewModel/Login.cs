using Diplom.Model.Entity;
using Diplom.Model.User;
using Diplom.View.Admin.The_common_window;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel;
using System.Windows;
using System.Windows.Input;

namespace Diplom.ViewModel
{
    public class Login : INotifyPropertyChanged
    {
            public int userName;

            private string _username;
            private string _password;

            public string Username
            {
                get => _username;
                set
                {
                    if (_username != value)
                    {
                        _username = value;
                        OnPropertyChanged(nameof(Username));
                    }
                }
            }

            public string Password
            {
                get => _password;
                set
                {
                    if (_password != value)
                    {
                        _password = value;
                        OnPropertyChanged(nameof(Password));
                    }
                }
            }

            public ICommand LoginCommand { get; }
            public ICommand EnterKeyCommand { get; }
            public ICommand GoToEntranceCommand { get; }

            public Login()
            {
                LoginCommand = new RelayCommand(LoginExecute);
                EnterKeyCommand = new RelayCommand(LoginExecute);
                GoToEntranceCommand = new RelayCommand(GoToEntrance);
            }

            public static int LoggedInUserId { get; set; } // Публичное свойство для сохранения идентификатора

            public async void LoginExecute(object obj)
            {
                if (string.IsNullOrEmpty(Username) || string.IsNullOrEmpty(Password))
                {
                    MessageBox.Show("Пожалуйста, введите имя пользователя и пароль.", "Ошибка авторизации");
                    return;
                }

                using (var dbContext = new ApplicationContext())
                {
                    Users user = await dbContext.users.FirstOrDefaultAsync(u => u.Email == Username && u.Пароль == Password);

                    if (user != null)
                    {
                        // Проводим проверку роли и уровня доступа
                        if (user.Роль == "Администратор")
                        {
                        // Формируем профиль пользователя
                        CurrentUserInfo.LoggedInUser = new UserProfile
                        {
                            FirstName = user.Имя,
                            LastName = user.Фамилия,
                            Email = user.Email,
                            PhoneNumber = user.Телефон,
                            Role = user.Роль
                        };



                        var currentWindow = App.Current.MainWindow as Window ?? Window.GetWindow(obj as DependencyObject);

                        // Создаем новое окно Employee
                        The_common_window employeeWindow = new The_common_window();

                        // Назначаем новое окно главным окном приложения
                        Application.Current.MainWindow = employeeWindow;

                        employeeWindow.Show();

                        currentWindow.Close();

                    }
                        else if (user.Роль == "сотрудник")
                        {

                            // Получить текущее окно 
                            var currentWindow = App.Current.MainWindow as Window ?? Window.GetWindow(obj as DependencyObject);

                            The_common_window employeeWindow = new The_common_window();

                            // Назначаем новое окно главным окном приложения
                            Application.Current.MainWindow = employeeWindow;

                            employeeWindow.Show();

                            currentWindow.Close();
                        }
                        else
                        {
                            MessageBox.Show("Пользователь не имеет прав доступа.", "Ошибка авторизации", MessageBoxButton.OK, MessageBoxImage.Warning);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Неверные данные для входа.", "Ошибка авторизации", MessageBoxButton.OK, MessageBoxImage.Warning);
                    }
                }
            }

            private void GoToEntrance(object obj)
            {
                //var currentWindow = App.Current.MainWindow as Window ?? Window.GetWindow(obj as DependencyObject);

                //ClientWindow clientWindow = new ClientWindow();

                //Application.Current.MainWindow = clientWindow;

                //clientWindow.Show();

                //currentWindow.Close();
            }

            public event PropertyChangedEventHandler PropertyChanged;
            protected virtual void OnPropertyChanged(string propertyName)
            {
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            }
        }
    }
