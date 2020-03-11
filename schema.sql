-- haven't established schema yet, as I will be using amazon s3 for storing and rendering media
/*  Execute this file from the command line by typing:
 *    mysql -u root -p < schema.sql
 *  to create the database and the tables.*/

 DROP DATABASE item_information;

 CREATE DATABASE item_information;

 use item_information;

 CREATE TABLE small_images (
  id int not null auto_increment,
  small_url varchar(60),
  PRIMARY key (id)
 );

CREATE TABLE medium_images (
  id int not null auto_increment,
  medium_url varchar(60),
  PRIMARY key (id)
 );

CREATE TABLE large_images (
  id int not null auto_increment,
  large_url varchar(60),
  PRIMARY key (id)
 );

 insert into small_images(small_url) values ("https://picsum.photos/id/0/60/60");
 insert into medium_images(medium_url) values ("https://picsum.photos/id/0/350/500");
 insert into large_images(large_url) values ("https://picsum.photos/id/0/500/700");