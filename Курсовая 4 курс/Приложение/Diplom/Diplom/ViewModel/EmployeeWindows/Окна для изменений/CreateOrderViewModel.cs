using Diplom.Model.Entity;
using Diplom.Model.Repository;
using Diplom.Model.Repository.Abstraction;
using RequestDataAccess.Repository;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Input;

namespace Diplom.ViewModels.EmployeeViewModel.Окна_для_изменений
{
    public class CreateOrderViewModel 
    {
        //private readonly ApplicationContext _context;
        //private readonly IRepository<Booking> _bookingRepository;
        //private readonly IRepository<Tour> _tourRepository;
        //private readonly IRepository<Client> _clientRepository;

        //public ObservableCollection<Tour> AllTours { get; set; } // доступные туры
        //public ObservableCollection<Client> AllClients { get; set; } // клиенты
        
        //public ICommand CreateBookingCommand => new RelayCommand(CreateBooking);
        //public ICommand CancelCommand => new RelayCommand(Cancel);

        //private Tour _selectedTour;
        //public Tour SelectedTour
        //{
        //    get => _selectedTour;
        //    set
        //    {
        //        _selectedTour = value;
        //        OnPropertyChanged(nameof(SelectedTour));
        //    }
        //}

        //private Client _selectedClient;
        //public Client SelectedClient
        //{
        //    get => _selectedClient;
        //    set
        //    {
        //        _selectedClient = value;
        //        OnPropertyChanged(nameof(SelectedClient));
        //    }
        //}

        //private DateOnly _startDate;
        //public DateOnly StartDate
        //{
        //    get => _startDate;
        //    set
        //    {
        //        _startDate = value;
        //        OnPropertyChanged(nameof(StartDate));
        //    }
        //}

        //private DateOnly _endDate;
        //public DateOnly EndDate
        //{
        //    get => _endDate;
        //    set
        //    {
        //        _endDate = value;
        //        OnPropertyChanged(nameof(EndDate));
        //    }
        //}

        //public CreateBookingViewModel()
        //{
        //    _context = new ApplicationContext();
        //    _bookingRepository = new BookingRepository(_context);
        //    _tourRepository = new TourRepository(_context);
        //    _clientRepository = new ClientRepository(_context);

        //    // загрузка доступных туров и клиентов
        //    AllTours = new ObservableCollection<Tour>(_tourRepository.GetAll());
        //    AllClients = new ObservableCollection<Client>(_clientRepository.GetAll());
        //}

        //private void CreateBooking(object obj)
        //{
        //    if (SelectedTour == null || SelectedClient == null)
        //    {
        //        MessageBox.Show("Необходимо выбрать тур и клиента.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
        //        return;
        //    }

        //    try
        //    {
        //        var newBooking = new Booking
        //        {
        //            КлиентId = SelectedClient.КлиентId,
        //            ПутешествиеId = SelectedTour.Id,
        //            ДатаНачала = StartDate,
        //            ДатаОкончания = EndDate
        //        };

        //        _bookingRepository.Create(newBooking);
        //        _bookingRepository.Save();

        //        MessageBox.Show("Бронирование успешно создано.", "Успешно", MessageBoxButton.OK, MessageBoxImage.Information);

        //        // закрываем окно
        //        var currentWindow = Application.Current.MainWindow as Window;
        //        currentWindow.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show($"Ошибка создания бронирования: {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
        //    }
        //}

        //private void Cancel(object obj)
        //{
        //    var currentWindow = Application.Current.MainWindow as Window;
        //    currentWindow.Close();
        //}

        //public event PropertyChangedEventHandler PropertyChanged;
        //protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        //{
        //    PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        //}
    }
}

