USE [��� ��������];

-- ������� ������������
INSERT INTO ������������ (���, �������, ��������, ���������, ����, �������, �������������������, �������)
VALUES
('����',		'������',		'�����', 'pass1', '���������',		'ivan.i@example.com',		'1880 699588', '+79001234567'),
('����',		'��������',		'�����', 'pass2', '���������',		'anna.a@example.com',		'1880 699589', '+79002345678'),
('ϸ��',		'�������',		'�����', 'pass3', '���������',		'petr.p@example.com',		'1880 699590', '+79003456789'),
('�����',		'������',		'�����', 'pass4', '���������',		'elena.i@example.com',		'1880 699591', '+79004567890'),
('�������',		'������',		 '�����', 'pass5', '���������',		'dmitriy.k@example.com',	'1880 699592', '+79005678901'),
('�����',		'������',		'�����', 'pass6', '���������',		'olga.f@example.com',		'1880 699593', '+79006789012'),
('������',		'������',		'�����', 'pass7', '���������',		 'sergey.s@example.com',	 '1880 699594', '+79007890123'),
('������',		'�������',		'�����', 'pass8', '���������',		'marina.k@example.com',		'1880 699595', '+79008901234'),
('�������',		'�����',		'�����', 'pass9', '���������',		'aleksey.z@example.com',	'1880 699596', '+79009012345'),
('�������',		'���������',	 '�����', 'pass10', '���������',	 'natalya.m@example.com',	'1880 699597', '+79000123456'),
('������',		'��������',		'�����', 'pass11', '���������',		'mikhail.v@example.com',	'1880 699598', '+79001234568'),
('�������',		'��������',		'�����', 'pass12', '���������',		'tatyana.s@example.com',	'1880 699599', '+79002345679'),
('�������',		'������',		'�����', 'pass13', '���������',		'evgeniy.r@example.com',	'1880 699600', '+79003456780'),
('��������',	'���������',	'�����', 'pass14', '���������',		'viktoria.k@example.com',	'1880 699601', '+79004567891'),
('���������',	'�������',		'�����', 'pass15', '���������',		'aleksandr.s@example.com',	'1880 699602', '+79005678902'),
('��������',	'������',		'�����', 'pass16', '���������',		'kristina.sh@example.com',	'1880 699603', '+79006789013'),
('�����',		'��������',		'�����', 'pass17', '���������',		'igor.n@example.com',		'1880 696047', '+79007890124'),
('���������',	 '���������',	'�����', 'pass18', '���������',		'elizaveta.v@example.com',	 '1880 699605', '+79008901235'),
('������',		'��������',		'�����', 'pass19', '���������',		'kirill.m@example.com',		'1880 699606', '+79009012346'),
('�����',		'���������',	'�����', 'pass20', '���������',		'dariya.k@example.com',		'1880 699607','+79000123457'),
('������',		'�������',		'�����', 'pass21', '���������',		'maksim.sh@example.com',	'1880 699608', '+79001234569'),
('����',		'������',		 '�����', 'pass22', '���������',	 'anna.shch@example.com',	'1880 699609', '+79002345680'),
('�������', '�����', '�����', 'pass23', '���������', 'dmitriy.kz@example.com', '1880 699700', '+79003456781'),
('�����', '�������', '�����', 'pass24', '���������', 'alina.br@example.com', '1880 699701', '+79004567892'),
('����', '�������', '�����', 'pass25', '���������', 'artiom.t@example.com', '1880 699702', '+79005678903'),
('�����', '�������', '�����', 'pass26', '���������', 'boris.salimov@example.com', '1880 699703', '+79006789014'),

