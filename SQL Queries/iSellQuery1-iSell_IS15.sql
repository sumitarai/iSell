use isell
go
SELECT 'Found valid admin user' FROM dbo.Admin_user WHERE active_ind ='Y' AND email_id='sumiat123@gmail.com' AND login_password='test123'

Select * from Customer_Info_Log order by customer_info_log_Id desc; 
Update Customer_Info_Log set action = 'LOGGED_OUT' where customer_info_log_Id = 187;

-- IS-13 4/13/15
Select * from recently_viewed_product order by viewed_datetime desc;

--order receipt doesnot shows the recent oder_id
Select * from order_receipt order by order_id desc;

Select * from order_header order by order_id desc;
Select * from order_detail order by order_id desc;

Select * from order_payment_shipping_method order by order_id desc;

Select order_detail.order_id, order_detail.quantity, order_detail.unit_price, order_payment_shipping_method.total_amount, order_payment_shipping_method.payment_type
from order_detail, order_payment_shipping_method 
where order_detail.order_id = order_payment_shipping_method.order_id;


Select order_detail.order_id, order_detail.quantity, order_detail.unit_price, order_detail.quantity* order_detail.unit_price as product_price, order_payment_shipping_method.total_amount as total_amount_perOrder, order_payment_shipping_method.payment_type
from order_detail, order_payment_shipping_method 
where order_detail.order_id = order_payment_shipping_method.order_id
order by order_detail.order_id desc;

--IS-13 4/14/15
Select * from billing_info order by order_id desc;
Select * from order_payment_shipping_method order by order_id desc;
Select * from order_shipping order by order_id desc;
--Select * from shipping_rate order by ins_date desc; 
-- where shipping_type = 'Shipping Ground Shipping'

select * from visitor_log order by visit_dateTime desc;

-- IS- 16 4/16/15 [Test the functionality of Custom Care ( Customer care and customer review)]
Select * from user_inquiry order by action_taken_date desc;
Select * from user_review order by review_id desc;

-- IS- 19 4/17/15 
Select * from iSearch_Dictionary order by id desc;

Select * from iSetting order by last_setup_datetime desc;

Select * from Admin_user_log order by log_date desc;

Select * from Admin_user where user_id = 32;
Select * from Admin_user_info where user_id = 32;
Select * from Admin_user_Type;

-- Write a report to pull Admin user name , login, sort by userid, Active ind, cell phone, access date, and Admin type
Select Admin_user.user_id, Admin_user_info.First_name,Admin_user_info.last_name, Admin_user.email_id, Admin_user.active_ind, Admin_user.Ins_Date, Admin_user_info.cell_phone, Admin_user_type.Admin_type 
from Admin_user_info, Admin_user, Admin_user_Type
where Admin_user_info.user_id = Admin_user.user_id and Admin_user_Type.Admin_type_id = Admin_user.Admin_type_id
order by Admin_user.user_id;

--In the query above Concatinate First name and last name to full name
Select Admin_user.user_id, concat(concat(Admin_user_info.First_name,' '),Admin_user_info.last_name) as "Full Name", Admin_user.email_id, Admin_user.active_ind, Admin_user.Ins_Date, Admin_user_info.cell_phone, Admin_user_type.Admin_type 
from Admin_user_info, Admin_user, Admin_user_Type
where Admin_user_info.user_id= Admin_user.user_id and Admin_user_Type.Admin_type_id = Admin_user.Admin_type_id
order by Admin_user.user_id;

select 'Prkash ' + 'Rai'
select concat(concat('prakash',' '),'Rai')


--Include the user that may not in Admin_user_info table (outer join)

Select Admin_user.user_id, concat(concat(Admin_user_info.First_name,' '),Admin_user_info.last_name) as "Full Name", Admin_user.email_id, Admin_user.active_ind, Admin_user.Ins_Date, Admin_user_info.cell_phone, Admin_user_type.Admin_type 
from Admin_user_info right outer join Admin_user
 on  Admin_user_info.user_id= Admin_user.user_id 
 inner join  Admin_user_Type
on Admin_user_Type.Admin_type_id = Admin_user.Admin_type_id
order by Admin_user.user_id;

--If the above query is right outer join, what is left outer join
Select Admin_user.user_id, concat(concat(Admin_user_info.First_name,' '),Admin_user_info.last_name) as "Full Name", Admin_user.email_id, Admin_user.active_ind, Admin_user.Ins_Date, Admin_user_info.cell_phone, Admin_user_type.Admin_type 
from Admin_user left outer join Admin_user_info
 on  Admin_user_info.user_id= Admin_user.user_id 
 inner join  Admin_user_Type
on Admin_user_Type.Admin_type_id = Admin_user.Admin_type_id
order by Admin_user.user_id;

-- IS-22 4/22/15
select * from isearch_dictionary order by id desc;
delete from isearch_dictionary;

update iSearch_dictionary set search_rank = -999 where id = 81

select * from isearch_dictionary where product_id = 901
select Keyword, lower(Keyword) from iSearch_Dictionary where lower(keyword) like '%meditationa%'

--case insensitive comparision
select case when 'Sumi' = 'sumi' then 'Equal' else 'Not Equal' end 

--Add the COLLATE clause for case sensitive comparision
select case when 'Sumi' = 'sumi' COLLATE Latin1_General_CS_AS then 'Equal' else 'Not Equal' end 



select * from visitor_log order by visit_DateTime desc
--75.98.9.254	2015-04-24 16:26:38.710	http://iselldemo.com/site_access.aspx

-- IS-23 4/27/15 (iAddress page and functions in the page)
Select * from iAddress where Contact_type = 'BA';
Select * from Business_info;

Select * from iSetting order by setting desc;

--iSearch to capture what users are looking for
select * from iSearch order by Ins_date desc;
Select * from Product_price where product_id = 100;

5/3/2015-- 

SELECT TOP 1000 [Product_ID]
      ,[Price_Seq_ID]
      ,[Product_Seq_ID]
      ,[Price_Effective_Start_Date]
      ,[Price_Effective_End_Date]
      ,[Price]
      ,[Added_Updated_by_ID]
      ,[Active_Price_Ind]
      ,[Ins_Date]
  FROM [iSell].[iSell].[Product_Price_Discount_Log]where product_id = 1003;
  
  Select * from Recently_Viewed_Product order by Viewed_DateTime desc;
  
  
  
  
    