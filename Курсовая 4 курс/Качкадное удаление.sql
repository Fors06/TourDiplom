-- Добавить каскадное удаление для таблицы "Клиенты"
ALTER TABLE Бронирование
ADD CONSTRAINT FK_Бронирование_Клиенты
FOREIGN KEY (КлиентID)
REFERENCES Клиенты(КлиентID)
ON DELETE CASCADE;

ALTER TABLE Отзывы
ADD CONSTRAINT FK_Отзывы_Клиенты
FOREIGN KEY (КлиентID)
REFERENCES Клиенты(КлиентID)
ON DELETE CASCADE;

-- Добавить каскадное удаление для таблицы "Бронирование"
ALTER TABLE Чеки
ADD CONSTRAINT FK_Чеки_Бронирование
FOREIGN KEY (БронированиеID)
REFERENCES Бронирование(БронированиеID)
ON DELETE CASCADE;