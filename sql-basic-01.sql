create schema netology;

# 1. Скрипт создания таблицы с заданными параметрами параметрами:
create table PERSONS
(
    name           varchar(100) not null,
    surname        varchar(100) not null,
    age            int check ( 0 <age < 120 ),
    phone_number   varchar(13) check ( 10 < phone_number),
    city_of_living varchar(25)  not null,
    primary key (name, surname, age)
);

# 1.1 Добавление данных в таблицу
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Иван','Иванов','18','+79045450054','Москва');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Петр','Петров','20','89991234567','Казань');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Валентин','Сидоров','28','+79011234567','Москва');
insert into PERSONS (name, surname, age, phone_number, city_of_living)
values ('Елена','Шатыгина','35','89221234567','Екатеринбург');

# 2. Скрипт, ищущий в таблице PERSONS поля name и surname пользователей,проживающих в MOSCOW.
select name, surname from PERSONS where city_of_living = 'Москва';

# 3. Скрипт ищущий в таблице PERSONS все поля, у которых поле age выше 27 лет
select * from PERSONS where age >27 order by age desc;