using Diplom.Model.Entity;
using Diplom.Model.Repository;
using Diplom.Model.Repository.Abstraction;
using Microsoft.EntityFrameworkCore;
using RequestDataAccess.Repository;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Diplom.ViewModel.Admin.PagesAdminViewModels
{
    public class UsersPageAdminViewModel : INotifyPropertyChanged
    {
        // Сервис для работы с базой данных
        private readonly ApplicationContext _context;
        private readonly IRepository<Client> _clientRepository;
        private readonly IRepository<Employee> _employeeRepository;
        private readonly IRepository<Users> _userRepository;

        // Коллекции
        public ObservableCollection<Client> Clients { get; set; } = new ObservableCollection<Client>();
        public ObservableCollection<Employee> Employees { get; set; } = new ObservableCollection<Employee>();

        // Список возможных должностей
        public IEnumerable<string> Ranges { get; } = new[] { "менеджер", "администратор" };

        #region Поля

        private object _activeTab;
        public object ActiveTab
        {
            get => _activeTab;
            set
            {
                if (_activeTab != value)
                {
                    _activeTab = value;
                    OnPropertyChanged(nameof(ActiveTab));

                }
            }
        }

        // Свойство выбранного положения
        private string _selectedPosition;
        public string SelectedPosition
        {
            get => _selectedPosition;
            set
            {
                _selectedPosition = value;
                OnPropertyChanged(nameof(SelectedPosition));
            }
        }

        // Поля формы ввода для клиентов
        private string _ClientLastName;
        public string ClientLastName
        {
            get => _ClientLastName;
            set
            {
                _ClientLastName = value;
                OnPropertyChanged(nameof(ClientLastName));
            }
        }

        private string _ClientFirstName;
        public string ClientFirstName
        {
            get => _ClientFirstName;
            set
            {
                _ClientFirstName = value;
                OnPropertyChanged(nameof(ClientFirstName));
            }
        }

        private string _ClientMiddleName;
        public string ClientMiddleName
        {
            get => _ClientMiddleName;
            set
            {
                _ClientMiddleName = value;
                OnPropertyChanged(nameof(ClientMiddleName));
            }
        }

        private string _ClientPhoneNumber;
        public string ClientPhoneNumber
        {
            get => _ClientPhoneNumber;
            set
            {
                _ClientPhoneNumber = value;
                OnPropertyChanged(nameof(ClientPhoneNumber));
            }
        }

        private string _ClientEmail;
        public string ClientEmail
        {
            get => _ClientEmail;
            set
            {
                _ClientEmail = value;
                OnPropertyChanged(nameof(ClientEmail));
            }
        }

        // Поля формы ввода для сотрудников
        private string _EmployeeLastName;
        public string EmployeeLastName
        {
            get => _EmployeeLastName;
            set
            {
                _EmployeeLastName = value;
                OnPropertyChanged(nameof(EmployeeLastName));
            }
        }

        private string _EmployeeFirstName;
        public string EmployeeFirstName
        {
            get => _EmployeeFirstName;
            set
            {
                _EmployeeFirstName = value;
                OnPropertyChanged(nameof(EmployeeFirstName));
            }
        }

        private string _EmployeeMiddleName;
        public string EmployeeMiddleName
        {
            get => _EmployeeMiddleName;
            set
            {
                _EmployeeMiddleName = value;
                OnPropertyChanged(nameof(EmployeeMiddleName));
            }
        }

        private string _EmployeePhoneNumber;
        public string EmployeePhoneNumber
        {
            get => _EmployeePhoneNumber;
            set
            {
                _EmployeePhoneNumber = value;
                OnPropertyChanged(nameof(EmployeePhoneNumber));
            }
        }

        private string _EmployeeEmail;
        public string EmployeeEmail
        {
            get => _EmployeeEmail;
            set
            {
                _EmployeeEmail = value;
                OnPropertyChanged(nameof(EmployeeEmail));
            }
        }

        private string _EmployeesPosition;
        public string EmployeeloyeesPosition
        {
            get => _EmployeesPosition;
            set
            {
                _EmployeesPosition = value;
                OnPropertyChanged(nameof(EmployeeloyeesPosition));
            }
        }

        private string _EmployeeCondition;
        public string EmployeesCondition
        {
            get => _EmployeeCondition;
            set
            {
                _EmployeeCondition = value;
                OnPropertyChanged(nameof(EmployeesCondition));
            }
        }

        private string _Passwod;
        public string Passwod
        {
            get => _Passwod;
            set
            {
                _Passwod = value;
                OnPropertyChanged(nameof(Passwod));
            }
        }

        private string _passportInfo;

        public string PassportInfo
        {
            get => _passportInfo;
            set
            {
                if (_passportInfo != value)
                {
                    _passportInfo = FormatPassport(value);
                    OnPropertyChanged(nameof(PassportInfo));
                }
            }
        }

        // Текущие выбранные клиенты и сотрудники
        private Client _selectedClient;
        public Client SelectedClient
        {
            get => _selectedClient;
            set
            {
                _selectedClient = value;
                OnPropertyChanged(nameof(SelectedClient));

                ClientFirstName = _selectedClient?.Users.Имя ?? String.Empty;
                ClientLastName = _selectedClient?.Users.Фамилия ?? String.Empty;
                ClientMiddleName = _selectedClient?.Users.Отчество ?? String.Empty;
                ClientPhoneNumber = _selectedClient?.Users.Телефон ?? String.Empty;
                Passwod = _selectedClient?.Users.Пароль ?? String.Empty;
                ClientEmail = _selectedClient?.Users.Email ?? String.Empty;
                PassportInfo = _selectedClient?.Users.Паспорт ?? String.Empty;

            }
        }

        private Employee _selectedEmployee;
        public Employee SelectedEmployee
        {
            get => _selectedEmployee;
            set
            {
                _selectedEmployee = value;
                OnPropertyChanged(nameof(SelectedEmployee));

                EmployeeFirstName = _selectedEmployee?.Users.Имя ?? String.Empty;
                EmployeeLastName = _selectedEmployee?.Users.Фамилия ?? String.Empty;
                EmployeeMiddleName = _selectedEmployee?.Users.Отчество ?? String.Empty;
                EmployeePhoneNumber = _selectedEmployee?.Users.Телефон ?? String.Empty;
                EmployeeEmail = _selectedEmployee?.Users?.Email ?? String.Empty;
                EmployeeloyeesPosition = _selectedEmployee?.Должность ?? String.Empty;
                Passwod = _selectedEmployee?.Users?.Пароль ?? String.Empty;
                PassportInfo = _selectedEmployee?.Users.Паспорт ?? String.Empty;
            }
        }

        #endregion

        public ICommand AddCommand => new RelayCommand(CreateEmployeesAndClients);
        public ICommand ClearCommand => new RelayCommand(ClearFields);
        public ICommand DeleteCommand => new RelayCommand(Delete);
        public ICommand EditCommand => new RelayCommand(Edit);

        // Конструктор ViewModel
        public UsersPageAdminViewModel()
        {
            _context = new ApplicationContext();
            _clientRepository = new Clientepository(_context);
            _employeeRepository = new EmployeeRepository(_context);
            _userRepository = new UsersRepository(_context); ;

            // Загрузим первоначальные данные
            LoadClients();
            LoadEmployees();
        }

        #region Поле паспорта

        private string FormatPassport(string input)
        {
            input = Regex.Replace(input, @"[^0-9]", "");

            if (input.Length > 10)
                input = input.Substring(0, 10);

            if (input.Length >= 4)
                input = $"{input.Substring(0, 4)} {input.Substring(4)}";

            return input;
        }

        #endregion

        #region Поиск

        private string _searchText;

        public string SearchText
        {
            get => _searchText;
            set
            {
                _searchText = value;
                OnPropertyChanged(nameof(SearchText));
                ApplyFilter(); 
            }
        }

        private void ApplyFilter()
        {
            if (!string.IsNullOrEmpty(_searchText))
            {
                if (ActiveTab is TabItem clientTab && clientTab.Header.Equals("Клиенты"))
                {
                    Clients.Clear();
                    foreach (var client in _context.clients.Where(c => c.Users.Фамилия.Contains(_searchText) ||
                                                                       c.Users.Имя.Contains(_searchText) ||
                                                                       c.Users.Отчество.Contains(_searchText) ||
                                                                       c.Users.Телефон.Contains(_searchText)  ||
                                                                       c.Users.Email.Contains(_searchText)    ||
                                                                       c.Users.Паспорт.Contains(_searchText)))
                    {
                        Clients.Add(client);
                    }
                }

                if (ActiveTab is TabItem employeeTab && employeeTab.Header.Equals("Сотрудники"))
                {
                    Employees.Clear();
                    foreach (var employee in _context.employees.Where(e => e.Users.Фамилия.Contains(_searchText) ||
                                                                           e.Users.Имя.Contains(_searchText) ||
                                                                           e.Users.Отчество.Contains(_searchText) ||
                                                                           e.Users.Телефон.Contains(_searchText)  ||
                                                                           e.Users.Email.Contains(_searchText) ||
                                                                           e.Users.Паспорт.Contains(_searchText)  ||
                                                                           e.Должность.Contains(_searchText)))
                    {
                        Employees.Add(employee);
                    }
                }

            }
            else
            {
                LoadClients();

                LoadEmployees();
            }
        }


        #endregion

        #region Загрузка данных
        // Методы для загрузки данных
        private void LoadClients()
        {
            var clientsFromDB = _clientRepository.GetStatusList()
                                 .Include(c => c.Users)
                                 .ToList();

            Clients.Clear();

            foreach (var client in clientsFromDB)
            {
                Clients.Add(client);
            }
        }

        private void LoadEmployees()
        {
            var employeesFromDB = _employeeRepository.GetStatusList()
                                  .Include(e => e.Users)
                                  .ToList();

            Employees.Clear();

            foreach (var employee in employeesFromDB)
            {
                Employees.Add(employee);
            }
        }

        #endregion


        #region Общие кнопки

        #region Очищение полей

        public void ClearFields(object obj)
        {
            if(ActiveTab is TabItem employeeTab && employeeTab.Header.Equals("Сотрудники") && SelectedEmployee != null)
            {
                EmployeeLastName = String.Empty;
                EmployeeFirstName = String.Empty;
                EmployeeMiddleName = String.Empty;
                EmployeeloyeesPosition = null;
                EmployeePhoneNumber = String.Empty;
                EmployeeEmail = String.Empty;
                Passwod = String.Empty;
                EmployeesCondition = null;
                PassportInfo = String.Empty;
            }

            if(ActiveTab is TabItem clientTab && clientTab.Header.Equals("Клиенты") && SelectedClient != null)
            {
                ClientFirstName = String.Empty;
                ClientLastName = String.Empty;
                ClientMiddleName = String.Empty;
                ClientPhoneNumber = String.Empty;
                Passwod = String.Empty;
                ClientEmail = String.Empty;
                PassportInfo = String.Empty;
            }
        }

        #endregion

        #region Добавление

        public void CreateEmployeesAndClients(object obj)
        {
            if (!string.IsNullOrEmpty(ClientFirstName) &&
                  !string.IsNullOrEmpty(ClientLastName) &&
                  !string.IsNullOrEmpty(ClientMiddleName) &&
                  !string.IsNullOrEmpty(ClientPhoneNumber) &&
                  !string.IsNullOrEmpty(ClientEmail) &&
                  !string.IsNullOrEmpty(Passwod) &&
                  !string.IsNullOrEmpty(PassportInfo) &&
                  ActiveTab is TabItem clientTab && clientTab.Header.Equals("Клиенты"))
            {
                // Добавляем пользователя
                var user = new Users
                {
                    Имя = ClientFirstName,
                    Фамилия = ClientLastName,
                    Отчество = ClientMiddleName,
                    Email = ClientEmail,
                    Телефон = ClientPhoneNumber,
                    Пароль = Passwod,
                    Паспорт = PassportInfo,
                    Роль = "Клиент" // Клиент
                };

                _userRepository.Create(user);
                _userRepository.Save();

                // Добавляем клиента
                var client = new Client
                {
                    ПользовательId = user.Id
                };

                _clientRepository.Create(client);
                _clientRepository.Save();

                LoadClients();
            }

            // Добавление сотрудника
            else if (!string.IsNullOrEmpty(EmployeeFirstName) &&
                     !string.IsNullOrEmpty(EmployeeLastName) &&
                     !string.IsNullOrEmpty(EmployeeMiddleName) &&
                     !string.IsNullOrEmpty(EmployeeEmail) &&
                     !string.IsNullOrEmpty(EmployeePhoneNumber) &&
                     !string.IsNullOrEmpty(Passwod) &&
                     !string.IsNullOrEmpty(PassportInfo) &&
                     ActiveTab is TabItem employeeTab && employeeTab.Header.Equals("Сотрудники"))
            {

                // Добавляем пользователя
                var user = new Users
                {
                    Имя = EmployeeFirstName,
                    Фамилия = EmployeeLastName,
                    Отчество = EmployeeMiddleName,
                    Email = EmployeeEmail,
                    Телефон = EmployeePhoneNumber,
                    Пароль = Passwod,
                    Паспорт = PassportInfo,
                    Роль = "Сотрудник" // Сотрудник
                };

                _userRepository.Create(user);
                _userRepository.Save();

                // Добавляем сотрудника
                var employee = new Employee
                {
                    Должность = EmployeeloyeesPosition,
                    ПользовательId = user.Id
                };

                _employeeRepository.Create(employee);
                _employeeRepository.Save();

                LoadEmployees();

            }
            else
            {
                MessageBox.Show("Заполните все поля.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }

            ClearFields(null);

        }


        #endregion

        #region Удаление

        public void Delete(object obj)
        {
            if (SelectedEmployee == null) return;

            if (ActiveTab is TabItem clientTab && clientTab.Header.Equals("Клиенты") && SelectedClient != null)
            {
                try
                {
                    _clientRepository.Delete(SelectedClient.Id);
                    _userRepository.Delete(SelectedClient.Users.Id);

                    _clientRepository.Save();
                    _userRepository.Save();

                    LoadClients();
                    ClearFields(null);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Ошибка при удалении клиента: {ex.Message}");
                }
            }

            else if (ActiveTab is TabItem employeeTab && employeeTab.Header.Equals("Сотрудники") && SelectedEmployee != null)
            {
                try
                {
                    _employeeRepository.Delete(SelectedEmployee.Id);
                    _userRepository.Delete(SelectedEmployee.Users.Id);

                    _employeeRepository.Save();
                    _userRepository.Save();

                    LoadEmployees();
                    ClearFields(null);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Ошибка при удалении сотрудника: {ex.Message}",
                        "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }

        }

        #endregion

        #region Редактирование

        public void Edit(object obj)
        {
            if (SelectedEmployee != null)
            {
                var existingEmployee = SelectedEmployee;

                // Получаем профиль пользователя
                var user = _userRepository.GetStatus(existingEmployee.ПользовательId);
                if (user != null)
                {

                    try
                    {
                        user.Имя = EmployeeFirstName;
                        user.Фамилия = EmployeeLastName;
                        user.Отчество = EmployeeMiddleName;
                        user.Email = EmployeeEmail;
                        user.Телефон = EmployeePhoneNumber;
                        user.Пароль = Passwod;
                        user.Паспорт = PassportInfo;
                        _userRepository.Update(user);
                        _userRepository.Save();

                        // Обновляем профиль сотрудника
                        existingEmployee.Users.Имя = EmployeeFirstName;
                        existingEmployee.Users.Фамилия = EmployeeLastName;
                        existingEmployee.Users.Отчество = EmployeeMiddleName;
                        existingEmployee.Users.Телефон = EmployeePhoneNumber;
                        existingEmployee.Должность = EmployeeloyeesPosition;
                        existingEmployee.Users.Паспорт = PassportInfo;
                        existingEmployee.Users.Пароль = Passwod;

                        _employeeRepository.Update(existingEmployee);
                        _employeeRepository.Save();

                        LoadEmployees(); // Обновляем список сотрудников
                    }
                    catch(Exception ex)
                    {
                        MessageBox.Show($"Такой пользователь существует {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
               
                }

               
            }

            if (SelectedClient != null)
            {
                // Работаем с клиентом аналогичным образом
                var existingClient = SelectedClient;

                // Получаем профиль пользователя
                var user = _userRepository.GetStatus((int)existingClient.ПользовательId);
                if (user != null)
                {
                    try
                    {
                        user.Имя = ClientFirstName;
                        user.Фамилия = ClientLastName;
                        user.Отчество = ClientMiddleName;
                        user.Email = ClientEmail;
                        user.Телефон = ClientPhoneNumber;
                        user.Пароль = Passwod;
                        user.Паспорт = PassportInfo;
                        _userRepository.Update(user);
                        _userRepository.Save();

                        // Обновляем профиль клиента
                        existingClient.Users.Имя = ClientFirstName;
                        existingClient.Users.Фамилия = ClientLastName;
                        existingClient.Users.Отчество = ClientMiddleName;
                        existingClient.Users.Телефон = ClientPhoneNumber;

                        _clientRepository.Update(existingClient);
                        _clientRepository.Save();

                        LoadClients(); // Обновляем список клиентов
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($"Такой пользователь существует {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                   
                }

               
            }

            ClearFields(null);
        }

        #endregion

        #endregion

        public event PropertyChangedEventHandler? PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }
}
