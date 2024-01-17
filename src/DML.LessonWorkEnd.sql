create table if not exists programmers(
                                          id serial primary key,
                                          first_name varchar(50) not null ,
                                          last_name varchar(50) not null ,
                                          date_of_birth date,
                                          gender varchar(10) check ( gender='Male' or gender='Female'),
                                          email varchar (100) unique not null ,
                                          programming_language varchar (50) not null ,
                                          experience int,
                                          salary numeric default (1000),
                                          phone_number varchar(13)
);

drop table programmers;
select * from programmers;

truncate table programmers;

INSERT INTO programmers (first_name, last_name, date_of_birth, gender, email, programming_language, experience, salary, phone_number)
VALUES
    ('Nurislam', 'Toigonbaev', '1998-05-15', 'Male', 'nurislam@email.com', 'Java', 5, 60000.00, '+996701234567'),
    ('Nurlan', 'Abibilaev', '2003-09-22', 'Male', 'nurlan@email.com', 'Python', 3, 55000.50, '+996702345678'),
    ('Gulumkan', 'Uson kyzy', '2002-03-10', 'Female', 'gulumkan@email.com', 'JavaScript', 2, 50000.75, '+996703456789'),
    ('Baha', 'Zharkinbaev', '2001-12-05', 'Male', 'baha@email.com', 'C#', 4, 62000.25, '+996704567890'),
    ('Mirlan', 'Arstanbekov', '2002-06-18', 'Male', 'mirlan@email.com', 'Ruby', 6, 70000.00, '+996705678901'),
    ('Nurtaazim', 'Mukanov', '2004-01-30', 'Male', 'nurtaazim@email.com', 'C++', 1, 48000.00, '+996706789012'),
    ('Aliaskar', 'Temirbekov', '2000-11-12', 'Male', 'aliaskar@email.com', 'Java', 7, 75000.00, '+996707890123'),
    ('Zhigit', 'Turumbekov', '2001-07-25', 'Male', 'zhigit@email.com', 'Python', 5, 60000.50, '+996708901234'),
    ('Aiturgan', 'Maksatbek kyzy', '2004-04-08', 'Female', 'aiturgan@email.com', 'JavaScript', 3, 55000.75, '+996709012345'),
    ('Nurmukhammed', 'Medetov', '2000-09-19', 'Male', 'nurmukhammed@email.com', 'C#', 2, 50000.00, '+996709876543'),
    ('Nurkamil', 'Kamchyev', '1997-12-03', 'Male', 'nurkamil@email.com', 'Ruby', 4, 62000.50, '+996708765432'),
    ('Muktarbek', 'Elebesov', '2005-05-28', 'Male', 'muktarbek@email.com', 'C++', 6, 70000.25, '+996707654321'),
    ('Urmat', 'Taichikov', '1998-08-15', 'Male', 'urmat@email.com', 'Java', 1, 48000.50, '+996706543210'),
    ('Myrzaiym', 'Keldibekova', '2003-11-02', 'Female', 'myrzaiym@email.com', 'Python', 7, 75000.50, '+996705432109'),
    ('Nurgazy', 'Temiraliev', '1995-02-14', 'Male', 'nurgazy@email.com', 'JavaScript', 5, 60000.75, '+996704321098'),
    ('Adyl', 'Tolomushov', '2006-05-21', 'Male', 'adyl@email.com', 'C#', 3, 55000.00, '+996703210987'),
    ('Abdurashid', 'Jusupov', '199-10-09', 'Male', 'abdurashid@email.com', 'Ruby', 2, 50000.25, '+996702109876'),
    ('Zeinep', 'Alapaeva', '1997-03-28', 'Female', 'zeinep@email.com', 'C++', 4, 62000.75, '+996701098765'),
    ('Zaripbek', 'Dushoev', '1999-06-15', 'Male', 'zaripbek@email.com', 'Java', 6, 70000.50, '+996701987654'),
    ('Ajybek', 'Sadykov', '2008-09-01', 'Male', 'ajybek@email.com', 'Python', 1, 48000.75, '+996702876543'),
    ('Nurmukhammed', 'Rusbaev', '2007-02-18', 'Male', 'nurmukham_med@email.com', 'JavaScript', 7, 75000.75, '+996703765432'),
    ('Nurtilek', 'Abdippataev', '1995-07-11', 'Male', 'nurtilek@email.com', 'C#', 5, 60000.00, '+996704654321'),
    ('Nuraida', 'Myrzalim kyzy', '2005-12-30', 'Female', 'nuraida@email.com', 'Ruby', 3, 55000.25, '+996705543210'),
    ('Kandybek', 'Isaev', '1990-03-17', 'Male', 'kandybek@email.com', 'C++', 2, 50000.50, '+996706432109'),
    ('Jandar', 'Taalaibekov', '1998-06-24', 'Male', 'jandar@email.com', 'Java', 4, 62000.00, '+996707321098'),
    ('Baktygul', 'Jumagazy kyzy', '2000-09-09', 'Female', 'baktygul@email.com', 'Python', 6, 70000.25, '+996708210987');


select * from programmers;

select first_name as name, last_name as surname,programming_language from programmers;

select first_name, last_name, salary*12 as anual_salary from programmers;

select concat(first_name,' ',last_name)as full_name from programmers;

select * from programmers order by experience desc ;

select distinct programming_language from programmers;

select * from programmers where experience>=3;

select * from programmers where id in(13,5,2);
select * from programmers;

select * from programmers where experience>2 and programming_language='Java';

select * from programmers limit 5;

select * from programmers offset 6 limit 5;

select * from programmers offset 5 rows fetch first 5 rows only;

select * from programmers where programming_language in('C#','Java');
select * from programmers where programming_language not in('C#');

select * from programmers where experience between 4 and 6;
select * from programmers where experience not between 4 and 6;

select * from programmers where first_name like 'Nur%';
select * from programmers where first_name ILIKE  'nur%';

select gender, count(gender) from programmers group by gender;
select gender, count(p) from programmers p group by gender;

select gender, count(gender) from programmers group by gender having count(*)>=2;

select count(programmers) from programmers;

select max(experience), min(experience) from programmers;

select avg(salary) from programmers;

select round(avg(salary),2) as round_salary from programmers;
select round(avg(salary)) as round_salary from programmers;

select sum(salary) as sum_salaries from programmers;

--coalesce--

delete from programmers where programming_language='C#';
select * from programmers;

update programmers set programming_language='Python' where experience <2;

select now() as current_date_time;

select now()- interval '1 year' as one_year_ago;

select
    extract (year from now()) as current_year,
    extract (month from now()) as current_month,
    extract (day from now()) as current_day,
    extract (dow from now()) as current_week,
    extract (century from now()) as current_century;
