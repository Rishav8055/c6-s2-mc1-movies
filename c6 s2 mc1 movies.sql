create database movies;
use movies;
create table movie(
title varchar(30),
 budget_in_millions INT not null,
 realease_date varchar(20) not null,
 revenue_in_millions INT not null,
 rating_average float not null);
 describe movie;
 insert into movie value('AVATAR',237,'10-12-2009',278,7.2);
 insert into movie value('TITANIC',200,'18-11-1997',185,7.5);
 insert into movie value('THE AVENGERS',220,'25-04-2012',152,7.4);
 insert into movie value('JURASSIC WORLD',150,'09-06-2015',151,6.5);
 insert into movie value('FURIOUS 7',190,'01-04-2015',150,7.3);
 insert into movie value('THE AVENGER AGE OF ULTRON',280,'22-04-2015',141,7.3);
 insert into movie value('IRON MAN 3',200,'18-04-2013',122,6.8);
 insert into movie value('MINIONS',74,'17-06-2015',11,6.4);
 insert into movie value('CAPTAIN AMERICA: CIVIL WAR',250,'27-04-2016',115,7.1);
 insert into movie value('TRANSFORMERS: DARK OF THE MOON',195,'28-06-2011',112,6.1);
 select * from movie;
 select * from movie where title='JURASSIC WORLD' OR rating_average= 6.5;
 select * from movie where rating_average >= 7;
 select * from movie where title= 'THE AVENGERS';
 select title,rating_average from movie where rating_average between 7 and 8;
 select title from movie where budget_in_millions >=250;
 select title, rating_average from movie where  revenue_in_millions between 150 and 200;
 select title, realease_date from movie where  title like 'T%';
 select sum(revenue_in_millions) from movie;
 select title,revenue_in_millions from movie where revenue_in_millions= (select min(revenue_in_millions) from movie);
 
 
 