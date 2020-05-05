-- haven't established schema yet, as I will be using amazon s3 for storing and rendering media
/*  Execute this file from the command line by typing:
 *    mysql -u root -p < schema.sql
 *  to create the database and the tables.*/

 DROP DATABASE IF EXISTS product_images;

 CREATE DATABASE product_images;

 use product_images;

 CREATE TABLE small_images (
  id int not null auto_increment,
  smallUrl varchar(60),
  styleId int not null,
  PRIMARY key (id)
 );

 CREATE TABLE default_images (
  id int not null auto_increment,
  url varchar(100),
  styleId int not null,
  PRIMARY key (id)
 );

insert into default_images(url, styleId) values ("http://tiny.cc/r7lxlz", 0);
insert into default_images(url, styleId) values ("http://tiny.cc/gkmxlz", 0);
insert into default_images(url, styleId) values ("http://tiny.cc/flmxlz", 0);
insert into default_images(url, styleId) values ("http://tiny.cc/komxlz", 0);
insert into default_images(url, styleId) values ("http://tiny.cc/gpmxlz", 0);
insert into default_images(url, styleId) values ("http://tiny.cc/hqmxlz", 0);