-- ���������� ������� � 27-� ������
('������', '�����', '�����', 'pass27', '������', 'belov.andrey@example.com', '1880 699704', '+79001234568'), 
('��������', '��������', '�����', 'pass28', '������', 'biryukova.svetlana@example.com', '1880 699705', '+79002345679'), 
('�����', '������', '�����', 'pass29', '������', 'vlasov.pavel@example.com', '1880 699706', '+79003456780'), 
('�������', '�������', '�����', 'pass30', '������', 'galkina.evgeniya@example.com', '1880 699707', '+79004567891'), 
('���������', '�������', '�����', 'pass31', '������', 'danetsko.rostislav@example.com', '1880 699708', '+79005678902'), --����
('�����', '�������', '�����', 'pass32', '������', 'efimova.darya@example.com', '1880 699709', '+79006789013'),
('������', '�����', '�����', 'pass33', '������', 'zhukov.mikhail@example.com', '1880 699710', '+79007890124'), -- 7
('���������', '��������', '�����', 'pass34', '������', 'zarubina.anastasia@example.com', '1880 699711', '+79008901235'),
('����', '��������', '�����', 'pass35', '������', 'ignatev.oleg@example.com', '1880 699712', '+79009012346'),
('�������', '��������', '�����', 'pass36', '������', 'kalugina.tatyana@example.com', '1880 699713', '+79000123457'), -- 10
('������', '����������', '�����', 'pass37', '������', 'kondratiev.sergey@example.com', '1880 699714', '+79001234569'),
('����', '�������', '�����', 'pass38', '������', 'kupcova.anna@example.com', '1880 699715', '+79002345680'),
('������', '����������', '�����', 'pass39', '������', 'lavrentiev.maxim@example.com', '1880 699716', '+79003456781'),
('�����', '����������', '�����', 'pass40', '������', 'menshikova.olga@example.com', '1880 699717', '+79004567892'),
('�����', '�������', '�����', 'pass41', '������', 'nasonov.igor@example.com', '1880 699718', '+79005678903'), -- 15
('����', '�������', '�����', 'pass42', '������', 'orekhova.nina@example.com', '1880 699719', '+79006789014'),
('������', '��������', '�����', 'pass43', '������', 'patrushhev.kirill@example.com', '1880 699720', '+79007890125'),
('�����', '���������', '�����', 'pass44', '������', 'ponomaryova.elena@example.com', '1880 699721', '+79008901236'),
('������', '��������', '�����', 'pass45', '������', 'radchenko.ruslan@example.com', '1880 699722', '+79009012347'),
('��������', '���������', '�����', 'pass46', '������', 'samsonova.viktoria@example.com', '1880 699723', '+79000123458'), -- 20
('����', '�������', '�����', 'pass47', '������', 'tarasov.egor@example.com', '1880 699724', '+79001234560'),
('�������', '�������', '�����', 'pass48', '������', 'uvorava.evgeniya@example.com', '1880 699725', '+79002345681'),
('�����', '�������', '�����', 'pass49', '������', 'filatov.roman@example.com', '1880 699726', '+79003456782'),
('�������', '�������', '�����', 'pass50', '������', 'khudyakov.yaroslav@example.com', '1880 699727', '+79004567893'),
('�����', '���������', '�����', 'pass51', '������', 'cherkesova.elena@example.com', '1880 699728', '+79005678904'), -- 25
('�������', '�������', '�����', 'pass52', '������', 'shabalin.georgiy@example.com', '1880 699729', '+79006789015');

GO

-- ������� �������
INSERT INTO ������� (������������ID)
VALUES
((SELECT ������������ID FROM ������������ WHERE �������='belov.andrey@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='biryukova.svetlana@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='vlasov.pavel@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='galkina.evgeniya@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='danetsko.rostislav@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='efimova.darya@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='zhukov.mikhail@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='zarubina.anastasia@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='ignatev.oleg@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='kalugina.tatyana@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='kondratiev.sergey@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='kupcova.anna@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='lavrentiev.maxim@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='menshikova.olga@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='nasonov.igor@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='orekhova.nina@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='patrushhev.kirill@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='ponomaryova.elena@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='radchenko.ruslan@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='samsonova.viktoria@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='tarasov.egor@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='uvorava.evgeniya@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='filatov.roman@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='khudyakov.yaroslav@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='cherkesova.elena@example.com')),
((SELECT ������������ID FROM ������������ WHERE �������='shabalin.georgiy@example.com'));

GO

