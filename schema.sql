-- haven't established schema yet, as I will be using amazon s3 for storing and rendering media
/*  Execute this file from the command line by typing:
 *    mysql -u root -p < schema.sql
 *  to create the database and the tables.*/

 DROP DATABASE product_images;

 CREATE DATABASE product_images;

 use product_images;

 CREATE TABLE small_images (
  id int not null auto_increment,
  smallUrl varchar(60),
  styleId int not null,
  PRIMARY key (id)
 );

CREATE TABLE medium_images (
  id int not null auto_increment,
  mediumUrl varchar(60),
  styleId int not null,
  PRIMARY key (id)
 );

CREATE TABLE large_images (
  id int not null auto_increment,
  largeUrl varchar(60),
  styleId int not null,
  PRIMARY key (id)
);


insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/0/60/60", 0);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/100/60/60", 0);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/110/60/60", 0);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/0/350/500", 0);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/100/350/500", 0);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/110/350/500", 0);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/0/500/700", 0);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/100/500/700", 0);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/110/500/700", 0);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/1/60/60", 1);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/101/60/60", 1);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/111/60/60", 1);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/1/350/500", 1);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/101/350/500", 1);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/111/350/500", 1);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/1/500/700", 1);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/101/500/700", 1);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/111/500/700", 1);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/2/60/60", 2);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/200/60/60", 2);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/202/60/60", 2);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/2/350/500", 2);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/200/350/500", 2);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/202/350/500", 2);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/2/500/700", 2);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/200/500/700", 2);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/202/500/700", 2);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/3/60/60", 3);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/300/60/60", 3);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/303/60/60", 3);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/3/350/500", 3);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/300/350/500", 3);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/303/350/500", 3);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/3/500/700", 3);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/300/500/700", 3);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/303/500/700", 3);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/4/60/60", 4);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/400/60/60", 4);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/404/60/60", 4);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/4/350/500", 4);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/400/350/500", 4);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/404/350/500", 4);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/4/500/700", 4);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/400/500/700", 4);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/404/500/700", 4);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/5/60/60", 5);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/50/60/60", 5);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/51/60/60", 5);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/5/350/500", 5);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/50/350/500", 5);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/51/350/500", 5);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/5/500/700", 5);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/50/500/700", 5);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/51/500/700", 5);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/6/60/60", 6);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/60/60/60", 6);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/61/60/60", 6);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/6/350/500", 6);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/60/350/500", 6);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/61/350/500", 6);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/6/500/700", 6);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/60/500/700", 6);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/61/500/700", 6);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/7/60/60", 7);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/70/60/60", 7);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/71/60/60", 7);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/7/350/500", 7);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/70/350/500", 7);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/71/350/500", 7);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/7/500/700", 7);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/70/500/700", 7);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/71/500/700", 7);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/8/60/60", 8);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/80/60/60", 8);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/81/60/60", 8);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/8/350/500", 8);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/80/350/500", 8);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/81/350/500", 8);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/8/500/700", 8);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/80/500/700", 8);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/81/500/700", 8);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/9/60/60", 9);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/90/60/60", 9);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/91/60/60", 9);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/9/350/500", 9);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/90/350/500", 9);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/91/350/500", 9);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/9/500/700", 9);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/90/500/700", 9);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/91/500/700", 9);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/10/60/60", 10);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/107/60/60", 10);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/117/60/60", 10);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/10/350/500", 10);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/107/350/500", 10);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/117/350/500", 10);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/10/500/700", 10);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/107/500/700", 10);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/117/500/700", 10);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/11/60/60", 11);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/113/60/60", 11);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/123/60/60", 11);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/11/350/500", 11);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/113/350/500", 11);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/123/350/500", 11);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/11/500/700", 11);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/113/500/700", 11);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/123/500/700", 11);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/12/60/60", 12);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/121/60/60", 12);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/131/60/60", 12);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/12/350/500", 12);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/121/350/500", 12);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/131/350/500", 12);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/12/500/700", 12);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/121/500/700", 12);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/131/500/700", 12);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/13/60/60", 13);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/133/60/60", 13);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/143/60/60", 13);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/13/350/500", 13);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/133/350/500", 13);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/143/350/500", 13);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/13/500/700", 13);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/133/500/700", 13);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/143/500/700", 13);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/14/60/60", 14);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/140/60/60", 14);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/141/60/60", 14);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/14/350/500", 14);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/140/350/500", 14);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/141/350/500", 14);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/14/500/700", 14);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/140/500/700", 14);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/141/500/700", 14);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/15/60/60", 15);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/150/60/60", 15);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/151/60/60", 15);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/15/350/500", 15);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/150/350/500", 15);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/151/350/500", 15);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/15/500/700", 15);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/150/500/700", 15);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/151/500/700", 15);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/16/60/60", 16);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/160/60/60", 16);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/161/60/60", 16);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/16/350/500", 16);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/160/350/500", 16);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/161/350/500", 16);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/16/500/700", 16);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/160/500/700", 16);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/161/500/700", 16);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/17/60/60", 17);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/170/60/60", 17);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/171/60/60", 17);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/17/350/500", 17);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/170/350/500", 17);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/171/350/500", 17);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/17/500/700", 17);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/170/500/700", 17);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/171/500/700", 17);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/18/60/60", 18);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/180/60/60", 18);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/181/60/60", 18);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/18/350/500", 18);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/180/350/500", 18);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/181/350/500", 18);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/18/500/700", 18);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/180/500/700", 18);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/181/500/700", 18);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/19/60/60", 19);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/190/60/60", 19);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/191/60/60", 19);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/19/350/500", 19);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/190/350/500", 19);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/191/350/500", 19);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/19/500/700", 19);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/190/500/700", 19);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/191/500/700", 19);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/20/60/60", 20);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/220/60/60", 20);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/222/60/60", 20);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/20/350/500", 20);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/220/350/500", 20);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/222/350/500", 20);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/20/500/700", 20);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/220/500/700", 20);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/222/500/700", 20);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/21/60/60", 21);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/221/60/60", 21);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/231/60/60", 21);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/21/350/500", 21);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/221/350/500", 21);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/231/350/500", 21);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/21/500/700", 21);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/221/500/700", 21);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/231/500/700", 21);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/22/60/60", 22);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/224/60/60", 22);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/225/60/60", 22);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/22/350/500", 22);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/224/350/500", 22);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/225/350/500", 22);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/22/500/700", 22);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/224/500/700", 22);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/225/500/700", 22);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/23/60/60", 23);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/233/60/60", 23);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/235/60/60", 23);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/23/350/500", 23);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/233/350/500", 23);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/235/350/500", 23);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/23/500/700", 23);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/233/500/700", 23);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/235/500/700", 23);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/24/60/60", 24);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/244/60/60", 24);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/254/60/60", 24);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/24/350/500", 24);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/244/350/500", 24);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/254/350/500", 24);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/24/500/700", 24);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/244/500/700", 24);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/254/500/700", 24);


insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/25/60/60", 25);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/250/60/60", 25);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/251/60/60", 25);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/25/350/500", 25);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/250/350/500", 25);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/251/1350/500", 25);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/25/500/700", 25);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/250/500/700", 25);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/251/500/700", 25);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/26/60/60", 26);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/266/60/60", 26);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/267/60/60", 26);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/26/350/500", 26);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/260/350/500", 26);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/267/350/500", 26);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/26/500/700", 26);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/260/500/700", 26);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/267/500/700", 26);


insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/27/60/60", 27);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/277/60/60", 27);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/279/60/60", 27);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/27/350/500", 27);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/27/350/500", 27);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/279/350/500", 27);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/27/500/700", 27);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/276/500/700", 27);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/279/500/700", 27);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/28/60/60", 28);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/288/60/60", 28);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/289/60/60", 28);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/28/350/500", 28);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/288/350/500", 28);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/289/350/500", 28);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/28/500/700", 28);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/288/500/700", 28);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/28/500/700", 28);


insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/29/60/60", 29);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/299/60/60", 29);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/291/60/60", 29);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/29/350/500", 29);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/299/350/500", 29);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/291/350/500", 29);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/29/500/700", 29);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/299/500/700", 29);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/291/500/700", 29);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/30/60/60", 30);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/330/60/60", 30);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/331/60/60", 30);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/30/350/500", 30);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/330/350/500", 30);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/331/350/500", 30);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/30/500/700", 30);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/330/500/700", 30);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/331/500/700", 30);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/31/60/60", 31);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/336/60/60", 31);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/333/60/60", 31);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/31/350/500", 31);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/336/350/500", 31);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/333/350/500", 31);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/31/500/700", 31);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/336/500/700", 31);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/333/500/700", 31);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/32/60/60", 32);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/3044/60/60", 32);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/3042/60/60", 32);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/32/350/500", 32);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/3044/350/500", 32);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/3042/350/500", 32);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/32/500/700", 32);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/3044/500/700", 32);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/3042/500/700", 32);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/33/60/60", 33);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/3333/60/60", 33);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/3033/60/60", 33);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/33/350/500", 33);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/3333/350/500", 33);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/3033/350/500", 33);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/33/500/700", 33);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/3333/500/700", 33);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/3033/500/700", 33);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/34/60/60", 34);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/3400/60/60", 34);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/3401/60/60", 34);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/34/350/500", 34);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/3400/350/500", 34);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/3401/350/500", 34);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/34/500/700", 34);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/3400/500/700", 34);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/3401/500/700", 34);

insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/35/60/60", 35);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/355/60/60", 35);
insert into small_images(smallUrl, styleId) values ("https://picsum.photos/id/356/60/60", 35);

insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/35/350/500", 35);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/355/35/500", 35);
insert into medium_images(mediumUrl, styleId) values ("https://picsum.photos/id/356/350/500", 35);

insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/35/500/700", 35);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/355/500/700", 35);
insert into large_images(largeUrl, styleId) values ("https://picsum.photos/id/356/500/700", 35);