 Select * from dbo.State_CD
 order by display_ind;
  Delete from dbo.state_CD;
  
  Alter table dbo.State_CD
  alter column Display_Ind varchar (1);
  
Insert into dbo.State_CD values ('AL','Alabama','Y');
Insert into dbo.State_CD values ('AK','Alaska','Y');
Insert into dbo.State_CD values ('AZ','Arizona','Y');
Insert into dbo.State_CD values ('AR','Arkansas','Y');
Insert into dbo.State_CD values ('CA','California','Y');
Insert into dbo.State_CD values ('CO','Colorado','Y');
Insert into dbo.State_CD values ('CT','Connecticut','Y');
Insert into dbo.State_CD values ('DE','Delaware','Y');
Insert into dbo.State_CD values ('FL','Florida','Y');
Insert into dbo.State_CD values ('GA','Georgia','Y');
Insert into dbo.State_CD values ('HI','Hawaii','Y');
Insert into dbo.State_CD values ('ID','Idaho','Y');
Insert into dbo.State_CD values ('IL','Illinois','Y');
Insert into dbo.State_CD values ('IN','Indiana','Y');
Insert into dbo.State_CD values ('IA','Iowa','Y');
Insert into dbo.State_CD values ('KS','Kansas','Y');
Insert into dbo.State_CD values ('KY','Kentucky','Y');
Insert into dbo.State_CD values ('LA','Louisiana','Y');
Insert into dbo.State_CD values ('ME','Maine','Y');
Insert into dbo.State_CD values ('MD','Maryland','Y');
Insert into dbo.State_CD values ('MA','Massachusetts','Y');
Insert into dbo.State_CD values ('MI','Michigan','Y');
Insert into dbo.State_CD values ('MN','Minnesota','Y');
Insert into dbo.State_CD values ('MS','Mississippi','Y');
Insert into dbo.State_CD values ('MO','Missouri','Y');
Insert into dbo.State_CD values ('MT','Montana','Y');
Insert into dbo.State_CD values ('NE','Nebraska','Y');
Insert into dbo.State_CD values ('NV','Nevada','Y');
Insert into dbo.State_CD values ('NH','New Hampshire','Y');
Insert into dbo.State_CD values ('NJ','New Jersey','Y');
Insert into dbo.State_CD values ('NM','New Mexico','Y');
Insert into dbo.State_CD values ('NY','New York','Y');
Insert into dbo.State_CD values ('NC','North Carolina','Y');
Insert into dbo.State_CD values ('ND','North Dakota','Y');
Insert into dbo.State_CD values ('OH','Ohio','Y');
Insert into dbo.State_CD values ('OK','Oklahoma','Y');
Insert into dbo.State_CD values ('OR','Oregon','Y');
Insert into dbo.State_CD values ('PA','Pennsylvania','Y');
Insert into dbo.State_CD values ('RI','Rhode Island','Y');
Insert into dbo.State_CD values ('SC','South Carolina','Y');
Insert into dbo.State_CD values ('SD','South Dakota','Y');
Insert into dbo.State_CD values ('TN','Tennessee','Y');
Insert into dbo.State_CD values ('TX','Texas','Y');
Insert into dbo.State_CD values ('UT','Utah','Y');
Insert into dbo.State_CD values ('VT','Vermont','Y');
Insert into dbo.State_CD values ('VA','Virginia','Y');
Insert into dbo.State_CD values ('WA','Washington','Y');
Insert into dbo.State_CD values ('WV','West Virginia','Y');
Insert into dbo.State_CD values ('WI','Wisconsin','Y');
Insert into dbo.State_CD values ('WY','Wyoming','Y');


Use iSell;
--Country_CD
Select * from  dbo.Country_CD; 
Insert into dbo.Country_CD values ('US','United States','Y',1);

Insert into dbo.Country_CD values ('CA','Canada','Y',2);

