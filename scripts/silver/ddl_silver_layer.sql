/*
===============================================================================
DDL Script: Create Silver Tables
===============================================================================
Script Purpose:
    This script creates tables in the 'silver' schema, dropping existing tables 
    if they already exist.
	  Run this script to re-define the DDL structure of 'bronze' Tables
===============================================================================
*/


if OBJECT_ID('Silver.crm_cust_info','u') is not null
	drop table Silver.crm_cust_info;
create table Silver.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE,
dwh_create_date DATETIME2 default GETDATE()

);

if OBJECT_ID('Silver.crm_prd_info','u') is not null
	drop table Silver.crm_prd_info;
create table Silver.crm_prd_info(
prd_id INT,
prd_key NVARCHAR(50),
cat_id NVARCHAR(50),
prd_nm NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_start_dt DATE,
prd_end_dt DATE,
dwh_create_date DATETIME2 default GETDATE()

);

if OBJECT_ID('Silver.crm_sales_details','u') is not null
	drop table Silver.crm_sales_details;
create table Silver.crm_sales_details(
sls_ord_num NVARCHAR(50),
sls_prd_key NVARCHAR(50),
sls_cust_id INT,
sls_order_dt date,
sls_ship_dt date,
sls_due_dt date,
sls_sales INT,
sls_quantity INT,
sls_price INT,
dwh_create_date DATETIME2 default GETDATE()
);

if OBJECT_ID('Silver.erp_cust_az12','u') is not null
	drop table Silver.erp_cust_az12;
create table Silver.erp_cust_az12(
CID NVARCHAR(50),
BDATE DATE,
GEN NVARCHAR(50),
dwh_create_date DATETIME2 default GETDATE()
);

if OBJECT_ID('Silver.erp_loc_a101','u') is not null
	drop table Silver.erp_loc_a101;
create table Silver.erp_loc_a101(
CID NVARCHAR(50),
CNTRY NVARCHAR(50),
dwh_create_date DATETIME2 default GETDATE()
)

if OBJECT_ID('Silver.erp_px_cat_g1v2','u') is not null
	drop table Silver.erp_px_cat_g1v2;
create table Silver.erp_px_cat_g1v2(
ID NVARCHAR(50),
CAT NVARCHAR(50),
SUBCAT NVARCHAR(50),
MAINTENANCE NVARCHAR(50),
dwh_create_date DATETIME2 default GETDATE()
)
