--create database ��������������;
Create database ��������������_2

USE master;
GO

-- ��������� �� � single-user mode
ALTER DATABASE [��������������_2]
SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

-- ������ ��������� COLLATION
ALTER DATABASE [��������������_2]
COLLATE Cyrillic_General_CI_AS ;
GO

-- ��������� �� ������� � multi-user mode
ALTER DATABASE [��������������_2]
SET MULTI_USER WITH ROLLBACK IMMEDIATE;
GO  
 
--��������� ��������� COLLATION.
SELECT name, collation_name
FROM sys.databases
WHERE name = '��������������';
GO