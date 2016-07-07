/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [Function_ID]
      ,[Function_Txt]
      ,[Module_Txt]
  FROM [iSell].[dbo].[Functions];
  
  Alter table iSell.dbo.Functions
  alter column Function_Txt varchar (30);
  
    
  Alter table iSell.dbo.Functions
  alter column Module_Txt varchar (30);
  
  Insert into iSell.dbo.Functions 
  values (1,'updatefunctionreference.aspx','ROLES-ALL');
  
  