/*
�� ������� LOCATIONS �������� ������ �������� ���������� ������������� �������������� (LOCATION_ID), 
������ �������� street � �����, ������������ ��������� ����� ���� � �������� � ������� STREET_ADDRESS.
��������: ������������� LTRIM.
*/

select location_id, ltrim(street_address, '1234567890 ') as street
from locations