-- ������� ����������
INSERT INTO ���������� (���������, ����������, ������������ID)
VALUES
('��������', '2020-01-15', (SELECT ������������ID FROM ������������ WHERE �������='ivan.i@example.com')),
('��������', '2021-03-10', (SELECT ������������ID FROM ������������ WHERE �������='anna.a@example.com')),
('����������� ���������', '2022-05-20', (SELECT ������������ID FROM ������������ WHERE �������='petr.p@example.com')),
('�������������', '2022-06-15', (SELECT ������������ID FROM ������������ WHERE �������='elena.i@example.com')),
('�������� ���������', '2023-01-05', (SELECT ������������ID FROM ������������ WHERE �������='dmitriy.k@example.com')),
('�����������', '2023-02-10', (SELECT ������������ID FROM ������������ WHERE �������='olga.f@example.com')),
('������� ��������', '2023-03-15', (SELECT ������������ID FROM ������������ WHERE �������='sergey.s@example.com')),
('���������� ����������', '2023-04-20', (SELECT ������������ID FROM ������������ WHERE �������='marina.k@example.com')),
('IT-����������', '2023-05-25', (SELECT ������������ID FROM ������������ WHERE �������='aleksey.z@example.com')),
('�������', '2023-06-01', (SELECT ������������ID FROM ������������ WHERE �������='natalya.m@example.com')),
('���������', '2023-07-10', (SELECT ������������ID FROM ������������ WHERE �������='mikhail.v@example.com')),
('HR-��������', '2023-08-15', (SELECT ������������ID FROM ������������ WHERE �������='tatyana.s@example.com')),
('������������', '2023-09-20', (SELECT ������������ID FROM ������������ WHERE �������='evgeniy.r@example.com')),
('PR-��������', '2023-10-25', (SELECT ������������ID FROM ������������ WHERE �������='viktoria.k@example.com')),
('�������� ������������', '2023-11-01', (SELECT ������������ID FROM ������������ WHERE �������='aleksandr.s@example.com')),
('����������', '2023-12-10', (SELECT ������������ID FROM ������������ WHERE �������='kristina.sh@example.com')),
('��������', '2024-01-15', (SELECT ������������ID FROM ������������ WHERE �������='igor.n@example.com')),
('��������', '2024-02-20', (SELECT ������������ID FROM ������������ WHERE �������='elizaveta.v@example.com')),
('������������� �����', '2024-03-25', (SELECT ������������ID FROM ������������ WHERE �������='kirill.m@example.com')),
('�����-��������', '2024-04-01', (SELECT ������������ID FROM ������������ WHERE �������='dariya.k@example.com')),
('����������', '2024-05-10', (SELECT ������������ID FROM ������������ WHERE �������='maksim.sh@example.com')),
('�������� �������������', '2024-06-15', (SELECT ������������ID FROM ������������ WHERE �������='anna.shch@example.com')),
('������������ ������������', '2024-07-20', (SELECT ������������ID FROM ������������ WHERE �������='dmitriy.kz@example.com')),
('�����������������', '2024-08-25', (SELECT ������������ID FROM ������������ WHERE �������='alina.br@example.com')),
('�������� ������', '2024-09-01', (SELECT ������������ID FROM ������������ WHERE �������='artiom.t@example.com')),
('������� �����������', '2024-10-10', (SELECT ������������ID FROM ������������ WHERE �������='boris.salimov@example.com'));

GO

-- ������� �����������
INSERT INTO ����������� (��������, ��������, ����, ����������������)
VALUES
('������� ������ ������', '������������ ������������� ��� �� ��������� ������� �������� ������.', 30000, 7),
('��������� �������', '������ ������� ����� �� ��������� ��������.', 100000, 14),
('����������� ������ �������', '������� �� ������ ����������� �������� ������.', 70000, 10),
('�������', '������� ������ ���-��������� ����.', 60000, 12),
('������', '�������� ��������� ������.', 80000, 10),
('����', '����� �� ׸���� ����.', 25000, 7),
('����', '������ ���� �� ����.', 85000, 14),
('�������', '����������� �������� � �����������.', 90000, 10),
('���', '������� ��� ���!', 150000, 14),
('����������', '���������� ������� ����������.', 75000, 10),
('�������', '�������� � ����� ���� ���.', 80000, 12),
('�������', '��������� ������ �����.', 65000, 10),
('�������', '������� � ������.', 55000, 14),
('��������', '��������� ����� ���������� ������.', 120000, 10),
('����� ��������', '������ ��������� ��������� �������.', 180000, 14),
('���������', '����� � ����������� �������.', 95000, 10),
('������', '������� � ����������.', 70000, 12),
('�������', '������ ���� � ��������������.', 20000, 7),
('��������', '���������� �������.', 35000, 10),
('������', '����� � ��������.', 40000, 10),
('�������� �����', '������ ��������� �����������.', 100000, 14),
('������', '������� � ����������.', 120000, 10),
('���������', '������� � ������������� �������.', 75000, 14),
('�������', '������������ �������� �������.', 25000, 10),
('���������', '�������� ����� ����������.', 30000, 12),
('����� ������', '������� ������.', 150000, 14),
('�������', '������� ������� �������.', 35000, 10);

GO

