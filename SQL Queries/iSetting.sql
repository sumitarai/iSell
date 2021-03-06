/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ID]
      ,[setting]
      ,[setting_type]
      ,[value]
      ,[extended_value]
      ,[last_setup_datetime]
      ,[User_ID]
      ,[description]
  FROM [iSell].[dbo].[iSetting]
  
  
  
  
use iSell;
delete dbo.iSetting;

insert into dbo.iSetting values(1,'ADMIN_LOGGING','BOOLEAN','TRUE','NULL', getdate(),1,'Toggel the setting to switch Admin User Logging On or Off. Default setting is On (TRUE).');
insert into dbo.iSetting values(2,'USER_LOGGING','BOOLEAN','TRUE','NULL', getdate(),1,'Toggel the setting to switch User Logging On or Off. Default setting is On (TRUE).');
insert into dbo.iSetting values(3,'ADMIN_LOGGING_RETENTION_DAYS','NUMERIC','90','NULL', getdate(),1,'Set the Admin User Logging data retention days. Default setting is 90.');
insert into dbo.iSetting values(4,'USER_LOGGING_RETENTION_DAYS','NUMERIC','90','NULL', getdate(),1,'Set the User Loggin data retention days. Default setting is 90.');
insert into dbo.iSetting values(5,'ITEMS_PER_ROW_MAINPAGE','NUMERIC','3','NULL', getdate(),1,'Define the number of items per row in main page. Default setting is 3. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into dbo.iSetting values(6,'ITEMS_PER_ROW_APPAREL','NUMERIC','2','NULL', getdate(),1,'Define the number of items per row for Apparel. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into dbo.iSetting values(7,'ITEMS_PER_ROW_HANDICRAFT','NUMERIC','3','NULL', getdate(),1,'Define the number of items per row for Handicraft. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into dbo.iSetting values(8,'ITEMS_PER_ROW_JEWELRY','NUMERIC','2','NULL', getdate(),1,'Define the number of items per row for Jewelry. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into dbo.iSetting values(9,'ITEMS_PER_ROW_MUSIC','NUMERIC','2','NULL', getdate(),1,'Define the number of items per row for Music. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into dbo.iSetting values(10,'ITEMS_PER_ROW_SALEPAGE','NUMERIC','4','NULL', getdate(),1,'Define the number of items per row for Sale. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into dbo.iSetting values(11,'ITEMS_PER_ROW_SEARCHPAGE','NUMERIC','5','NULL', getdate(),1,'Define the number of items per row in search page. Default setting is 5. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into dbo.iSetting values(12,'SALES_TAX','NUMERIC','8.1','NULL', getdate(),1,'Sales Tax that is applicable to all product sale.');
insert into dbo.iSetting values(50,'WEBSITE_TYPE','WEBSITE_TYPE_OPTION_LIST','PRODUCTION','NULL', getdate(),1,'Toggel the setting to switch the Website Type {PRODUCTION or DEMO or TEST or DEVELOPMENT}. Default setting is PRODUCTION.');
insert into dbo.iSetting values(100,'PRODUCTS_IN_THE_MAINPAGE','PRODUCT_LIST','1.00101102103104E+23','NULL', getdate(),1,'Define the list of PRODUCT IDs seperate by comma that are to display on the main page.<br><i>Use drop down list on the right panel to manage the list</i>');
insert into dbo.iSetting values(101,'PRODUCTS_IN_THE_SALESPAGE_grp1','PRODUCT_LIST','500100105','10', getdate(),1,'Discount Group 1. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i>');
insert into dbo.iSetting values(102,'PRODUCTS_IN_THE_SALESPAGE_grp2','PRODUCT_LIST','5.01103104106107E+20','15', getdate(),1,'Discount Group 2. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i>');
insert into dbo.iSetting values(103,'PRODUCTS_IN_THE_SALESPAGE_grp3','PRODUCT_LIST','502','20', getdate(),1,'Discount Group 3. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i>');
insert into dbo.iSetting values(104,'PRODUCTS_IN_THE_SALESPAGE_grp4','PRODUCT_LIST','503','NULL', getdate(),1,'Discount Group 4. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i><br><br><b>Note - This setting has two steps</b><ul><li>Select Products for Sale</li><li>Input Discount % and Click Update button to Confirm.</li></ul>');
insert into dbo.iSetting values(105,'PRODUCTS_IN_THE_SALESPAGE_grp5','PRODUCT_LIST','504','NULL', getdate(),1,'Discount Group 5. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i><br><br><b>Note - This setting has two steps</b><ul><li>Select Products for Sale</li><li>Input Discount % and Click Update button to Confirm.</li></ul>');
