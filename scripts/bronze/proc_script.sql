/*
=================================================
SCRIPT PURPOSE - to create a procedure which will 
                    TRUNCATE TABLE IF DATA EXISTS ,
                    INSERT BULK DATA FROM THE CSV FILES EFFICIENTLY ,
                    SHOWCASES THE RUNTIME OF THE LOADING.
===================================================
*/

create or alter procedure Bronze.load_bronze as
	begin 
	declare @start_time datetime, @end_time datetime,
			@start_batch_time datetime, @end_batch_time datetime;

	set @start_batch_time = getdate();
	begin try
		-- loading the data into table 

		-- truncate and load the file , it ensures the data is loaded multiple times.

		print '===========================================';
		print 'Loading Bronze layer';
		print '===========================================';

		print '-------------------------------------------';
		print 'loading CRM tables'
		print '-------------------------------------------';

		set @start_time = getdate();
		print 'Truncating table : Bronze.crm_cust_info';
		truncate table Bronze.crm_cust_info;

		print 'inserting values into >> Bronze.crm_cust_info';
		bulk insert Bronze.crm_cust_info
		from 'C:\Users\Lenovo\OneDrive\Desktop\Sql warehouse project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print 'load duration : '+ cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds.';
		print '--------------------------------'

		set @start_time = getdate();
		print 'Truncating table : Bronze.crm_prd_info';
		truncate table Bronze.crm_prd_info;

		print 'inserting values into >> Bronze.crm_prd_info';
		bulk insert Bronze.crm_prd_info
		from 'C:\Users\Lenovo\OneDrive\Desktop\Sql warehouse project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print 'load duration : '+ cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds.';
		print '--------------------------------'

		set @start_time = getdate();
		print 'Truncating table : Bronze.crm_sales_details';
		truncate table Bronze.crm_sales_details;

		print 'inserting values into >> Bronze.crm_sales_details';
		bulk insert Bronze.crm_sales_details
		from 'C:\Users\Lenovo\OneDrive\Desktop\Sql warehouse project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print 'load duration : '+ cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds.';
		print '--------------------------------'


		print '-------------------------------------------';
		print 'loading ERP tables'
		print '-------------------------------------------';

		set @start_time = getdate();
		print 'truncating table Bronze.erp_cust_az12';
		truncate table Bronze.erp_cust_az12;

		print 'inserting values into >> Bronze.erp_cust_az12';
		bulk insert Bronze.erp_cust_az12
		from 'C:\Users\Lenovo\OneDrive\Desktop\Sql warehouse project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print 'load duration : '+ cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds.';
		print '--------------------------------'

		set @start_time = getdate();
		print 'truncating table : Bronze.erp_loc_a101';
		truncate table Bronze.erp_loc_a101;

		print 'inserting value into >> Bronze.erp_loc_a101';
		bulk insert Bronze.erp_loc_a101
		from 'C:\Users\Lenovo\OneDrive\Desktop\Sql warehouse project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print 'load duration : '+ cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds.';
		print '--------------------------------'

		set @start_time = getdate();
		print 'truncating table : Bronze.erp_px_cat_g1v2';
		truncate table Bronze.erp_px_cat_g1v2;

		print 'inserting values into >> Bronze.erp_px_cat_g1v2';
		bulk insert Bronze.erp_px_cat_g1v2
		from 'C:\Users\Lenovo\OneDrive\Desktop\Sql warehouse project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
		with(
			firstrow = 2,
			fieldterminator = ',',
			tablock
		);
		set @end_time = getdate();
		print 'load duration : '+ cast(datediff(second,@start_time,@end_time) as nvarchar) + 'seconds.';
		print '--------------------------------'

	end try

	begin catch
		print '========================================';
		print '>>ERROR OCCURED AT LOADING BRONZE LAYER';
		print 'ERROR : '+ ERROR_MESSAGE();
		print 'ERROR NUMBER : '+ CAST(ERROR_NUMBER() AS NVARCHAR) 
		print '========================================';
	end catch
	set @end_batch_time = getdate();
	print '---------------------------'
	print 'load duration of the batch : ' + cast(datediff(second,@start_batch_time,@end_batch_time) as nvarchar) + 'seconds.'
	print '---------------------------'
	end



