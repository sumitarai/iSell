/****** Script for SelectTopNRows command from SSMS  ******/
use HandsOnOne;

SELECT TOP 1000 [AddressID]
      ,[Street]
      ,[City]
      ,[State]
      ,[ZipCode]
  FROM [HandsOnOne].[dbo].[Address];

Select * from dbo.Address;
  
Insert into dbo.Address
Values
(1, '1771 E. Brown Pl.', 'Aurora', 'CO', '80013');