--In order to insert the data, requires to drop all relationships with Country_CD and insert, then restore the relationships.
Alter table Address_Book
Drop "Country_Code-Address_Book";
Alter table iSell.dbo.Address_Book
alter column Country_CD varchar (2); 
Alter table Address_Book
add constraint "Country_Code-Address_Book" foreign key (Country_CD) references Country_CD (Country_CD);

  
Alter table Billing_Info
Drop "Country_CD-To-Billing_Info";
Alter table iSell.dbo.Billing_Info
alter column Country_CD varchar (2); 
Alter table Billing_Info
add constraint "Country_CD-To-Billing_Info" foreign key (Country_CD) references Country_CD (Country_CD);

Alter table Order_Shipping
Drop "Country_CD-Order_Shipping";
Alter table iSell.dbo.Order_Shipping
alter column Country_CD varchar (2); 
Alter table Order_Shipping
add constraint "Country_CD-Order_Shipping" foreign key (Country_CD) references Country_CD(Country_CD);

Alter table Customer_Info
Drop "Country_CD-Customer_Info";
Alter table iSell.dbo.Customer_Info
alter column Country_CD varchar (2); 
Alter table Customer_Info
add constraint "Country_CD-Customer_Info" foreign key (Country_CD) references Country_CD (Country_CD);


Alter table Country_CD
Drop "Country_Code PK";

Alter table Country_CD
Alter column Country_CD varchar(2) not null;
Alter table iSell.dbo.Country_CD
alter column Country_CD varchar (2); 
Alter table Country_CD
add constraint "Country_Code PK" primary key (Country_CD);

Alter table iSell.dbo.Admin_User_Log
alter column Log_Date datetime;

Select * from dbo.product_supplier;

Select * from dbo.product_Type;
Insert into dbo.product_Type
values ('AP','Apparel',1);
Insert into dbo.product_Type
values ('HC','Handicraft',7);
Insert into dbo.product_Type
values ('JW','Jewelry',4);
Insert into dbo.product_Type
values ('MU','Music',3);
Insert into dbo.product_Type
values ('OT','Other',6);
Insert into dbo.product_Type
values ('PP','Paper Product',2);
Insert into dbo.product_Type
values ('ST','Statue',5);


Select * from dbo.product_Size;
Alter table dbo.product_Size
alter column Size_Txt varchar (30);
Insert into dbo.product_Size
values ('L','Large',4);
Insert into dbo.product_Size
values ('M','Medium',3);
Insert into dbo.product_Size
values ('N/A','Not Applicable', 100);
Insert into dbo.product_Size
values ('S','Small',2);
Insert into dbo.product_Size
values ('XL','Extra Large',5);
Insert into dbo.product_Size
values ('XS','Extra Small',1);
Insert into dbo.product_Size
values ('XXL','Extra Extra Large',6);
Insert into dbo.product_Size
values ('XXX','Extra Extra Extra Large',7);

Select * from dbo.product_Color
order by Display_Seq_ID;
Alter table dbo.product_Color
alter column Color_Txt varchar (30);
Insert into dbo.product_Color
values ('AQA','Aqua',1);
Insert into dbo.product_Color
values ('BLK','Black',2);
Insert into dbo.product_Color
values ('BRN','Brown',3);
Insert into dbo.product_Color
values ('GRN','Green',4);
Insert into dbo.product_Color
values ('N/A','Not Applicable',100);
Insert into dbo.product_Color
values ('RED','Red',5);
Insert into dbo.product_Color
values ('WHT','White',7);
Insert into dbo.product_Color
values ('YLW','Yellow',6);

Update dbo.product_Color
set Display_Seq_ID=8 
where color='PNK';

Insert into dbo.product_Color
values ('PNK','Pink',8);





/*SELECT '-' AS Color, 'Select Product Color' AS Color_Txt, 0 as display_seq_id 
UNION ALL 
SELECT Color, Color_Txt, display_seq_id FROM dbo.Product_Color ORDER BY display_seq_id
*/