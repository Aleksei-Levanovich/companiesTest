drop table user_role;
drop table users;
drop table roles;

create table users(
  id int not null auto_increment primary key,
  name varchar(255) not null,
  secondName varchar(255),
  surname varchar(255) not null,
  login varchar(255) unique not null,
  password varchar(255)
) engine=InnoDB;

create table roles(
  id int not null auto_increment primary key,
  role_name varchar(255)
) engine=InnoDB;

create table user_role(
  user_id int,
  role_id int,
  PRIMARY KEY (user_id, role_id),
  foreign key fk_user(user_id) references users(id),
  foreign key fk_role(role_id) references roles(id)
) engine=InnoDB;
 
