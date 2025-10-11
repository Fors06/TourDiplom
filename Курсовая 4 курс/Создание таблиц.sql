use travel_agencies
-- ������� ������������ (����� ��������� ��� �������� � �����������)
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Username NVARCHAR(50),
    PasswordHash NVARCHAR(100),
    Role NVARCHAR(50), -- ��������: "������", "���������"
    Email NVARCHAR(100),
    PhoneNumber NVARCHAR(20)
);

-- ������� ������� (������ ������ �� ������ ������������)
CREATE TABLE Clients (
    ClientID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT FOREIGN KEY REFERENCES Users(UserID)
);

-- ������� ���������� (������� � ������ ��������������)
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    Position NVARCHAR(50),
    HireDate DATE,
    UserID INT FOREIGN KEY REFERENCES Users(UserID)
);

-- ������� �����������
CREATE TABLE Tours (
    TourID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Description NVARCHAR(MAX),
    Price DECIMAL(18,2),
    DurationDays INT
);

-- ������� ������
CREATE TABLE Countries (
    CountryID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100)
);

-- ������� �����
CREATE TABLE Hotels (
    HotelID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100),
    Address NVARCHAR(200),
    StarRating TINYINT,
    CountryID INT FOREIGN KEY REFERENCES Countries(CountryID)
);

-- ������� ������������
CREATE TABLE Airlines (
    AirlineID INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(100)
);

-- ������� �������
CREATE TABLE Flights (
    FlightID INT IDENTITY(1,1) PRIMARY KEY,
    DepartureCity NVARCHAR(100),
    ArrivalCity NVARCHAR(100),
    AirlineID INT FOREIGN KEY REFERENCES Airlines(AirlineID)
);

-- ������� ���� �������
CREATE TABLE MealTypes (
    MealTypeID INT IDENTITY(1,1) PRIMARY KEY,
    Type NVARCHAR(50)
);

-- ������� ���� ����������
CREATE TABLE TransportTypes (
    TransportTypeID INT IDENTITY(1,1) PRIMARY KEY,
    Type NVARCHAR(50)
);

-- ������� ������������
CREATE TABLE Bookings (
    BookingID INT IDENTITY(1,1) PRIMARY KEY,
    ClientID INT FOREIGN KEY REFERENCES Clients(ClientID),
    TourID INT FOREIGN KEY REFERENCES Tours(TourID),
    DateFrom DATE,
    DateTo DATE
);

-- ������� ������
CREATE TABLE Reviews (
    ReviewID INT IDENTITY(1,1) PRIMARY KEY,
    ClientID INT FOREIGN KEY REFERENCES Clients(ClientID),
    TourID INT FOREIGN KEY REFERENCES Tours(TourID),
    Rating TINYINT,
    Comment NVARCHAR(MAX)
);

-- ������� ����
CREATE TABLE Receipts (
    ReceiptID INT IDENTITY(1,1) PRIMARY KEY,
    BookingID INT FOREIGN KEY REFERENCES Bookings(BookingID),
    PaymentDate DATETIME,
    AmountPaid DECIMAL(18,2),
    PaymentMethod NVARCHAR(50)
);