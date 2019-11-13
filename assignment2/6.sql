.print Question 6 - bjzukows

Select p2_fname, p2_lname, regdate
From marriages
Where p1_fname = 'Michael' And p1_lname = 'Fox'  -- all partner 2's of Michael Fox
Union
Select p1_fname, p1_lname, regdate
From marriages
Where p2_fname = 'Michael' And p2_lname = 'Fox'  -- all partner 1's of Michael Fox
Order By regdate DESC
Limit 1
