-- 18c, 세션 설정
ALTER SESSION SET "_ORACLE_SCRIPT"=true;

-- 계정생성 = DB
CREATE USER madang IDENTIFIED BY 12345;

-- 계정등록 권한
grant connect, resource to madang;

-- 계정비번 변경 
ALTER user madang IDENTIFIED BY 12345;

-- 기본계정 데이터 추가(예제용, 현재 작동 안함)
-- ALTER user scott account unlock

-- 다른 데이터베이스 접근 권한 제공(GRANT)
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to madang;

-- ==============================================

CREATE USER guest IDENTIFIED BY 12345;
grant connect, resource to guest;
grant CREATE table, CREATE session, CREATE view, CREATE sequence, CREATE procedure to guest;
