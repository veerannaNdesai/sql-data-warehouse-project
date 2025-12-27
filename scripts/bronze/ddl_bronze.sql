/*
=======================================================
SCRIPT PURPOSE  - to DROP and create erp and crm tables if they exists with name convention.
WARNING - if the tables exists this script going to drop the table entirely that may cause lose the data.
so proceed with caution make sure you have backup for everything.
========================================================

*/
-- create tables for the data coming from the sources

use Datawarehouse;

if OBJECT_ID('Bronze.crm_cust_info','u') is not null
	drop table Bronze.crm_cust_info;
create table Bronze.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE

);

if OBJECT_ID('Bronze.crm_prd_info','u') is not null
	drop table Bronze.crm_prd_info;
create table Bronze.crm_prd_info(
prd_id INT,
prd_key NVARCHAR(50),
prd_nm NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_start_dt DATE,
prd_end_dt DATE

);

if OBJECT_ID('Bronze.crm_sales_details','u') is not null
	drop table Bronze.crm_sales_details;
create table Bronze.crm_sales_details(
sls_ord_num NVARCHAR(50),
sls_prd_key NVARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);

if OBJECT_ID('Bronze.erp_cust_az12','u') is not null
	drop table Bronze.erp_cust_az12;
create table Bronze.erp_cust_az12(
CID NVARCHAR(50),
BDATE DATE,
GEN NVARCHAR(50)
);

if OBJECT_ID('Bronze.erp_loc_a101','u') is not null
	drop table Bronze.erp_loc_a101;
create table Bronze.erp_loc_a101(
CID NVARCHAR(50),
CNTRY NVARCHAR(50)
)

if OBJECT_ID('Bronze.erp_px_cat_g1v2','u') is not null
	drop table Bronze.erp_px_cat_g1v2;
create table Bronze.erp_px_cat_g1v2(
ID NVARCHAR(50),
CAT NVARCHAR(50),
SUBCAT NVARCHAR(50),
MAINTENANCE NVARCHAR(50)
)











