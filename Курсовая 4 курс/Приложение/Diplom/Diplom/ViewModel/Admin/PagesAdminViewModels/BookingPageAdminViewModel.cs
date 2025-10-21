using Diplom.Model.Entity;
using Diplom.Model.Repository;
using Diplom.Model.Repository.Abstraction;
using Diplom.View.Admin.The_common_window.Windows;
using Diplom.ViewModels.EmployeeViewModel.Окна_для_изменений;
using Microsoft.EntityFrameworkCore;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Input;

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

        public ICommand OpenEditBookingCommand => new RelayCommand(EditBooking);

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

        public void EditBooking(object obj)
        {
        }

        #endregion

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
