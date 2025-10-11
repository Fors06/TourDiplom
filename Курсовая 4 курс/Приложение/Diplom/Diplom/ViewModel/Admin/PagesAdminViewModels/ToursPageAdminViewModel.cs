using Diplom.Model.Entity;
using Diplom.Model.Repository.Abstraction;
using RequestDataAccess.Repository;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Diplom.ViewModel.Admin.PagesAdminViewModels
{
    public class ToursPageViewModel : INotifyPropertyChanged
    {
        private readonly ApplicationContext _context;
        private readonly IRepository<Tour> _tourRepository;

        public ObservableCollection<Tour> Tours { get; set; } = new ObservableCollection<Tour>();


        private Tour _selectedTour;

        public Tour SelectedTour
        {
            get => _selectedTour;
            set
            {
                _selectedTour = value;
                OnPropertyChanged(nameof(SelectedTour));

                Название = _selectedTour?.Название ?? String.Empty;
                Описание = _selectedTour?.Описание ?? String.Empty;
                Цена = _selectedTour?.Цена ?? decimal.Zero;
                ДлительностьДней = _selectedTour?.ДлительностьДней ?? 0;
            }
        }


        public ICommand AddCommand => new RelayCommand(AddTour);
        public ICommand EditCommand => new RelayCommand(EditTour);
        public ICommand DeleteTourCommand => new RelayCommand(DeleteTour);
        public ICommand ClearFieldsCommand => new RelayCommand(ClearFields);

        public ToursPageViewModel()
        {
            _context = new ApplicationContext();
            _tourRepository = new TourRepository(_context);
            LoadTours();
        }

        #region Поля 

        private string _name;
        public string Название
        {
            get => _name;
            set
            {
                _name = value;
                OnPropertyChanged(nameof(Название));
            }
        }

        private string _description;
        public string Описание
        {
            get => _description;
            set
            {
                _description = value;
                OnPropertyChanged(nameof(Описание));
            }
        }

        private decimal _price;
        public decimal Цена
        {
            get => _price;
            set
            {
                _price = value;
                OnPropertyChanged(nameof(Цена));
            }
        }

        private int _durationInDays;
        public int ДлительностьДней
        {
            get => _durationInDays;
            set
            {
                _durationInDays = value;
                OnPropertyChanged(nameof(ДлительностьДней));
            }
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
                ApplySearchFilter();
            }
        }

        private void ApplySearchFilter()
        {
            if (!string.IsNullOrEmpty(_searchText))
            {
                    Tours.Clear();
                    foreach (var tour in _context.tours.Where(c => c.Название.Contains(_searchText) ||
                                                                       c.Описание.Contains(_searchText)))
                    {
                        Tours.Add(tour);
                    }
            }
            else
            {
                LoadTours();
            }
        }

        #endregion

        #region Загрузка данных

        private void LoadTours()
        {
            var toyr = _tourRepository.GetStatusList();

            Tours.Clear();

            foreach ( var tour in toyr )
            {
                Tours.Add(tour);
            }
        }

        #endregion

        #region Редактирование

        public void EditTour(object obj)
        {
            if (SelectedTour == null)
            {
                MessageBox.Show("Выберите тур для редактирования.", "Внимание", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            // Читаем данные из полей
            SelectedTour.Название = Название;
            SelectedTour.Описание = Описание;
            SelectedTour.Цена = Цена;
            SelectedTour.ДлительностьДней = ДлительностьДней;

            // Обновляем тур в базе данных
            _tourRepository.Update(SelectedTour);
            _tourRepository.Save();

            // Обновляем коллекцию
            LoadTours();

            MessageBox.Show("Тур успешно обновлён.", "Редактирование тура", MessageBoxButton.OK, MessageBoxImage.Information);

            // Очищаем поля
            ClearFields(null);
        }

        #endregion

        #region Очистка полей

        public void ClearFields(object obj)
        {
            Название = "";
            Описание = "";
            Цена = decimal.Zero;
            ДлительностьДней = 0;
        }

        #endregion

        #region Добавление

        public void AddTour(object obj)
        {
            if (string.IsNullOrEmpty(Название) || string.IsNullOrEmpty(Описание) || Цена <= 0 || ДлительностьДней <= 0)
            {
                MessageBox.Show("Все поля должны быть заполнены и положительными.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            var tour = new Tour
            {
                Название = Название,
                Описание = Описание,
                Цена = Цена,
                ДлительностьДней = ДлительностьДней
            };

            _tourRepository.Create(tour);
            _tourRepository.Save();

            LoadTours();

            MessageBox.Show("Новый тур успешно добавлен.", "Добавление тура", MessageBoxButton.OK, MessageBoxImage.Information);

            ClearFields(null);
        }

        #endregion

        #region Удаление

        public void DeleteTour(object obj)
        {
            if (SelectedTour != null)
            {
                _tourRepository.Delete(SelectedTour.Id);
                _tourRepository.Save();

                LoadTours();

                MessageBox.Show("Тур успешно удалён.", "Удаление тура", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            else
            {
                MessageBox.Show("Выберите тур для удаления.", "Внимание", MessageBoxButton.OK, MessageBoxImage.Warning);
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
