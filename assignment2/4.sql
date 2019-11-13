.print Question 4 - bjzukows

Select fname, lname
From persons
Where bdate = (Select MIN(p.bdate)
                From births As b, persons As p
                where b.f_fname = 'Michael' And b.f_lname = 'Fox'
                And b.fname = p.fname And b.lname = p.lname)
