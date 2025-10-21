using Diplom.Model.Entity;
using Diplom.Model.Repository;
using Diplom.Model.Repository.Abstraction;
using Diplom.View.Admin.The_common_window.Windows;
using Diplom.ViewModels.EmployeeViewModel.Окна_для_изменений;
using Microsoft.EntityFrameworkCore;
using RequestDataAccess.Repository;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Input;

namespace Diplom.ViewModel.EmployeeWindows
{
    public class WindowEmployeeViewModel : INotifyPropertyChanged
    {
        private readonly ApplicationContext _context;
        private readonly IRepository<Tour> _tourRepository;
        private readonly IRepository<Booking> _bookingRepository;

        public ObservableCollection<Booking> Bookings { get; set; } = new ObservableCollection<Booking>();

        public ObservableCollection<Tour> Tours { get; set; } = new ObservableCollection<Tour>();


        private Tour _selectedTour;

        public Tour SelectedTour
        {
            get => _selectedTour;
            set
            {
                _selectedTour = value;
                OnPropertyChanged(nameof(SelectedTour));

              
            }
        }

        private Booking _selectedBooking;

        public Booking SelectedBooking
        {
            get => _selectedBooking;
            set
            {
                _selectedBooking = value;
                OnPropertyChanged(nameof(SelectedBooking));


            }
        }

        public ICommand OpenEditBookingCommand => new RelayCommand(EditBooking);

        public WindowEmployeeViewModel()
        {
            _context = new ApplicationContext();
            _tourRepository = new TourRepository(_context);
            _bookingRepository = new BookingRepository(_context);

            LoadTours();
            LoadBooking();
        }
        #region Загрузка данных
        private void LoadTours()
        {
            var toyr = _tourRepository.GetStatusList();

            Tours.Clear();

            foreach (var tour in toyr)
            {
                Tours.Add(tour);
            }
        }

        private void LoadBooking()
        {
            var toyr = _bookingRepository.GetStatusList()
                        .Include(c => c.Clients.Users)
                        .Include(t => t.Tours);

            Bookings.Clear();

            foreach (var tour in toyr)
            {
                Bookings.Add(tour);
            }
        }
        #endregion

        #region Общие кнопки

       

        private void EditBooking(object parameter)
        {
            if (SelectedBooking == null)
            {
                // Если заказ не выбран, выводим предупреждение
                MessageBox.Show("Необходимо выбрать заказ.", "Внимание", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            //var currentWindow = App.Current.MainWindow as Window ?? Window.GetWindow(obj as DependencyObject);

            //var editWindow = new EditBookingWindow();
            //editWindow.DataContext = new EditBookingViewModel(SelectedBooking); // Передаем только заказ
            //Application.Current.MainWindow = editWindow;


            //editWindow.Show();

            //currentWindow.Close();

            var currentWindow = App.Current.MainWindow as Window;

            var editWindow = new EditBookingWindow();
            editWindow.DataContext = new EditBookingViewModel(SelectedBooking); // Передаем только заказ
            Application.Current.MainWindow = editWindow;

            editWindow.Show();

            currentWindow.Close();
        }

        #endregion

        public event PropertyChangedEventHandler? PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
