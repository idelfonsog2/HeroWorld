-- A decision to delete all the rows in the other tables 
-- because of their foreign key relationship to this project needs to be made
exec U_DIS_DeleteProject @ProjectId = '1009';

-- Add Acitivity exec statement
exec U_DIS_AddActivity @Activityid = '0009' , @ActivityName = 'JamSession', @Projectid = '1111', 
@costToDate = '4325.45', @status = 'Active', @activityTypeCode = 'WA', @activityTypeDesc = 'WARRANTY', @startDate = '09/06/2014', @endDate = '12/04/2014';

-- Update Activity

DECLARE	@return_value int

EXEC	@return_value = [dbo].[updateActivity]
		@activityId = N'0001',
		@activityName = N'SpaceBoy',
		@costToDate = 192504.21,
		@status = N'active',
		@activityTypeCode = N'wa',
		@activityTypeDesc = N'warranty',
		@startDate = '2014/10/06',
		@endDate = NULL,
		@projectId = N'1223'

SELECT	'Return Value' = @return_value

GO

--Delete Activity
exec U_DIS_DeleteActivity @activityId  = '0004' ;

--Add Employee
exec U_DIS_AddEmployee @empNumber = '1454232' , @firstname ='Mike', @lastname ='Jones', @ssn ='342219845' , @address =' 1320 sw 107 av miami', @state ='fl', @zip ='30365', @job ='Cast Member';

--Update employee
exec U_DIS_UpdateEmployee  
@empNumber = '1224232' , 
@firstname ='MikeY', 
@lastname ='Jones',
@ssn ='342219845' , 
@address =' 1320 sw 107 av miami', 
@state ='fl', @zip ='30365', @job ='Cast Member';

-- Add Project

DECLARE	@return_value int

EXEC	@return_value = [dbo].[AddProject]
		@projectId = N'1212',
		@projectName = N'house of lies',
		@projectTypeCode = N'FAC',
		@projectTypeDesc = N'Facility',
		@startDate = '11-24-2014',
		@projectedEndDate = '12-24-2014',
		@status = N'active',
		@fundedBudget = 10000.00,
		@projectManager = N'54365778',
		@firmFedId = N'101011112'

SELECT	'Return Value' = @return_value

GO

-- Update Project
DECLARE	@return_value int

EXEC	@return_value = [dbo].[UpdateProject]
		@projectId = N'1001',
		@projectName = N'VenusAAA',
		@projectTypeCode = N'ride',
		@projectTypeDesc = N'ride',
		@startDate = '2014-10-02',
		@projectedEndDate = '2015-03-13',
		@status = N'active',
		@fundedBudget = 40000.02,
		@projectManager = N'54365778',
		@firmFedId = N'354698671'

SELECT	'Return Value' = @return_value

GO


DECLARE	@return_value int

EXEC	@return_value = [dbo].[UpdateProject]
		@projectId = N'1212',
		@status = N'on-hold'

SELECT	'Return Value' = @return_value

GO