-- �������� ��������� �������� ��� ������� "�������"
ALTER TABLE ������������
ADD CONSTRAINT FK_������������_�������
FOREIGN KEY (������ID)
REFERENCES �������(������ID)
ON DELETE CASCADE;

ALTER TABLE ������
ADD CONSTRAINT FK_������_�������
FOREIGN KEY (������ID)
REFERENCES �������(������ID)
ON DELETE CASCADE;

-- �������� ��������� �������� ��� ������� "������������"
ALTER TABLE ����
ADD CONSTRAINT FK_����_������������
FOREIGN KEY (������������ID)
REFERENCES ������������(������������ID)
ON DELETE CASCADE;