Use iSell;
Select * from iSell.Visitor_Log
order by visit_datetime desc;


Select * from Recently_Viewed_Product
order by Viewed_DateTime desc;

Select vl.Customer_IP_Address, vl.Visit_DateTime, vl.Initial_URL, rv.Product_ID, rv.Email_ID 
from Visitor_Log vl
inner join Recently_Viewed_Product rv
on vl.Customer_IP_Address = rv.Customer_IP_Address
order by Visit_DateTime desc;