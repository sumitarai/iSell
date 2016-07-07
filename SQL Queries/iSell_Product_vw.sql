USE [iSell]
GO

/****** Object:  View [iSell].[iSell_Product_vw]    Script Date: 3/23/2016 11:39:50 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[iSell_Product_vw] AS
SELECT
       	pd.designer_id, pd.name AS pd_name, pd.url AS pd_url, pd.description AS pd_description,
		ps.supplier_id, ps.name AS ps_name, ps.url AS ps_url, ps.description  AS ps_description,
		p.product_id, pdet.SKU AS DSKU, p.description, p.quantity, p.product_type,
		pdet.size AS product_size, pdet.gender,pdet.color, pdet.season,
		pdet.kids_code, kpc.code_txt AS kids_code_txt, kpc.description AS kids_description,
		ppic.picture_seq_id,
		ppic.picture_path,
		ISNULL(ppic.picture_name,'') AS picture_name,
		ppic.picture_file_type,
		pprice.price_seq_id,
		pprice.price_effective_start_date,
		pprice.price_effective_end_date,
		ISNULL(pprice.price,0) AS price,
		/*
		promo_cd.promo_id,
		promo_cd.promo_CD,
		promo_cd.promo_start_date,
		promo_cd.promo_end_date,
		promo_cd.promo_spec,
		promo_cd.promo_value*/
		CASE p.sales_method
			WHEN 'O' THEN 'Online Only'
			WHEN 'S' THEN 'Store Only'
			ELSE 'Online & Store'
		END AS available_method,
		pdet.product_seq_id,
		pdet.category1,
		/*force to 0 for null value so that the app function does not break on NULL */
		ISNULL(sales_price.price,0) AS sale_price,
		GETDATE() AS run_date_time
FROM 
 dbo.product p LEFT OUTER JOIN dbo.master_product mp
 ON p.master_product_id = mp.master_product_id
 LEFT OUTER JOIN dbo.product_designer pd
 ON mp.designer_id  = pd.designer_id
 LEFT OUTER JOIN dbo.product_supplier ps
 ON mp.supplier_id = ps.supplier_id
 LEFT OUTER JOIN dbo.product_detail pdet
 ON p.product_id = pdet.product_id
 LEFT OUTER JOIN dbo.kids_product_code kpc
 ON pdet.kids_code = kpc.kids_code
 LEFT OUTER JOIN dbo.product_picture ppic 
 ON p.product_id = ppic.product_id AND ppic.display_ord_id = (SELECT MIN(ppic1.display_ord_id) FROM dbo.product_picture ppic1 WHERE  p.product_id = ppic1.product_id)
 LEFT OUTER JOIN dbo.product_price pprice 
 ON p.product_id = pprice.product_id AND pdet.product_seq_id = pprice.product_seq_id
 /*Product_Price_Discount_Log keeps all the discounted prices and ONE active discounted price. Use sub-query to limit to the active discount price and Left Outer Join to it */
 LEFT OUTER JOIN (SELECT * FROM dbo.Product_Price_Discount_Log WHERE active_price_ind ='Y') sales_price
 ON pprice.product_id = sales_price.product_id AND pprice.product_seq_id = sales_price.product_seq_id AND pprice.price_seq_id = sales_price.price_seq_id
 /*LEFT OUTER JOIN dbo.promo_cd_detail promo_det
 ON p.product_id = promo_det.product_id
 LEFT OUTER JOIN dbo.promo_cd 
 ON promo_det.promo_id = promo_cd.promo_id*/
WHERE
	GETDATE() BETWEEN COALESCE(pprice.price_effective_start_date,GETDATE()) AND COALESCE(pprice.price_effective_end_date,GETDATE())
	AND pdet.product_seq_id = 1
	AND pprice.active_price_ind ='Y';	

GO



