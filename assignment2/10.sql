.print Question 10 - bjzukows

Select p.fname, p.lname, v.make, v.model
From personDetails As p, vehicles As v, registrations As r
Where p.fname = r.fname     -- first name sam as on the registration
And p.lname = r.lname       -- last name same as on the registration
And v.vin = r.vin           -- correct car for registration, needed to query the make and model
And 3 <= (Select Count(tno)  -- has received at least 3 different tickets
        From tickets As t
        Where t.regno = r.regno)
And Exists (Select Null
            From tickets
            Where violation Like "%red light%")     -- exists at least one red light violation