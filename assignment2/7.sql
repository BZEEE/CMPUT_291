.print Question 7 - bjzukows

Select SUM(t.tno) / COUNT(r.regno), AVG(t.fine), MAX(t.fine)
From vehicles AS v, registrations As r, tickets As t
Group By v.color                             -- group cars by color
Having r.expiry >= date('now', '+1 months')    -- does not expire at least for another month
