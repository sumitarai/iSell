/****** Script for SelectTopNRows command from SSMS  ******/

Use iSell;

SELECT * FROM Admin_User;
SELECT * FROM Admin_User_Type;
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
  
  Alter table iSell.dbo.Product_Designer
  alter column Name varchar (100); 
  
  Alter table iSell.dbo.Product_Designer
  alter column URL varchar (255);
  
  Alter table iSell.dbo.Product_Designer
  alter column Ins_Date datetime;
  
  Select * from iSell.dbo.Product_Designer;
  
  Select * from iSell.dbo.Product_Supplier;
    
  Alter table iSell.dbo.Product_Supplier
  alter column Name varchar (100);
  
  Alter table iSell.dbo.Product_Supplier
  alter column URL varchar (255);
  
    
  Alter table iSell.dbo.Product_Supplier
  alter column Description varchar (4000);
  
  Alter table iSell.dbo.Product_Supplier
  alter column Ins_Date datetime;
  
  Select * from iSell.dbo.Master_Product;
  
  Select * from iSell.dbo.Product;
  
  Alter table iSell.dbo.Product
  alter column Name varchar (100);
 
  Select * from iSell.dbo.Product_Detail;
  Alter table iSell.dbo.Product_Detail
  alter column Specification varchar (4000); 
  Alter table iSell.dbo.Product_Detail
  alter column Category1 varchar (64);
  
 Select * from iSell.dbo.Shipping_Rate; 
 Alter table iSell.dbo.Shipping_Rate
 alter column Shipping_Type varchar (255); 
 
 Select * from iSell.dbo.App_Menu;
 Alter table iSell.dbo.App_Menu
 alter column Parent_Text varchar (30); 
 Alter table iSell.dbo.App_Menu
 alter column Enabled varchar (15);
 Alter table iSell.dbo.App_Menu
 alter column PopOutImageUrl varchar (255);  
 Alter table iSell.dbo.App_Menu
 alter column Selectable varchar (15);
 Alter table iSell.dbo.App_Menu
 alter column SeparatorImageUrl varchar (255);  
 Alter table iSell.dbo.App_Menu
 alter column Target varchar (15); 
 Alter table iSell.dbo.App_Menu
 alter column Text varchar (30);
 Alter table iSell.dbo.App_Menu
 alter column Value varchar (30);
 
  Select * from iSell.dbo.iSearch;
  Alter table iSell.dbo.iSearch
 alter column Keyword varchar (255);
 
  Select * from iSell.dbo.iSearch_Dictionary;
  Alter table iSell.dbo.iSearch_dictionary
 alter column Keyword varchar (255);
 
 Select * from iSell.dbo.iSetting;
 Alter table iSell.dbo.iSetting
 alter column extended_value varchar (255);
 Alter table iSell.dbo.iSetting
 alter column description varchar (4000); 
  
  CREATE
  TABLE Product1
  (
    Product_ID        NUMERIC (28) NOT NULL ,
    SKU               VARCHAR (30) NOT NULL ,
    Name              VARCHAR ,
    Description       VARCHAR (4000) ,
    Quantity          NUMERIC (28) NOT NULL ,
    Master_Product_ID NUMERIC (28) NOT NULL ,
    Product_Type      CHAR (2) ,
    Sales_Method      VARCHAR NOT NULL ,
    Added_by_ID       NUMERIC (28) ,
    Added_DateTime    DATETIME
  )
  ON "default"
GO

Drop Table dbo.Product1;

Select *from Admin_User_Log;

   Alter table iSell.dbo.Admin_User_Log
  alter column Log_Date datetime;
  
  Select * from Business_info;
  Alter table iSell.dbo.Business_info
  alter column State_CD varchar (2);
  Alter table iSell.dbo.Business_info
  alter column Country_CD varchar (3);
   Alter table iSell.dbo.Business_info
  alter column Zip varchar (10);
   Alter table iSell.dbo.Business_info
  alter column City varchar (25);
   Alter table iSell.dbo.Business_info
  alter column Name varchar (100);
  Alter table iSell.dbo.Business_info
  alter column POBOX int;
   Alter table iSell.dbo.Business_info
  alter column Street varchar (40);
   Alter table iSell.dbo.Business_info
  alter column Address_Line_2 varchar (40);
   Alter table iSell.dbo.Business_info
  alter column Phone varchar (15);
   Alter table iSell.dbo.Business_info
  alter column email varchar (50);
   Alter table iSell.dbo.Business_info
  alter column Website varchar (30);
  
  Select *from iSell.dbo.State_CD;
  Alter table iSell.dbo.State_CD
  alter column State_CD varchar (2);  
 Alter table State_CD
 Drop "State_CD PK";
 
 --ALTER TABLE [Table] ALTER COLUMN [Column] INTEGER NOT NULL
 Alter table state_CD
 Alter column state_CD varchar(2) not null;
 Alter table State_CD
 Add constraint "State_CD PK" primary key (State_CD);

 
  Alter table Billing_Info
  Drop "State_CD-To-Billing_Info";    
  Alter table iSell.dbo.Billing_info
  alter column State_CD varchar (2);
  Alter table Billing_Info
  add constraint "State_CD-To-Billing_Info" foreign key (State_CD) references State_CD (State_CD); 
  
--alter table MyTable
--add constraint MyTable_MyColumn_FK FOREIGN KEY ( MyColumn ) references MyOtherTable(PKColumn)
  
 Alter table Order_Shipping
 Drop "State_CD-Order_Shipping";
 Alter table Order_Shipping
 alter column State_CD varchar (2);
 Alter table Order_Shipping
 add constraint "State_CD-Order_Shipping" foreign key (State_CD) references State_CD (State_CD); 
  
 Alter table Customer_Info
 Drop "State_CD-Customer_Info";
 Alter table Customer_Info
 alter column State_CD varchar (2);
 Alter table Customer_Info
 add constraint "State_CD-Customer_Info" foreign key (State_CD) references State_CD (State_CD); 
  
 Alter table Address_Book
 Drop "State_CD-Address_Book";
 Alter table Address_Book
 add constraint "State_CD-Address_Book" foreign key (State_CD) references State_CD (State_CD); 

  
 Alter table Address_Book
 Drop "Country_Code-Address_Book";
 Alter table Address_Book
 add constraint "Country_Code-Address_Book" foreign key (Country_CD) references Country_CD (Country_CD); 


Alter table Address_Book
  Drop "Address_Book PK";
   Alter table Address_Book
 Add constraint "Address_Book PK" primary key (Address_ID);
  
  Alter table Address_Book
  alter column State_CD varchar (2);
 
 Select * from dbo.State_CD;
 
 
 