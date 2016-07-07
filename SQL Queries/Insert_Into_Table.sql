Use iSell;

-- State_CD
Insert into iSell.State_CD values ('AL','Alabama','Y');
Insert into iSell.State_CD values ('AK','Alaska','Y');
Insert into iSell.State_CD values ('AZ','Arizona','Y');
Insert into iSell.State_CD values ('AR','Arkansas','Y');
Insert into iSell.State_CD values ('CA','California','Y');
Insert into iSell.State_CD values ('CO','Colorado','Y');
Insert into iSell.State_CD values ('CT','Connecticut','Y');
Insert into iSell.State_CD values ('DE','Delaware','Y');
Insert into iSell.State_CD values ('FL','Florida','Y');
Insert into iSell.State_CD values ('GA','Georgia','Y');
Insert into iSell.State_CD values ('HI','Hawaii','Y');
Insert into iSell.State_CD values ('ID','Idaho','Y');
Insert into iSell.State_CD values ('IL','Illinois','Y');
Insert into iSell.State_CD values ('IN','Indiana','Y');
Insert into iSell.State_CD values ('IA','Iowa','Y');
Insert into iSell.State_CD values ('KS','Kansas','Y');
Insert into iSell.State_CD values ('KY','Kentucky','Y');
Insert into iSell.State_CD values ('LA','Louisiana','Y');
Insert into iSell.State_CD values ('ME','Maine','Y');
Insert into iSell.State_CD values ('MD','Maryland','Y');
Insert into iSell.State_CD values ('MA','Massachusetts','Y');
Insert into iSell.State_CD values ('MI','Michigan','Y');
Insert into iSell.State_CD values ('MN','Minnesota','Y');
Insert into iSell.State_CD values ('MS','Mississippi','Y');
Insert into iSell.State_CD values ('MO','Missouri','Y');
Insert into iSell.State_CD values ('MT','Montana','Y');
Insert into iSell.State_CD values ('NE','Nebraska','Y');
Insert into iSell.State_CD values ('NV','Nevada','Y');
Insert into iSell.State_CD values ('NH','New Hampshire','Y');
Insert into iSell.State_CD values ('NJ','New Jersey','Y');
Insert into iSell.State_CD values ('NM','New Mexico','Y');
Insert into iSell.State_CD values ('NY','New York','Y');
Insert into iSell.State_CD values ('NC','North Carolina','Y');
Insert into iSell.State_CD values ('ND','North Dakota','Y');
Insert into iSell.State_CD values ('OH','Ohio','Y');
Insert into iSell.State_CD values ('OK','Oklahoma','Y');
Insert into iSell.State_CD values ('OR','Oregon','Y');
Insert into iSell.State_CD values ('PA','Pennsylvania','Y');
Insert into iSell.State_CD values ('RI','Rhode Island','Y');
Insert into iSell.State_CD values ('SC','South Carolina','Y');
Insert into iSell.State_CD values ('SD','South Dakota','Y');
Insert into iSell.State_CD values ('TN','Tennessee','Y');
Insert into iSell.State_CD values ('TX','Texas','Y');
Insert into iSell.State_CD values ('UT','Utah','Y');
Insert into iSell.State_CD values ('VT','Vermont','Y');
Insert into iSell.State_CD values ('VA','Virginia','Y');
Insert into iSell.State_CD values ('WA','Washington','Y');
Insert into iSell.State_CD values ('WV','West Virginia','Y');
Insert into iSell.State_CD values ('WI','Wisconsin','Y');
Insert into iSell.State_CD values ('WY','Wyoming','Y');


--Country_CD
Insert into iSell.Country_CD values ('US','United States','Y',1);

Insert into iSell.Country_CD values ('CA','Canada','Y',2);

-- Admin_User_Type
SELECT * FROM Admin_User_Type;
Insert into iSell.Admin_User_Type values (1,'SERVICE_PROVIDER',1);

-- Admin_User
SELECT * FROM Admin_User;
Insert into iSell.Admin_User values (1,'prakashrai@msn.com','XXXXXX',getdate(),'Y', 1);
Insert into iSell.Admin_User values (2,'sumiat123@gmail.com','XXXXX2',getdate(),'Y', 20);


