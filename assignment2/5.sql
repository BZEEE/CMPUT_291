.print Question 5 - bjzukows

Select p.fname, p.lname
From persons As p
Where 15 <= (Select SUM(d.points)                          -- count total demerit points
            From demeritNotices As d
            Where d.ddate >= date('now', '-2 years')       -- within the past two years
                And p.fname = d.fname
                And p.lname = d.lname)