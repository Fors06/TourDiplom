using Diplom.Model.Entity;
using Diplom.Model.Repository;
using Diplom.Model.Repository.Abstraction;
using Diplom.View.Admin.The_common_window.Windows;
using Diplom.ViewModel.EmployeeWindows;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;

namespace Diplom.ViewModel.Admin.PagesAdminViewModels
{
    public class BookingPageAdminViewModel : INotifyPropertyChanged
    {
        private readonly ApplicationContext _context;
        private readonly IRepository<Booking> _bookingRepository;

        public ObservableCollection<Booking> Bookings { get; set; } = new ObservableCollection<Booking>();

        private Booking _selectedBooking;
        public Booking SelectedBooking
        {
            get => _selectedBooking;
            set
            {
                _selectedBooking = value;
                OnPropertyChanged(nameof(Booking));
            }
        }

        public BookingPageAdminViewModel()
        {
            _context = new ApplicationContext();
            _bookingRepository = new BookingRepository(_context);

            LoadBooking();
        }

        #region Загрузка данных

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

        public void OpenEditOrderForm(object obj)
        {
            if (SelectedBooking == null)
            {
                // Если заказ не выбран, выводим предупреждение
                MessageBox.Show("Необходимо выбрать заказ.", "Внимание", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            var currentWindow = App.Current.MainWindow as Window ?? Window.GetWindow(obj as DependencyObject);

            var editWindow = new EditOrderWindow();
            editWindow.DataContext = new EditOrderViewModel(SelectedOrder); // Передаем только заказ
            Application.Current.MainWindow = editWindow;


            editWindow.Show();

            currentWindow.Close();


        }

        #endregion

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
