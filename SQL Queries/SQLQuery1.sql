use iSell;

insert into dbo.product(product_id, SKU, Name, Description, Quantity, Master_Product_ID, Product_Type, Sales_Method, Added_by_ID, Added_DateTime) 
values (2, 'B100', 'Boys','Boys pants', 6, 5, '4-6', 'Store', 1, GETDATE());
insert into dbo.product(product_id, SKU, Name, Description, Quantity, Master_Product_ID, Product_Type, Sales_Method, Added_by_ID, Added_DateTime) 
values (3, 'M100', 'Men','Men Suit', 5, 4, 'M', 'Store', 2, GETDATE());
insert into dbo.product(product_id, SKU, Name, Description, Quantity, Master_Product_ID, Product_Type, Sales_Method, Added_by_ID, Added_DateTime) 
values (4, 'S100', 'Women','Women shoes', 10, 6, '6', 'Online', 1, GETDATE());
insert into dbo.product(product_id, SKU, Name, Description, Quantity, Master_Product_ID, Product_Type, Sales_Method, Added_by_ID, Added_DateTime) 
values (5, 'G100', 'Men','Men Eyeware', 2, 1, 'Adult', 'Store', 1, GETDATE());
insert into dbo.product(product_id, SKU, Name, Description, Quantity, Master_Product_ID, Product_Type, Sales_Method, Added_by_ID, Added_DateTime) 
values (6, 'W100', 'Women','Women shirts', 8, 5, '6', 'Store', 1, GETDATE());
insert into dbo.product(product_id, SKU, Name, Description, Quantity, Master_Product_ID, Product_Type, Sales_Method, Added_by_ID, Added_DateTime) 
values (7, 'S101', 'Women','Women eyeware', 5, 7, 'Adult', 'Store', 1, GETDATE());

update dbo.product
set sales_method= 'Online'
where Product_ID= 1;

update dbo.master_product
set supplier_id= 6
where master_Product_ID= 7;

select GETDATE();

select * from dbo.Product_Designer;
select * from dbo.Product_Supplier; 
select * from dbo.Master_Product;
select * from dbo.product;

alter table dbo.product alter column SKU varchar (30);

--ANSI

select mp.Master_Product_ID, pd.Designer_ID, pd.Name, ps.Supplier_ID, ps.Name
from master_product mp
inner join Product_Designer pd
on mp.Designer_ID= pd.Designer_ID
inner join Product_Supplier ps
on mp.Supplier_ID= ps.Supplier_ID;

--SQL
select master_product.Master_Product_ID, product_designer.Designer_ID, Product_Designer.Name
from Master_Product, Product_Designer
where Master_Product.Designer_ID= Product_Designer.Designer_ID;

select master_product.Master_Product_ID, product_designer.Designer_ID, product_designer.Name, product_supplier.Supplier_ID, product_supplier.Name
from Master_Product, Product_Designer, Product_Supplier
where Master_Product.Designer_ID= Product_Designer.Designer_ID AND master_product.Supplier_ID= product_supplier.Supplier_ID;

select * from master_product mp
full outer join Product_Designer pd
on mp.Designer_ID= pd.Designer_ID;

select Master_Product_ID, pd.Designer_ID, Name, URL, Ins_Date
from master_product mp
right join Product_Designer pd
on mp.Designer_ID= pd.Designer_ID
Order by Master_Product_ID;


select Master_Product_ID, mp.Designer_ID, Name, URL, Ins_Date 
from Product_Designer pd
left join master_product mp
on mp.Designer_ID= pd.Designer_ID;


select mp.Master_Product_ID, mp.Designer_ID, mp.Supplier_ID, p.Product_ID
from master_product mp
right join Product p
on mp.Master_Product_ID= p.Master_Product_ID;


select p.*, mp.Designer_ID
from Product p
left join master_product mp
on mp.Master_Product_ID= p.Master_Product_ID;

select p.*, mp.Designer_ID
from master_product mp
right join product p
on mp.Master_Product_ID= p.Master_Product_ID;