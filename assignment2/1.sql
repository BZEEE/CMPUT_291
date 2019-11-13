.print Question 1 - bjzukows

Select p.fname, p.lname, p.phone
From persons AS p, vehicles As v, registrations As r
Where 
v.make = 'Chevrolet' And 
v.model = 'Camaro' And 
v.year = '1969' And 
r.vin = v.vin And
r.fname = p.fname And
r.lname = p.lname