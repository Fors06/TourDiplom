using Diplom.Model.Entity;
using Diplom.Model.Repository;
using Diplom.Model.Repository.Abstraction;
using Microsoft.EntityFrameworkCore;
using RequestDataAccess.Repository;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

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

        public event PropertyChangedEventHandler? PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