-- ������� ������������
INSERT INTO ������������ (������ID, �����������ID, ����������, �������������)
VALUES
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='belov.andrey@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='������� ������ ������'), '2023-07-15', '2023-07-22'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='biryukova.svetlana@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='��������� �������'), '2023-08-10', '2023-08-24'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='vlasov.pavel@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='����������� ������ �������'), '2023-12-20', '2023-12-30'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='galkina.evgeniya@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), '2024-01-05', '2024-01-17'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='danetsko.rostislav@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='������'), '2024-02-15', '2024-02-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='efimova.darya@example.com')), -- 6
(SELECT �����������ID FROM ����������� WHERE ��������='����'), '2024-03-10', '2024-03-17'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='zhukov.mikhail@example.com')), -- 7
(SELECT �����������ID FROM ����������� WHERE ��������='����'), '2024-04-20', '2024-04-30'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='zarubina.anastasia@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), '2024-05-15', '2024-05-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='ignatev.oleg@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='���'), '2024-06-10', '2024-06-24'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='kalugina.tatyana@example.com')), -- 10
(SELECT �����������ID FROM ����������� WHERE ��������='����������'), '2024-07-15', '2024-07-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='kondratiev.sergey@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), '2024-08-10', '2024-08-20'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='kupcova.anna@example.com')), -- 12
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), '2024-09-15', '2024-09-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='lavrentiev.maxim@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), '2024-10-10', '2024-10-20'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='menshikova.olga@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='���������'), '2024-11-15', '2024-11-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='nasonov.igor@example.com')), -- 15
(SELECT �����������ID FROM ����������� WHERE ��������='������'), '2024-12-10', '2024-12-20'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='orekhova.nina@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='����� ��������'), '2025-01-15', '2025-01-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='patrushhev.kirill@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), '2025-02-10', '2025-02-20'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='ponomaryova.elena@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='������'), '2025-03-15', '2025-03-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='radchenko.ruslan@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='���������'), '2025-04-10', '2025-04-20'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='samsonova.viktoria@example.com')), -- 20
(SELECT �����������ID FROM ����������� WHERE ��������='���������'), '2025-05-15', '2025-05-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='tarasov.egor@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�����'), '2025-06-10', '2025-06-20'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='uvorava.evgeniya@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�����'), '2025-07-15', '2025-07-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='filatov.roman@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='����� �����'), '2025-08-10', '2025-08-20'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='khudyakov.yaroslav@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), '2025-09-15', '2025-09-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='cherkesova.elena@example.com')), -- 25
(SELECT �����������ID FROM ����������� WHERE ��������='���������'), '2025-10-10', '2025-10-20'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='shabalin.georgiy@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='������'), '2025-11-15', '2025-11-25'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='shabalin.georgiy@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='����� ������'), '2025-12-10', '2025-12-20');

GO

-- ������� ������
INSERT INTO ������ (������ID, �����������ID, ������, �����������)
VALUES
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='belov.andrey@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='������� ������ ������'), 5, '����� ���������� ���������� ������, ����� ������ ������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='biryukova.svetlana@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='��������� �������'), 4, '����� ��������, ����� �������, ������ ��������� �������� �� ���������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='vlasov.pavel@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='����������� ������ �������'), 5, '�������� �������� �����, ������������ ���� � ������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='galkina.evgeniya@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), 4, '������� �����, �������� �����, ������ ��������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='danetsko.rostislav@example.com')), -- 5
(SELECT �����������ID FROM ����������� WHERE ��������='������'), 5, '�������������� ������� �������, ������������ �����������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='efimova.darya@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='����'), 4, '���������������� ������� ������, ������� ����������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='zhukov.mikhail@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='����'), 5, '����� � ������������ �����, ������� ������ �������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='zarubina.anastasia@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), 4, '������� ����� � ���������� �����������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='ignatev.oleg@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='���'), 5, '������ ������ ������� ���-���� � ���-��������, ����� �������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='kalugina.tatyana@example.com')), -- 10
(SELECT �����������ID FROM ����������� WHERE ��������='����������'), 4, '���������� ������, ������ ������ ���������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='kondratiev.sergey@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), 5, '��������� ��������� �������� ����� ������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='lavrentiev.maxim@example.com')), -- 12
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), 4, '����� ���������� ����, �� ���� ������������ ��������� ����.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='lavrentiev.maxim@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), 5, '���������� ���������, ������ ���������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='menshikova.olga@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='���������'), 4, '����������� �����������, ����������� �������� ������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='nasonov.igor@example.com')), -- 15
(SELECT �����������ID FROM ����������� WHERE ��������='������'), 5, '���������� ������, ���������� ����� � ������� ���.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='orekhova.nina@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='����� ��������'), 4, '������������ �������, �������������� ��������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='patrushhev.kirill@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), 5, '�����, ����� � ����������� �������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='ponomaryova.elena@example.com')), -- 18
(SELECT �����������ID FROM ����������� WHERE ��������='������'), 4, '������������ ���������� ��� � ������������ �����.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='radchenko.ruslan@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='���������'), 5, '��������� ����� ����� ���������� ��������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='samsonova.viktoria@example.com')), -- 20
(SELECT �����������ID FROM ����������� WHERE ��������='���������'), 4, '��������� ���� � ���������� ��������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='tarasov.egor@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�����'), 5, '������ ������� ������������ � ������ ������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='uvorava.evgeniya@example.com')), -- 22
(SELECT �����������ID FROM ����������� WHERE ��������='�����'), 4, '���������� ����� � ����� ��������� ��������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='filatov.roman@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='����� �����'), 5, '����������� ����, ������������ ����� � ����.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='khudyakov.yaroslav@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='�������'), 4, '���������� ������� � ������ ��������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='cherkesova.elena@example.com')), -- 25
(SELECT �����������ID FROM ����������� WHERE ��������='���������'), 5, '������� �������� �������������� � �������� �������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='shabalin.georgiy@example.com')), 
(SELECT �����������ID FROM ����������� WHERE ��������='������'), 4, '�������� ������������ ����� � ������� �������.'),
((SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='shabalin.georgiy@example.com')), -- 27
(SELECT �����������ID FROM ����������� WHERE ��������='����� ������'), 5, '�������������� �������� �� ������������ ������.');