--iSetting
Select * from iSell.iSetting;
insert into iSell.iSetting values(1,'ADMIN_LOGGING','BOOLEAN','TRUE','NULL', getdate(),1,'Toggel the setting to switch Admin User Logging On or Off. Default setting is On (TRUE).');
insert into iSell.iSetting values(2,'USER_LOGGING','BOOLEAN','TRUE','NULL', getdate(),1,'Toggel the setting to switch User Logging On or Off. Default setting is On (TRUE).');
insert into iSell.iSetting values(3,'ADMIN_LOGGING_RETENTION_DAYS','NUMERIC','90','NULL', getdate(),1,'Set the Admin User Logging data retention days. Default setting is 90.');
insert into iSell.iSetting values(4,'USER_LOGGING_RETENTION_DAYS','NUMERIC','90','NULL', getdate(),1,'Set the User Loggin data retention days. Default setting is 90.');
insert into iSell.iSetting values(5,'ITEMS_PER_ROW_MAINPAGE','NUMERIC','3','NULL', getdate(),1,'Define the number of items per row in main page. Default setting is 3. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into iSell.iSetting values(6,'ITEMS_PER_ROW_APPAREL','NUMERIC','2','NULL', getdate(),1,'Define the number of items per row for Apparel. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into iSell.iSetting values(7,'ITEMS_PER_ROW_HANDICRAFT','NUMERIC','3','NULL', getdate(),1,'Define the number of items per row for Handicraft. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into iSell.iSetting values(8,'ITEMS_PER_ROW_JEWELRY','NUMERIC','2','NULL', getdate(),1,'Define the number of items per row for Jewelry. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into iSell.iSetting values(9,'ITEMS_PER_ROW_MUSIC','NUMERIC','2','NULL', getdate(),1,'Define the number of items per row for Music. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into iSell.iSetting values(10,'ITEMS_PER_ROW_SALEPAGE','NUMERIC','4','NULL', getdate(),1,'Define the number of items per row for Sale. Default setting is 2. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into iSell.iSetting values(11,'ITEMS_PER_ROW_SEARCHPAGE','NUMERIC','5','NULL', getdate(),1,'Define the number of items per row in search page. Default setting is 5. Number if items per row can be between 1 to 6. Above 6 will set to 6.');
insert into iSell.iSetting values(12,'SALES_TAX','NUMERIC','8.1','NULL', getdate(),1,'Sales Tax that is applicable to all product sale.');
insert into iSell.iSetting values(50,'WEBSITE_TYPE','WEBSITE_TYPE_OPTION_LIST','PRODUCTION','NULL', getdate(),1,'Toggel the setting to switch the Website Type {PRODUCTION or DEMO or TEST or DEVELOPMENT}. Default setting is PRODUCTION.');
insert into iSell.iSetting values(100,'PRODUCTS_IN_THE_MAINPAGE','PRODUCT_LIST','1.00101102103104E+23','NULL', getdate(),1,'Define the list of PRODUCT IDs seperate by comma that are to display on the main page.<br><i>Use drop down list on the right panel to manage the list</i>');
insert into iSell.iSetting values(101,'PRODUCTS_IN_THE_SALESPAGE_grp1','PRODUCT_LIST','500100105','10', getdate(),1,'Discount Group 1. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i>');
insert into iSell.iSetting values(102,'PRODUCTS_IN_THE_SALESPAGE_grp2','PRODUCT_LIST','5.01103104106107E+20','15', getdate(),1,'Discount Group 2. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i>');
insert into iSell.iSetting values(103,'PRODUCTS_IN_THE_SALESPAGE_grp3','PRODUCT_LIST','502','20', getdate(),1,'Discount Group 3. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i>');
insert into iSell.iSetting values(104,'PRODUCTS_IN_THE_SALESPAGE_grp4','PRODUCT_LIST','503','NULL', getdate(),1,'Discount Group 4. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i><br><br><b>Note - This setting has two steps</b><ul><li>Select Products for Sale</li><li>Input Discount % and Click Update button to Confirm.</li></ul>');
insert into iSell.iSetting values(105,'PRODUCTS_IN_THE_SALESPAGE_grp5','PRODUCT_LIST','504','NULL', getdate(),1,'Discount Group 5. Define the list of PRODUCT IDs seperate by comma that are to display on the sales page.<br><i>Use drop down list on the right panel to manage the list</i><br><br><b>Note - This setting has two steps</b><ul><li>Select Products for Sale</li><li>Input Discount % and Click Update button to Confirm.</li></ul>');


--Functions

select * from isell.Functions;

--insert into isell.functions Select distinct function_id, function_txt, module_txt from dbo.Functions where function_id > 1;
--Drop table dbo.Functions;

Insert into iSell.Functions values (1,'updatefunctionreference.aspx','ROLES-ALL');


--Admin_User_Function_Ref
select * from isell.Admin_User_Function_Ref;

--insert into isell.Admin_User_Function_Ref Select * from dbo.Admin_User_Function_Ref;
--Drop table dbo.Admin_User_Function_Ref;

-- insert admin user into Admin_User table
select * from isell.Admin_User_Type;
select * from isell.Admin_User;

Insert into iSell.Admin_User values (3,'prakashrai@msn.com','XXXZZZ',GETDATE(),'Y',2);
Insert into iSell.Admin_User values (4,'sumiat123@msn.com','XXXXX1',GETDATE(),'Y',50);
Insert into iSell.Admin_User values (5,'sungnimah@yahoo.com','YYYYYY',GETDATE(),'Y',99);

Update iSell.Admin_User
Set email_id='prakashrai1@msn.com'
where User_ID=3;


  select * from isell.Admin_User;
  
  select * from isell.Admin_User_Type;
  
  select au.email_id, aut.admin_type from isell.Admin_User au, isell.Admin_User_Type aut
  where au.Admin_Type_ID = aut.Admin_Type_ID
  order by aut.Admin_Type_ID;
 
 --4/8/2016 Check who visited the webpage and check how many times they visite which is captured in visitor log. 
 select * from iSell.Visitor_Log;
 
 select distinct Customer_IP_Address from iSell.Visitor_Log;
 
 select Customer_IP_Address, count(Visit_DateTime) from iSell.Visitor_Log
 group by Customer_IP_Address
 order by count(Visit_DateTime) desc;
 
 select Customer_IP_Address, count(Visit_DateTime) from iSell.Visitor_Log
 where Customer_IP_Address='54.198.179.32'
 group by Customer_IP_Address
 order by count(Visit_DateTime) desc;
 
 Select * from iSell.Recently_Viewed_Product;
 Select * from iSell.Recently_Viewed_Product, iSell.Visitor_Log;
 
 Select * from iSell.Recently_Viewed_Product rvp, iSell.Visitor_Log vl 
 where rvp.Customer_IP_Address=vl.Customer_IP_Address;
 Select rvp.Customer_IP_Address, Product_ID, Email_id 
 from iSell.Recently_Viewed_Product rvp, iSell.Visitor_Log vl 
 where rvp.Customer_IP_Address=vl.Customer_IP_Address;
 
 --join Customer_IP_Address='54.198.179.32' with product_ID
 Select * from iSell.Recently_Viewed_Product
 where Customer_IP_Address='54.198.179.32';
 
 select distinct rvp.Customer_IP_Address, rvp.Product_ID, vl.* 
 from iSell.Recently_Viewed_Product rvp, iSell.Visitor_Log vl
 where rvp.Customer_IP_Address=vl.Customer_IP_Address and rvp.Customer_IP_Address='54.198.179.32'
 order by rvp.Customer_IP_Address;

 Select * from Recently_Viewed_Product;
 
 --Admin > iSetting > Website_Type shows if thw website is in production, demo,QA, or developing settings. 
 Select * from iSell.Demo_Access_Request;
 Select * from iSell.Demo_Access_Request_Auth;
 select dar.DAR_ID,dar.Demo_CD,dar.Requestor_Name,dar.Note_to_SP, dara.IP,dara.Auth_Date,dara.Auth_Pass_Ind 
 from iSell.Demo_Access_Request dar, iSell.Demo_Access_Request_Auth dara;