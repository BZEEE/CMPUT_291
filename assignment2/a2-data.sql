-- Data prepared by Jacques Leong-Sit, jleongsi@ualberta.ca
-- Published on Sept 27, 2019

-- This file contains data
-- published by Davood Rafiei on Sept 26, 2019

insert into persons values ('Michael','Fox','1961-06-09','Edmonton, AB','Manhattan, New York, US', '212-111-1111');
insert into persons values ('Walt', 'Disney', '1901-12-05', 'Chicago, US', 'Los Angeles, US', '213-555-5555');
insert into persons values ('Lillian', 'Bounds', '1899-02-15', 'Spalding, Idaho', 'Los Angeles, US', '213-555-5556');
insert into persons values ('John', 'Truyens', '1907-05-15', 'Flanders, Belgium', 'Beverly Hills, Los Angeles, US', '213-555-5558');
insert into persons values ('Mickey', 'Mouse', '1928-01-05', 'Disneyland', 'Anaheim, US', '714-555-5551');
insert into persons values ('Minnie', 'Mouse', '1928-01-05', 'Disneyland', 'Anaheim, US', '714-555-5552');
-- Let's keep Davood always 21 years old!!
insert into persons values ('Davood','Rafiei',date('now','-21 years'),'Iran','100 Lovely Street,Edmonton,AB', '780-111-2222');

insert into persons values ('Bob','Jansen','1940-04-18','Sydney, Australia','123 Fake Street, Calgary, AB','576-198-1874');
insert into persons values ('Scott','Sidhu','1999-07-13','Santo Domingo, DR','201 Noteezee Avenue, Santo Domingo','792-137-7264');
insert into persons values ('Katelyn','DeMarcus','1938-01-20','Greenwich, England','229 Evinwurss Close, Edmonton','913-871-2874');
insert into persons values ('Ulga','Brown','1965-10-07','Campeche, Mexico','291 Goh Wing Bhetter Road, England','716-582-2984');
insert into persons values ('Gill','Lungs','1985-12-29','Atlantis City','902 Ocean Drive, Edinburgh','578-371-9813');
insert into persons values ('Jenny','Palooza','1920-11-29','London, England','5793 Renauld Street, PEI','289-872-1874');
insert into persons values ('Jason','Palooza','1921-08-19','London, England','5793 Renauld Street, PEI','578-371-9813');
insert into persons values ('Caren','Moose','1967-06-01','Edmonton, AB','2982 Hallard Way, PEI','982-489-1983');
insert into persons values ('John','Wick','1990-12-03','Edmonton, AB','2982 Hallard Way, PEI','297-198-1984');
insert into persons values ('Lady','Luck','1960-10-04','Edmonton, AB','298 Henry Drive, PEI','489-298-3287');
insert into persons values ('Twin','Wick','1990-12-03','Edmonton, AB','2982 Hallard Way, PEI','298-197-5737');

insert into births values (100,'Mickey', 'Mouse', '1928-02-05', 'Anaheim, US', 'M', 'Walt', 'Disney', 'Lillian', 'Bounds');
insert into births values (200,'Minnie', 'Mouse', '1928-02-04', 'Anaheim, US', 'M', 'Walt', 'Disney', 'Lillian', 'Bounds');

insert into births values (300,'Michael','Fox','1961-06-09','Edmonton, AB','M','Bob','Jansen','Katelyn','DeMarcus');
insert into births values (400,'Gill','Lungs','1985-12-29','Atlantis City','M','Bob','Jansen','Katelyn','DeMarcus');
insert into births values (500,'Bob','Jansen','1940-04-18','Sydney, Australia','M','Jason','Palooza','Jenny','Palooza');
insert into births values (600,'Ulga','Brown','1965-10-07','Campeche, Mexico','F','Bob','Jansen','Katelyn','DeMarcus');
insert into births values (700,'Scott','Sidhu','1999-07-13','Santo Domingo, DR','M','Michael','Fox','Caren','Moose');
insert into births values (800,'John','Wick','1990-12-03','Edmonton, AB','M','Michael','Fox','Caren','Moose');
insert into births values (900,'Twin','Wick','1990-12-03','Edmonton, AB','M','Michael','Fox','Caren','Moose');

