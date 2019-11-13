-- Q1

Select name
From cats
Where breed='domestic shorthair' And age > 6 


-- Q2
Select breed, Exists AVG(c.age) as average
From cats as c, favourite as fa, food as fo
Where Exists fo.flavor='salmon' And fo.productID=fa.productID And c.name=fa.catname
Group By c.breed
Order By average DESC


-- Q3
Select brand, productID
From food as fo
Where fo.type='canned'And 2 <= (select Count(catname)
								From favourite as fa
								Where fa.productID=fo.productID)