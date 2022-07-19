create database moneytree;

create table expenses(
  id serial primary key,
  name varchar(25),
  type varchar(25),
  amount decimal,
  date date
);

create table incomes(
  id serial primary key,
  
  channel varchar(35),
  amount decimal,
  date date
);

create table budget(
  id serial primary key,
  
  budget_amount integer
   
);

CREATE TABLE goals (
id serial primary key,
imageurl text,
title text,
amount integer,
date date
);

INSERT INTO goals (imageurl, title, amount,date)
VALUES ('https://cdn1.parksmedia.wdprapps.disney.com/resize/mwImage/1/1600/900/75/dam/disneyland/attractions/disneyland/sleeping-beauty-castle-walkthrough/sleeping-beauty-castle-exterior-16x9.jpg?1593556896598','DISNEYLAND TRIP', 3000, '2022-12-25');

select type, SUM(amount) as "total" from expenses group by type order by total desc;

select * from expenses where extract(month from date)=7;

select type, SUM (amount) as "total" from expenses where extract(month from date)=7 group by type ;
