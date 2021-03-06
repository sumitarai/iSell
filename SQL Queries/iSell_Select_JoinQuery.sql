/****** Script for SelectTopNRows command from SSMS  ******/

Use iSell;
Create table Admin_Users
(UserID int,
FullName varchar(255));

Drop table Admin_Users;


--Generate data by R-click iSell.Admin_User_Info and select Top 1000 Rows
SELECT TOP 1000 [User_ID]
      ,[First_Name]
      ,[Middle_Name]
      ,[Last_Name]
      ,[email_id]
      ,[Cell_Phone]
  FROM [iSell].[iSell].[Admin_User_Info]

-- Select statement to retrieve data from each table separately
  Select * from iSell.Admin_User_Type;
  Select * from iSell.Admin_User;
  Select * from iSell.Admin_User_Info;
  
  --Adding new column in Table Admin_User_Info  
  Alter Table iSell.Admin_User_Info
  Add Age integer;
  
  /**Droping the existing column from Table Admin_User_Info
  Alter Table iSell.Admin_User_Info
  Drop Column Age;
  **/
  
  --Insert into table_name then values
  Select * from iSell.Admin_User_Info;
  Insert into iSell.Admin_User_Info
  Values (4,'Mita','','Rai','Mita123@gmail.com','3037595622');
  Insert into iSell.Admin_User_Info
  Values (7,'Sita','', 'Limbu', 'sitalimbu@msn.com','7202584562',25);
   
  Select * from iSell.Admin_User; 
  Insert into iSell.Admin_User 
  values (7, 'sitalimbu@msn.com', 'SSSSSS', GETDATE(), 'Y',99);
  --Update
  Update iSell.Admin_User_Info
  Set email_id='sumiat123@msn.com'
  Where User_ID=4;  
  
  Update iSell.Admin_User_Info
  Set Age=34
  Where User_ID=2; 
  
  Update iSell.Admin_User_Info
  Set Age=40
  Where User_ID=3; 
  
  Update iSell.Admin_User_Info
  Set Age=24
  Where User_ID=4; 
  
  Update iSell.Admin_User_Info
  Set Age=29
  Where User_ID=5; 
  
  Update iSell.Admin_User_Info
  Set Age=45
  Where User_ID=6; 
  
  --Joined all columns from 2 tables
  Select distinct * from iSell.Admin_User_Type, iSell.Admin_User;
  
  -- Joined three tables [Admin_User_Info],[Admin_User_Type],[Admin_User]
   Select * from iSell.Admin_User_Type;
   Select aut.Admin_Type_ID,aut.Admin_Type,aui.First_Name,au.email_id 
   from iSell.Admin_User_Type aut, iSell.Admin_User au, iSell.Admin_User_Info aui
   where aut.Admin_Type_ID=au.Admin_Type_ID and au.User_ID=aui.User_ID;
   
   or
   
   Select aui.User_ID,aui.First_Name,aut.Admin_Type_ID,aut.Admin_Type,au.email_id 
   From iSell.Admin_User_Type aut 
   Join iSell.Admin_User au ON aut.Admin_Type_ID=au.Admin_Type_ID 
   Join iSell.Admin_User_Info aui ON au.User_ID=aui.User_ID;
   
   --Joining table allows to reteive 2 or more tables based on logical relationship 
   Select aui.User_ID,aui.First_Name,aut.Admin_Type_ID,aut.Admin_Type,au.email_id, au.Login_Password 
   From iSell.Admin_User_Type aut 
   Join iSell.Admin_User au ON aut.Admin_Type_ID=au.Admin_Type_ID 
   Join iSell.Admin_User_Info aui ON au.User_ID=aui.User_ID
   Order by aui.User_ID asc;
   
   
   --Group by lists with Aggregate Functions Count, Max, Sum, Avg
   Select First_Name,USER_ID
   From iSell.Admin_User_Info;
   
   Select First_Name+' '+Last_Name as 'Full Name'
   From iSell.Admin_User_Info;
   
  --??? Select First_Name, count(USER_ID), Age
   From iSell.Admin_User_Info
   Group by First_Name
   Order by Age desc;
 
 --Count by Admin Type ID
 
   Select Display_Ord_ID, count(Admin_Type_ID) as 'Admin User' 
   From iSell.Admin_User_Type
   Group by Display_Ord_ID  
   Order by Count(Admin_Type_ID) desc;
   
 --Group by lists with Aggregate Functions Max, Min, Sum, Avg
    Select * from iSell.Admin_User_Info;
    Select MAX(Age)as Maximum_Age
    From iSell.Admin_User_Info
    Where Last_Name='Rai';
    
    Select Min(Age)as Minimum_Age
    From iSell.Admin_User_Info
    Where Last_Name like 'R%';
    
    Select Avg(Age)as Average_Age
    From iSell.Admin_User_Info
    Where Last_Name like 'R%';
    
    Select Sum(Age)as Total_Age
    From iSell.Admin_User_Info
    
 -- Drag from the table column instead of typing.  
 Select First_Name,Last_Name,email_id
 From iSell.Admin_User_Info
 Where First_Name = 'Sumita';
 
 Select First_Name,Last_Name,email_id
 From iSell.Admin_User_Info
 Where First_Name <> 'Sumita';
 
 
 
 -- Product count by designer and supplier
 
 Select  Designer_ID, Supplier_ID, sum(Master_Product_ID)
 from Master_Product
 group by  Supplier_ID, Designer_ID;
 
 
 select pd.name, sum(p.quantity)
 from product_Designer pd,product p, Master_Product mp
 where pd.designer_ID= mp.designer_ID and mp.master_product_ID=p.master_product_ID
 group by pd.Name;
 
 select ps.name, sum(p.quantity)
 from Product_Supplier ps, product p, Master_Product mp
 where ps.Supplier_ID = mp.designer_ID and mp.master_product_ID=p.master_product_ID
 group by ps.Name;
 
 select pd.name, ps.name, sum(p.quantity)
 from product_Designer pd, Product_Supplier ps, product p, Master_Product mp
 where pd.designer_ID= mp.designer_ID and ps.Supplier_ID = mp.supplier_ID and mp.master_product_ID=p.master_product_ID
 group by pd.Name, ps.Name
 order by pd.name, ps.name;
 
 
 -- Product inventory to fill the stock
 Select pd.Product_ID, pd.SKU, p.Name, pd.Quantity 
 from iSell.Product_Detail pd, iSell.Product 
 where pd.Product_ID=p.Product_ID;
 
