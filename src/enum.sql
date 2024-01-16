create type roles as enum ('Admin', 'User');

alter type roles add value 'STUDENT';

create table people(
    id serial, role roles
);

insert into people(role)
values ('Admin'),
       ('STUDENT');

select * from people;