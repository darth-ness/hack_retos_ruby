drop table if exists students cascade;
drop table if exists mentor cascade;
drop table if exists persons cascade;
drop table if exists profiles cascade;

create table persons(
  id int primary key auto_increment,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  fecha_nac date not null,
  ci varchar(15) not null,
  nacionalidad varchar(15) not null,
  tipo_sangre enum('A+', 'A-', 'O-', 'O+', 'B') not null
);

create table student(
  id int primary key auto_increment,
  reference varchar(50),
  ocupacion int not null,
  id_cohorte int not null,
  foreign key id_persons references persons(id)
  -- foreign key (id_cohorte) references cohorte(id)
);
create table mentor(
  id int primary key auto_increment,
  fecha_ing date not null,
  fecha_prof date not null,
  fecha_grad date not null,
  id_persona int not null,
  foreign key id_persons references persons(id)
);