-- Partner names can be given in any order (as can be noted)
insert into marriages values (200, '1925-07-13', 'Idaho, US', 'Walt', 'Disney', 'Lillian', 'Bounds');
insert into marriages values (201, '1969-05-03', 'Los Angeles, US', 'Lillian', 'Bounds', 'John', 'Truyens');

insert into marriages values (202,'1980-01-06','Edmonton, AB','Michael','Fox','Caren','Moose');
insert into marriages values (203,'2000-04-17','Edmonton, AB','Michael','Fox','Lady','Luck');

insert into vehicles values ('U200', 'Chevrolet', 'Camaro', 1969, 'red');
insert into vehicles values ('U300', 'Mercedes', 'SL 230', 1964, 'black');

insert into vehicles values ('U400','Acura','MDX','2016','white');
insert into vehicles values ('U500','Acura','RDX','2016','black');
insert into vehicles values ('U600','Acura','MDX','2016','red');
insert into vehicles values ('U700','Ford','F150','2016','white');
insert into vehicles values ('U800','Ford','F150','2015','black');
insert into vehicles values ('U900','Jeep','Wrangler','2015','red');
insert into vehicles values ('U1000','Honda','Civic','2012','blue');
insert into vehicles values ('U1100','Toyota','Camry','2012','green');
insert into vehicles values ('U1200','Subaru','Impreza','2012','white');
insert into vehicles values ('U1300','Subaru','Forester','2001','white');
insert into vehicles values ('U1400','BMW','E30','1980','white');
insert into vehicles values ('U1500','Ford','Fiesta','2004','white');

insert into registrations values (300, '1964-05-26','1965-05-25', 'DISNEY','U300', 'Walt', 'Disney');
insert into registrations values (302, '1980-01-16','1981-01-15', 'LILLI','U200', 'Lillian', 'Bounds');

insert into registrations values (304,'2018-12-12','2019-12-11','ABC-123','U400','John','Wick');
insert into registrations values (306,'1970-06-11','1971-06-10','BCD-234','U200','Jason','Palooza');
insert into registrations values (308,'2019-08-12','2020-08-11','CDE-345','U500','Gill','Lungs');
insert into registrations values (310,'2019-05-12','2020-05-11','DEF-456','U600','Jason','Palooza');
insert into registrations values (312,'2019-04-12','2020-04-11','EFG-567','U700','Caren','Moose');
insert into registrations values (314,'2019-03-12','2020-03-11','FGH-678','U800','Lady','Luck');
insert into registrations values (316,'2019-02-12','2020-02-11','GHI-789','U900','Lady','Luck');
insert into registrations values (318,'2019-01-12','2020-01-11','HIJ-890','U1000','Twin','Wick');

insert into tickets values (400,300,4,'speeding','1964-08-20');

insert into tickets values (401,304,50,'red light','2019-03-27');
insert into tickets values (402,304,40,'speeding','2019-04-07');
insert into tickets values (403,304,100,'texting','2019-05-13');
insert into tickets values (404,306,30,'speeding','1970-07-27');
insert into tickets values (405,306,500,'sleeping','1971-03-17');
insert into tickets values (406,306,50,'red light','1970-08-17');
insert into tickets values (407,308,20,'parking','2019-09-27');
insert into tickets values (408,314,20,'parking','2019-08-27');
insert into tickets values (409,308,120,'drinking','2019-09-06');
insert into tickets values (410,310,50,'red light','2019-07-08');

insert into demeritNotices values ('1964-08-20', 'Walt', 'Disney', 2, 'Speeding');

insert into demeritNotices values ('2019-09-06','Gill','Lungs',20,'drinking');
insert into demeritNotices values ('2019-04-07','John','Wick',8,'speeding');
insert into demeritNotices values ('2019-05-13','John','Wick',8,'texting');
insert into demeritNotices values ('1970-03-17','Jason','Palooza',20,'sleeping');
insert into demeritNotices values ('2019-08-27','Lady','Luck',5,'parking');