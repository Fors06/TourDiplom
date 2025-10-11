USE [Тур агенство];
GO

-- Таблица Пользователи (центральная таблица для клиентов и сотрудников)
CREATE TABLE Пользователи (
    ПользовательID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Имя NVARCHAR(50) NOT NULL,
    Фамилия NVARCHAR(50) NOT NULL,
    Отчество NVARCHAR(50),
    ПарольХеш NVARCHAR(100) NOT NULL,
    Роль NVARCHAR(50) NOT NULL, 
    ЭлПочта NVARCHAR(100) UNIQUE NOT NULL, 
    СерияИНомерПаспорта NVARCHAR(30) UNIQUE NOT NULL, 
    Телефон NVARCHAR(20)
);

-- Таблица Клиенты (привязывается к Пользователям)
CREATE TABLE Клиенты (
    КлиентID INT IDENTITY(1,1) PRIMARY KEY,
    ПользовательID INT FOREIGN KEY REFERENCES Пользователи(ПользовательID)
);

-- Таблица Сотрудник (привязывается к Пользователям)
CREATE TABLE Сотрудники (
    СотрудникID INT IDENTITY(1,1) PRIMARY KEY,
    Должность NVARCHAR(50) NOT NULL,
    ДатаПриема DATE NOT NULL,
    ПользовательID INT FOREIGN KEY REFERENCES Пользователи(ПользовательID)
);

-- Таблица Путешествия
CREATE TABLE Путешествия (
    ПутешествиеID INT IDENTITY(1,1) PRIMARY KEY,
    Название NVARCHAR(100) NOT NULL,
    Описание NVARCHAR(MAX),
    Цена DECIMAL(18,2) NOT NULL,
    ДлительностьДней INT 
);

-- Таблица Бронирование
CREATE TABLE Бронирование (
    БронированиеID INT IDENTITY(1,1) PRIMARY KEY,
    КлиентID INT FOREIGN KEY REFERENCES Клиенты(КлиентID) ON DELETE CASCADE, -- Каскадное удаление
    ПутешествиеID INT FOREIGN KEY REFERENCES Путешествия(ПутешествиеID) ON DELETE CASCADE,
    ДатаНачала DATE NOT NULL,
    ДатаОкончания DATE NOT NULL
);

-- Таблица Отзывы
CREATE TABLE Отзывы (
    ОтзывID INT IDENTITY(1,1) PRIMARY KEY,
    КлиентID INT FOREIGN KEY REFERENCES Клиенты(КлиентID) ON DELETE CASCADE, -- Каскадное удаление
    ПутешествиеID INT FOREIGN KEY REFERENCES Путешествия(ПутешествиеID) ON DELETE CASCADE,
    Оценка TINYINT,
    Комментарий NVARCHAR(MAX)
);

-- Таблица Чеки
CREATE TABLE Чеки (
    ЧекID INT IDENTITY(1,1) PRIMARY KEY,
    БронированиеID INT FOREIGN KEY REFERENCES Бронирование(БронированиеID) ON DELETE CASCADE, -- Каскадное удаление
    ДатаОплаты DATETIME NOT NULL,
    Сумма DECIMAL(18,2) NOT NULL,
    МетодОплаты NVARCHAR(50) NOT NULL
);
GO