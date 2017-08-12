
connect system/oracle;

drop user transeval cascade;

create user transeval
  identified by padifolio
  default tablespace users
  temporary tablespace temp;

grant create session to transeval;
grant create table to transeval;
grant create type to transeval;
grant create view to transeval;
grant create any trigger to transeval;
grant create any procedure to transeval;
grant create sequence to transeval;
grant create synonym to transeval;
grant unlimited tablespace to transeval;

