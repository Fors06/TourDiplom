use travel_agencies
-- Таблица Пользователи (общее хранилище для клиентов и сотрудников)
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Username NVARCHAR(50),
    PasswordHash NVARCHAR(100),
    Role NVARCHAR(50), -- Значения: "клиент", "сотрудник"
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(20)
);

-- Таблица Клиенты (только ссылка на общего пользователя)
CREATE TABLE Clients (
    ClientID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT FOREIGN KEY REFERENCES Users(UserID)
);

-- Таблица Сотрудники (связана с общими пользователями)
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    Position NVARCHAR(50),
    HireDate DATE,
    UserID INT FOREIGN KEY REFERENCES Users(UserID)
);

-- Таблица Путешествия
CREATE TABLE Tours (
    TourID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Description NVARCHAR(MAX),
    Price DECIMAL(18,2),
    DurationDays INT
);

-- Таблица Страны
CREATE TABLE Countries (
    CountryID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100)
);

-- Таблица Отели
CREATE TABLE Hotels (
    HotelID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Address NVARCHAR(200),
    StarRating TINYINT,
    CountryID INT FOREIGN KEY REFERENCES Countries(CountryID)
);

-- Таблица Авиакомпании
CREATE TABLE Airlines (
    AirlineID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100)
);

-- Таблица Перелёты
CREATE TABLE Flights (
    FlightID INT IDENTITY(1,1) PRIMARY KEY,
    DepartureCity NVARCHAR(100),
    ArrivalCity NVARCHAR(100),
    AirlineID INT FOREIGN KEY REFERENCES Airlines(AirlineID)
);

-- Таблица Типы питания
CREATE TABLE MealTypes (
    MealTypeID INT IDENTITY(1,1) PRIMARY KEY,
    Type NVARCHAR(50)
);

-- Таблица Типы транспорта
CREATE TABLE TransportTypes (
    TransportTypeID INT IDENTITY(1,1) PRIMARY KEY,
    Type NVARCHAR(50)
);

-- Таблица Бронирование
CREATE TABLE Bookings (
    BookingID INT IDENTITY(1,1) PRIMARY KEY,
    ClientID INT FOREIGN KEY REFERENCES Clients(ClientID),
    TourID INT FOREIGN KEY REFERENCES Tours(TourID),
    DateFrom DATE,
    DateTo DATE
);

-- Таблица Отзывы
CREATE TABLE Reviews (
    ReviewID INT IDENTITY(1,1) PRIMARY KEY,
    ClientID INT FOREIGN KEY REFERENCES Clients(ClientID),
    TourID INT FOREIGN KEY REFERENCES Tours(TourID),
    Rating TINYINT,
    Comment NVARCHAR(MAX)
);

-- Таблица Чеки
CREATE TABLE Receipts (
    ReceiptID INT IDENTITY(1,1) PRIMARY KEY,
    BookingID INT FOREIGN KEY REFERENCES Bookings(BookingID),
    PaymentDate DATETIME,
    AmountPaid DECIMAL(18,2),
    PaymentMethod NVARCHAR(50)
);