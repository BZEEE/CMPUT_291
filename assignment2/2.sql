.print Question 2 - bjzukows

Select b2.fname, b2.lname
From births As b1, births As b2
Where b2.fname != 'Michael' And b2.lname != 'Fox' And
b1.fname = 'Michael' And b1.lname = 'Fox' And 
(b1.f_fname = b2.f_fname And b1.f_lname = b2.f_lname) And (b1.m_fname = b2.m_fname And b1.m_lname = b2.m_lname)
