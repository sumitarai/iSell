
Use NicePOS_Hospitality;

SELECT TOP 1000 [SalesId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[StreetAdd]
      ,[City]
      ,[State]
      ,[ZipCode]
      ,[Ph]
      ,[Ssn]
      ,[IsDriver]
      ,[DrvPass]
      ,[DeptCode]
      ,[PnchInPwd]
  FROM [NicePOS_Hospitality].[dbo].[Employee]
  
  Select * from dbo.Employee;
  
  Update dbo.Employee
  set StreetAdd = '201 N. Harbor way'
  where SalesId= 3;
  
  Update dbo.Employee
  set StreetAdd = '2001 S. Chamber St.'
  where SalesId= 4;
  
  Update dbo.Employee
  set StreetAdd = '1001 S. Dartmouth St.'
  where SalesId= 5;
  
  Insert into dbo.Employee ([SalesId],[FirstName],[MiddleName],[LastName],[StreetAdd],[City],[State],[ZipCode],[Ph],[Ssn],[IsDriver],[DrvPass],[DeptCode],[PnchInPwd])
  Values (9,'Rob','M.','Garcia','6001 S. Mississippi Ave.','Denver','CO','80231','3034215145','213514872',1,'111','Menu Order','9');
  
  Select * from dbo.tbl_Itm;
  
  Insert into dbo.tbl_Itm (Item,SortingPriority,Taxable)
  Values ('Pepsi',2,1);
  Insert into dbo.tbl_Itm (Item,SortingPriority,Taxable)
  Values ('Fanta',2,1);
  Insert into dbo.tbl_Itm (Item,SortingPriority,Taxable)
  Values ('Sprite',2,1);
  
  Update dbo.tbl_Itm
  set SortingPriority=2
  where Item='Coke';
  
  
 Select * from dbo.tbl_SbItm;
 
 Insert into dbo.tbl_SbItm (SubItem, Quantity)
 Values ('8oz', 12);
 Insert into dbo.tbl_SbItm (SubItem, Quantity)
 Values ('12oz', 12);
 Insert into dbo.tbl_SbItm (SubItem, Quantity)
 Values ('20oz', 12);
 
 Insert into dbo.tbl_SbItm (SubItem, Quantity)
 Values ('24oz', 12);
 
 delete from dbo.tbl_SbItm
 where SubItem='120 ml';
 
 update dbo.tbl_SbItm
 set Quantity='15'
 where SubItem='16 oz';