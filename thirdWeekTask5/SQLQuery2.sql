--Select
--ANSII
Select ContactName Adi,CompanyName SirketAdi,City Sehir from Customers

Select * from Customers where City = 'Berlin'

-- case insensitive
sElEcT * from pRoDuCTs where categoryid = 1 or categoryId = 3

select * from products where CategoryID = 1 and UnitPrice >= 10

select * from products where CategoryID = 1 order by UnitPrice desc, ProductName asc -- ascending -- descending

select count(*) Adet from products where CategoryID = 2

select CategoryID from Products group by CategoryID

select CategoryID, count(*) RelatedCategoryProductAmount, UnitPrice from Products group by UnitPrice, CategoryID
select CategoryID, count(*) RelatedCategoryProductAmount 
from Products 
where UnitPrice > 20 
group by CategoryID 
having count(*)<10

select * 
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID

select Products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName
from Products inner join Categories
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice > 10

select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID

Select * from Products p left join [Order Details] od
on p.ProductID = od.ProductID

Select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID

Select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID where o.CustomerID is null

Select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID
