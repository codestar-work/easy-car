drop user vin@'%';
drop database easy_car;

create user vin@'%' identified by 'diesel';
create database easy_car default charset='utf8';
grant all on easy_car.* to vin@'%';

use easy_car;

create table product(
    id         serial,    
    topic      varchar(1000),
    detail     varchar(10000),
    make       varchar(100),
    model      varchar(200),
    submodel   varchar(200),
    year       integer,
    color      varchar(100),
    mile       integer,
    price      integer,
    gas        varchar(10),
    owner      bigint
);


create table member(
    id      serial,
    name    varchar(200),
    first_name varchar(200),
    last_name  varchar(200),
    phone      varchar(200)
);
alter table member add password char(2000);

insert into member(name, first_name, 
last_name, phone)
values('vin', 'Vin', 'Diesel', '08312345678');

update member set password = sha2('xXx', 512) where id=1;