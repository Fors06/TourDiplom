USE [��� ��������];
GO

-- ������� ������������ (����������� ������� ��� �������� � �����������)
CREATE TABLE ������������ (
    ������������ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ��� NVARCHAR(50) NOT NULL,
    ������� NVARCHAR(50) NOT NULL,
    �������� NVARCHAR(50),
    ��������� NVARCHAR(100) NOT NULL,
    ���� NVARCHAR(50) NOT NULL, 
    ������� NVARCHAR(100) UNIQUE NOT NULL, 
    ������������������� NVARCHAR(30) UNIQUE NOT NULL, 
    ������� NVARCHAR(20)
);

-- ������� ������� (������������� � �������������)
CREATE TABLE ������� (
    ������ID INT IDENTITY(1,1) PRIMARY KEY,
    ������������ID INT FOREIGN KEY REFERENCES ������������(������������ID)
);

-- ������� ��������� (������������� � �������������)
CREATE TABLE ���������� (
    ���������ID INT IDENTITY(1,1) PRIMARY KEY,
    ��������� NVARCHAR(50) NOT NULL,
    ���������� DATE NOT NULL,
    ������������ID INT FOREIGN KEY REFERENCES ������������(������������ID)
);

-- ������� �����������
CREATE TABLE ����������� (
    �����������ID INT IDENTITY(1,1) PRIMARY KEY,
    �������� NVARCHAR(100) NOT NULL,
    �������� NVARCHAR(MAX),
    ���� DECIMAL(18,2) NOT NULL,
    ���������������� INT 
);

-- ������� ������������
CREATE TABLE ������������ (
    ������������ID INT IDENTITY(1,1) PRIMARY KEY,
    ������ID INT FOREIGN KEY REFERENCES �������(������ID) ON DELETE CASCADE, -- ��������� ��������
    �����������ID INT FOREIGN KEY REFERENCES �����������(�����������ID) ON DELETE CASCADE,
    ���������� DATE NOT NULL,
    ������������� DATE NOT NULL
);

-- ������� ������
CREATE TABLE ������ (
    �����ID INT IDENTITY(1,1) PRIMARY KEY,
    ������ID INT FOREIGN KEY REFERENCES �������(������ID) ON DELETE CASCADE, -- ��������� ��������
    �����������ID INT FOREIGN KEY REFERENCES �����������(�����������ID) ON DELETE CASCADE,
    ������ TINYINT,
    ����������� NVARCHAR(MAX)
);

-- ������� ����
CREATE TABLE ���� (
    ���ID INT IDENTITY(1,1) PRIMARY KEY,
    ������������ID INT FOREIGN KEY REFERENCES ������������(������������ID) ON DELETE CASCADE, -- ��������� ��������
    ���������� DATETIME NOT NULL,
    ����� DECIMAL(18,2) NOT NULL,
    ����������� NVARCHAR(50) NOT NULL
);
GO