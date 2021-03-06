/****** Script for SelectTopNRows command from SSMS  ******/
Use NicePOS_Hospitality;

SELECT TOP 1000 [CustId]
      ,[FirstName]
      ,[StrtAdd]
      ,[StCode]
      ,[ZipCode]
      ,[Ph]
      ,[City]
      ,[Email]
      ,[HmAdd]
      ,[AptNo]
  FROM [NicePOS_Hospitality].[dbo].[Customer];
 
 Select * from dbo.Customer;
 
 Insert into dbo.Customer (FirstName,StrtAdd,StCode,ZipCode,Ph,City)
 Values ('Sam','111 N. Haimalaya st.','CO','12345','303-111-1234','Denver');
  Insert into dbo.Customer (CustID,Ph,City)
 Values (4,'303-123-1234','Denver');
 Select * from dbo.Tax;
 
 Update dbo.tax
 set StateTax=2.9
 where City='Denver';
 
  Update dbo.tax
 set CityTax=3.65
 where City='Denver';
 
 Update dbo.tax
 set OtherTax=1.1
 where City='Denver';
 
 Insert into dbo.tax
 (State,City,StateTax,CityTax,OtherTax)
 Values ('CO','Littleton',2.9,3.0,1.1),
 ('CO','Centennial',2.9,2.5,1.1),
 ('CO','Greenwood village',2.9,3.0,1.1),
 ('CO','Grand Junction',2.9,2.75,2.0);
  

  
  