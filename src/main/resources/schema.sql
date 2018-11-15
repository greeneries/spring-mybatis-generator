drop table if exists emp;

create table emp (
	empno bigint identity not null primary key,
	ename varchar(100),
	job varchar(100),
	sal bigint
);

drop table if exists member;
CREATE TABLE member (
  empno int(11) NOT NULL DEFAULT 0,
  ename varchar(100) DEFAULT NULL,
  job varchar(100) DEFAULT NULL,
  sal double DEFAULT NULL
);
