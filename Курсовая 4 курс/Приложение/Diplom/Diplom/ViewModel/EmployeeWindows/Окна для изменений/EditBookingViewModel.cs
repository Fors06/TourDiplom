using Diplom;
using Diplom.Model.Entity;
using Diplom.Model.Repository.Abstraction;
using Diplom.View.Employee;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Input;

namespace Diplom.ViewModels.EmployeeViewModel.Окна_для_изменений
{
    public class EditBookingViewModel : INotifyPropertyChanged
    {
        private readonly ApplicationContext _context;
        private readonly Booking _originalBooking;
        private Booking _editedBooking;

        public ObservableCollection<Tour> AllTours { get; set; } // Доступные туры

        public ICommand SaveBookingCommand => new RelayCommand(SaveBooking);
        public ICommand CancelCommand => new RelayCommand(Cancel);

        public EditBookingViewModel(Booking originalBooking)
        {
            _context = new ApplicationContext();
            _originalBooking = originalBooking ?? throw new ArgumentNullException(nameof(originalBooking));

            _editedBooking = new Booking
            {
                БронированиеId = originalBooking.БронированиеId,
                КлиентId = originalBooking.КлиентId,
                ПутешествиеId = originalBooking.ПутешествиеId,
                ДатаНачала = originalBooking.ДатаНачала,
                ДатаОкончания = originalBooking.ДатаОкончания
            };

            // Загрузка всех возможных туров из контекста
            AllTours = new ObservableCollection<Tour>(_context.tours);

            // Выбираем первоначальный тур из оригинала
            SelectedTour = AllTours.FirstOrDefault(t => t.Id == _editedBooking.ПутешествиеId);
        }

        // Выбранный тур
        private Tour _selectedTour;
        public Tour SelectedTour
        {
            get => _selectedTour;
            set
            {
                if (_selectedTour != value)
                {
                    _selectedTour = value;
                    _editedBooking.ПутешествиеId = value.Id; // Обновляем ID тура
                    OnPropertyChanged(nameof(SelectedTour));
                }
            }
        }

        public DateTime StartDate
        {
            get => _editedBooking.ДатаНачала;
            set
            {
                if (_editedBooking.ДатаНачала != value)
                {
                    _editedBooking.ДатаНачала = value;
                    OnPropertyChanged(nameof(StartDate)); // Оповещаем о изменении
                }
            }
        }

        public DateTime EndDate
        {
            get => _editedBooking.ДатаОкончания;
            set
            {
                if (_editedBooking.ДатаОкончания != value)
                {
                    _editedBooking.ДатаОкончания = value;
                    OnPropertyChanged(nameof(EndDate)); // Оповещаем о изменении
                }
            }
        }


        private void SaveBooking(object obj)
        {
            try
            {
                using (var context = new ApplicationContext())
                {
                    var updatedBooking = context.bookings.Find(_editedBooking.БронированиеId);
                    if (updatedBooking != null)
                    {
                        updatedBooking.ДатаНачала = _editedBooking.ДатаНачала;
                        updatedBooking.ДатаОкончания = _editedBooking.ДатаОкончания;
                        updatedBooking.ПутешествиеId = _editedBooking.ПутешествиеId;

                        context.SaveChanges();
                    }
                }

                MessageBox.Show("Данные успешно сохранены.", "Информация", MessageBoxButton.OK, MessageBoxImage.Information);

                var currentWindow = App.Current.MainWindow as Window ?? Window.GetWindow(obj as DependencyObject);
                EmployeeWindow winEmp = new EmployeeWindow();
                Application.Current.MainWindow = winEmp;
                winEmp.Show();
                currentWindow.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка обновления записи: {ex.Message}");
            }
        }

        private void Cancel(object obj)
        {
            var currentWindow = App.Current.MainWindow as Window ?? Window.GetWindow(obj as DependencyObject);
            EmployeeWindow winEmp = new EmployeeWindow();
            Application.Current.MainWindow = winEmp;
            winEmp.Show();
            currentWindow.Close();
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}