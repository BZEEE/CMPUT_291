.print Question 9 - bjzukows

CREATE VIEW personDetails(fname, lname, bdate, bplace, carsowned, ticketsRcvd)
As Select p.fname, p.lname, p.bdate, p.bplace, COUNT(r.regno), COUNT(t.tno)
From persons As p, registrations As r, tickets As t, vehicles As v
Where r.vin = v.vin         -- vehicle is registered
And r.fname = p.fname       -- registration matches first name
And r.lname = p.lname       -- registration matches last name
And r.regno = t.regno