-- CMPUT 291 Fall 2019 Lab Quiz 1
-- create and populate your database using this file

drop table if exists cats;
drop table if exists food;
drop table if exists favourite;

create table cats(
    name    char(10),
    gender  char(1),
    age     integer,
    breed   char(50),
    color   char(20),
    PRIMARY KEY (name)
);

create table food(
    productID   integer,
    brand       char(10),
    type        char(10),
    flavor      char(10),
    PRIMARY KEY (productID)
);


create table favourite(
    catname     char(10),
    productID   integer,
    PRIMARY KEY (catname, productID),
    FOREIGN KEY (catname) REFERENCES cats(name),
    FOREIGN KEY (productID) REFERENCES food(productID)
);

insert into cats values ('Samba', 'f', 5, 'domestic shorthair', 'brown');
insert into cats values ('Simba', 'm', 5, 'british shorthair', 'grey');
insert into cats values ('Oreo', 'm', 6, 'bobtail', 'dark grey');
insert into cats values ('Chili', 'm', 10, 'domestic shorthair', 'black');
insert into cats values ('Waltz', 'f', 4, 'domestic shorthair', 'brown');
insert into cats values ('Romeo', 'm', 8, 'british shorthair', 'brown');
insert into cats values ('Riley', 'f', 9, 'domestic shorthair', 'brown');


insert into food values (1, 'brand A', 'canned', 'chicken');
insert into food values (2, 'brand A', 'dry', 'fish');
insert into food values (3, 'brand A', 'canned', 'salmon');
insert into food values (4, 'brand A', 'dry', 'chicken');
insert into food values (5, 'brand B', 'dry', 'fish');
insert into food values (6, 'brand B', 'dry', 'salmon');
insert into food values (7, 'brand B', 'dry', 'chicken');
insert into food values (8, 'brand B', 'dry', 'fish');
insert into food values (9, 'brand B', 'dry', 'chicken');
insert into food values (10, 'brand C', 'dry', 'chicken');
insert into food values (11, 'brand C', 'canned', 'salmon');
insert into food values (12, 'brand C', 'dry', 'fish');
insert into food values (13, 'brand C', 'dry', 'salmon');

insert into favourite values ('Samba', 3);
insert into favourite values ('Samba', 5);
insert into favourite values ('Samba', 7);
insert into favourite values ('Simba', 3);
insert into favourite values ('Simba', 4);
insert into favourite values ('Simba', 6);
insert into favourite values ('Chili', 7);
insert into favourite values ('Oreo', 6);
insert into favourite values ('Waltz', 1);
insert into favourite values ('Waltz', 2);
insert into favourite values ('Waltz', 3);
insert into favourite values ('Riley', 10);
insert into favourite values ('Romeo', 10);
insert into favourite values ('Romeo', 13);