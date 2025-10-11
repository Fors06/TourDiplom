using System.Collections.ObjectModel;
using System.ComponentModel;
using Diplom.Model.Entity;
using Diplom.Model.Repository;
using System.Runtime.CompilerServices;
using Diplom.Model.User;
using OxyPlot;
using System.Windows.Input;
using Diplom.Model.Repository.Abstraction;
using RequestDataAccess.Repository;
using Microsoft.EntityFrameworkCore;

namespace Diplom.ViewModel.Admin.PagesAdminViewModels
{
    public class MainPageAdminViewModel
    {


        private readonly ApplicationContext _context;
        private readonly IRepository<Client> _clientRepository;
        private readonly IRepository<Employee> _employeeRepository;
        private readonly IRepository<Users> _usersRepository;

        // Коллекции
        public ObservableCollection<Client> Clients { get; set; } = new ObservableCollection<Client>();
        public ObservableCollection<Employee> Employees { get; set; } = new ObservableCollection<Employee>();

        private UserProfile _profile;

        public UserProfile Profile
        {
            get => _profile;
            set
            {
                if (_profile != value)
                {
                    _profile = value;
                    OnPropertyChanged(nameof(Profile));
                }
            }
        }

        public MainPageAdminViewModel(UserProfile profile)
        {
            _context = new ApplicationContext();

            _clientRepository = new Clientepository(_context);
            _employeeRepository = new EmployeeRepository(_context);
            _usersRepository = new UsersRepository(_context);

            LoadClients();
            LoadEmployee();
            LoadUsers();
        }
        #region Вывод и подсчет клиентов

        public int TotalClientsCount { get; private set; }
        private void LoadClients()
        {
            var clients = _clientRepository.GetStatusList()
                                           .Include(c => c.Users)
                                           .ToList();
            Clients.Clear();
            foreach (var client in clients)
            {
                Clients.Add(client);
            }

            TotalClientsCount = Clients.Count();

            OnPropertyChanged(nameof(TotalClientsCount));
        }
        #endregion

        #region Вывод и подсчет Сотрудников

        public int TotalEmloyeeCount {  get; private set; } 

        private void LoadEmployee()
        {
            var employees = _employeeRepository.GetStatusList()
                                               .Include(c => c.Users)
                                               .ToList();
            Employees.Clear();
            foreach (var employee in employees)
            {
                Employees.Add(employee);
            }
            TotalEmloyeeCount = Employees.Count();
            OnPropertyChanged(nameof(TotalEmloyeeCount));
        }

        #endregion

        #region Подсчет сотрудников
        public int TotalUsersCount { get; private set; }
        

        private void LoadUsers()
        {
            var users = _usersRepository.GetStatusList();
            TotalUsersCount = users.Count();
            OnPropertyChanged(nameof(TotalUsersCount));
        }

        #endregion

        #region Построение графика

        public IEnumerable<string> Ranges { get; } = new[] { "За день", "За неделю", "За месяц", "За полгода", "За год", "За всё время" };

        public string SelectedRange { get; set; } = "За всё время";

        public ICommand RefreshGraphCommand { get; }

        private PlotModel _plotModel;
       
        public PlotModel PlotModel
        {
            get => _plotModel;
            set
            {
                if (_plotModel != value)
                {
                    _plotModel = value;
                    OnPropertyChanged(nameof(PlotModel));
                }
            }
        }

       

      
        #endregion

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