--visitor count by day for QTD(Quarter till date) 
Select count(customer_IP_Address) as 'Number of Visitors', DATEADD(dd, DATEDIFF(dd, 0, Visit_DateTime), 0) as 'Visit Date'
From Visitor_Log
where Visit_DateTime > = '2016-01-04' 
group by DATEADD(dd, DATEDIFF(dd, 0, Visit_DateTime), 0)
order by 2 desc;

--select GETDATE(),DATEADD(dd, DATEDIFF(dd, 0, getdate()), 0);

 Select * from Master_Product;
 Select * from Product;

 Select Master_Product_ID, count(Product_ID) as 'Total Products'
 from Product
 group by Master_Product_ID;
   

--Pull Order count by month for all orders in iSell system and chart

Select submitted_date, count(order_ID) as 'Number of Orders'
from Order_Header
group by submitted_date
order by submitted_date asc;

select * from Order_Header;
 
--Pull the user visit time
Select * from Visitor_Log;
Select * from Customer_Info_Log;


Select vl.Customer_IP_Address, vl.Visit_DateTime, vl.Initial_URL, rv.Product_ID, rv.Email_ID 
from Visitor_Log vl, Recently_Viewed_Product rv
where vl.Customer_IP_Address = rv.Customer_IP_Address
order by Visit_DateTime desc;


--Identify the most browsed items
 
Select rvp.product_ID, p.name, count(rvp.product_ID) as 'Most Browsed Item'
from Recently_Viewed_Product rvp, product p
where rvp.product_ID = p.product_ID
group by rvp.Product_ID, p.name
order by 3 desc;

Select * from Customer_Authorization; 

-- Write admin report that pulls admin user and their roles and last login datetime
Select au.User_ID, aui.First_Name, aui.Last_Name, aut.Admin_Type, max(aul.log_date)
from Admin_user au, Admin_User_Info aui, Admin_User_Type aut, Admin_User_Log aul
where aui.user_ID = au.user_ID 
and au.admin_type_ID = aut.admin_type_ID
and au.user_ID = aul.user_ID
group by au.User_ID, aui.First_Name, aui.Last_Name, aut.Admin_Type
order by 1 desc; 


-- Analyze App error log with Chart
Select * from App_Error_Log;

Select distinct Module_Name, App_Msg, Error_Msg, DATEADD(dd, DATEDIFF(dd, 0, Ins_Date), 0)as Date
from App_Error_Log;

--shows which App failed the most or least
Select App_Msg, count(App_Msg) AS 'App failed Count'
from App_Error_Log
group by App_Msg
order by 2 desc;

--shows which error occured the most or least
Select  Error_Msg, count(Error_Msg) AS 'Error Msg Count'
from App_Error_Log
group by Error_Msg
order by 2 desc;

-- shows which module crashes the most or least
Select Module_Name, count(module_Name)AS 'Module Count'
from App_Error_Log
group by module_Name
order by 2 desc;

--Shows which day the error logged mostor least-- 04/05/2016 loged 314 times
Select DATEADD(dd, DATEDIFF(dd, 0, Ins_Date), 0)as Date, count(logID)as 'Log Times'
from App_Error_Log
group by DATEADD(dd, DATEDIFF(dd, 0, Ins_Date), 0)
order by 2 desc; 



-- write a query to select, count records from all tables from DB
Use iSell
GO
Select * from sys.Tables
GO

select 'select count(*) from '+ name  from sys.tables;

Select 'select count (*) from product;';
select count(*) from product;
select 'Select * from sys.Tables;';
select 'Select name, count(object_id) as ''Count'' from sys.Tables
group by name;';

Select name, count(object_id) as 'Count' from sys.Tables
group by name;


--Add product from top to bottom
Select * from Product_Designer;
Select * from Product_Supplier;
Select * from Master_Product;

Insert into Product_Designer
values (108, 'Sonama', 'http://sonama.com', 'Mens and Boys apperal and shoes', getdate());

Insert into Product_Supplier
Values (106, 'TJMax', '', '', getdate());

Insert into Master_Product
Values (112, 105,106);

Insert into Master_Product
Values (113, 108,106);

Insert into Master_Product
Values (114, 108,104);

-- Add two products
Select * from Product;
Insert into product
values (903, 'AUCD900','AudioCD', 'Himalayan Instrumental Music', 2, 104, 'MU', 'A', 1, getdate());

Insert into product
values (108, 'SHRT108','Kurta top', '', 4, 108, 'AP', 'A', 1, getdate());

Insert into product
values (109, 'SHOES109','Boyz Shoes', '', 2, 108, 'AP', 'S', 1, getdate());

Insert into product
values (551, 'GANE551','Ganesh Murti', 'Ganesh murti 12.75 inches', 2, 111, 'HC', 'S', 1, getdate());

Update Product set SKU = 'GANES551'
Where Product_ID = 551;

Delete from Product
where Product_ID = 551;