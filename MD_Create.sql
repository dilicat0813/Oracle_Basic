-- 18c, ���� ����
ALTER SESSION SET "_ORACLE_SCRIPT"=true;

-- �������� = DB
CREATE USER madang IDENTIFIED BY 12345;

-- ������� ����
grant connect, resource to madang;

-- ������� ���� 
ALTER user madang IDENTIFIED BY 12345;

-- �⺻���� ������ �߰�(������, ���� �۵� ����)
-- ALTER user scott account unlock

-- �ٸ� �����ͺ��̽� ���� ���� ����(GRANT)
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to madang;

-- ==============================================

CREATE USER guest IDENTIFIED BY 12345;
grant connect, resource to guest;
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to guest;