GO

-- ������� ����
INSERT INTO ���� (������������ID, ����������, �����, �����������)
VALUES
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='belov.andrey@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='������� ������ ������')), 
GETDATE(), 30000, '���������� �������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='biryukova.svetlana@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='��������� �������')), 
GETDATE(), 100000, '��������� �����'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='vlasov.pavel@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='����������� ������ �������')), 
GETDATE(), 70000, '����������� ������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='galkina.evgeniya@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='�������')), 
GETDATE(), 60000, '������� ����� ���������� �����'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='danetsko.rostislav@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='������')), 
GETDATE(), 80000, '��������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='efimova.darya@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='����')), 
GETDATE(), 25000, '��������-�������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='zhukov.mikhail@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='����')), 
GETDATE(), 90000, '��������� � �����'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='zarubina.anastasia@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='�������')), 
GETDATE(), 90000, '����� ��������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='ignatev.oleg@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='���')), 
GETDATE(), 150000, '����������� �������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='kalugina.tatyana@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='����������')), 
GETDATE(), 75000, '������ ����� ��������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='kondratiev.sergey@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='�������')), 
GETDATE(), 80000, '������ ������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='lavrentiev.maxim@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='�������')), 
GETDATE(), 65000, '������ ������ ������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='lavrentiev.maxim@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='�������')), 
GETDATE(), 55000, '� ���������� �����'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='menshikova.olga@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='���������')), 
GETDATE(), 75000, '���������� ������ ������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='nasonov.igor@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='������')), 
GETDATE(), 120000, '���������� �����'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='orekhova.nina@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='����� ��������')), 
GETDATE(), 180000, '���������� �������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='patrushhev.kirill@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='�������')), 
GETDATE(), 95000, '������ � ���������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='ponomaryova.elena@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='������')), 
GETDATE(), 70000, '���������� �����'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='radchenko.ruslan@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='���������')), 
GETDATE(), 90000, '������ � �����'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='samsonova.viktoria@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='���������')), 
GETDATE(), 70000, '���������� ��������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='tarasov.egor@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='�����')), 
GETDATE(), 35000, '����������� ������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='uvorava.evgeniya@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='�����')), 
GETDATE(), 40000, '��������� � �����'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='filatov.roman@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='����� �����')), 
GETDATE(), 120000, '������ ���������� �������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='khudyakov.yaroslav@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='�������')), 
GETDATE(), 25000, '������ ����� ��������� ����������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='cherkesova.elena@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='���������')), 
GETDATE(), 30000, '���������� ��������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='shabalin.georgiy@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='������')), 
GETDATE(), 150000, '�������� ������'),
((SELECT ������������ID FROM ������������ WHERE ������ID=(SELECT ������ID FROM ������� WHERE ������������ID=(SELECT ������������ID FROM ������������ WHERE �������='shabalin.georgiy@example.com')) AND �����������ID=(SELECT �����������ID FROM ����������� WHERE ��������='����� ������')), 
GETDATE(), 150000, '���������� �����');

GO