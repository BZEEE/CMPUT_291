.print Question 3 - bjzukows

Select b4.fname, b4.lname
From births AS b1, births As b2, births As b3, births As b4
Where b1.fname = 'Michael' And b1.lname = 'Fox' And
(b1.f_fname = b2.fname And b1.f_lname = b2.lname) And (b1.m_fname = b2.fname And b1.m_lname = b2.lname) And
(b2.f_fname = b3.fname And b2.f_lname = b3.lname) And (b2.m_fname = b3.fname And b2.m_lname = b3.lname) And
(b3.fname = b4.f_fname And b3.lname = b4.f_lname) And (b3.fname = b4.m_fname And b3.lname = b4.m_lname)

