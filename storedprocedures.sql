-- Update Project
CREATE PROCEDURE U_DIS_UpdateProject
@projectId char(4),
 @projectName varchar (50),
  @projectTypeCode char (5),
   @projectTypeDesc varchar (50),
    @startDate date,
	 @projectedEndDate date,
	  @status varchar (25),
	   @fundedBudget decimal (16,2),
	    @projectManager char (8),
		 @firmFedId char (9),
		 @firmName varchar (50),
@firmAddress varchar (50)
AS
BEGIN
IF EXISTS (SELECT * FROM firm WHERE firmFedId = @firmFedId   )
UPDATE firm
	set Firm.firmFedId = @firmFedId,
		Firm.firmName =  @firmName,
		Firm.firmAddress = @firmAddress 
  where Firm.firmFedId = @firmFedId;
else 
Print 'ERROR: person not in DB'
return
IF EXISTS (SELECT * FROM Project WHERE projectId = @projectId   )
UPDATE Project
	set Project.projectId = @projectId,
	 Project.projectName = @projectName,
	  Project.projectTypeCode = @projectTypeCode,
	   Project.startDate = @startDate,
	Project.projectedEndDate = @projectedEndDate,
	 Project.status = @status,
	  Project.fundedBudget = @fundedBudget,
	   Project.projectManager = @projectManager,
	    Project.firmFedId = @firmFedId
	where Project.projectId = @projectId;

	else 
	Print 'ERROR: person not in DB'
	return
end; 

-- addproject
CREATE PROCEDURE U_DIS_AddProject
@projectId char(4), 
@projectName varchAr(50), 
@projectTypeCode char(5), 
@projectTypeDesc varchar(50), 
@startDate date, 
@projectedEndDate date, 
@status varchar(25), 
@fundedBudget decimal, 
@projectManager char(8), 
@firmFedId char(9),
@firmName varchar (50),
@firmAddress varchar (50)
AS
BEGIN
INSERT INTO Project
VALUES
(@projectId, @projectName, @projectTypeCode, @projectTypeDesc, @startDate, @projectedEndDate, @status, @fundedBudget, @projectManager, @firmFedId)

Insert into Firm
values
(@firmFedId , @firmName , @firmAddress)

END;

-- Update Employe
create procedure U_DIS_UpdateEmployee (
	@empnumber char(8), 
	@firstname varchar(25), 
	@lastname varchar(25), 
	@ssn char(9), 
	@address varchar(50), 
	@state char(2), 
	@zip char(5), 
	@job varchar(50)
)as 
begin 
	if exists ( Select * from Employee where Employee.empNumber = @empnumber)
	Update Employee 
	set Employee.empNumber = @empNumber , Employee.firstName = @firstname, Employee.lastName = @lastname, Employee.ssn = @ssn,
	Employee.address = @address, Employee.state = @state, Employee.zip = @zip, Employee.job = @job
	where Employee.empNumber = @empNumber;

	else 
	Print 'ERROR: person not in DB'
	return
end;

-- Delete Employee
create procedure U_DIS_DeleteEmployee(
	@empNumber char(8)
)as 
begin 
	if exists( Select * from Employee where empNumber = @empNumber)
	Delete from Employee
		where empNumber = @empNumber;
end;

-- ADD eMPlOYEE
create procedure U_DIS_AddEmployee(
	@empNumber char(8), @firstname varchar(25), @lastname varchar(25), @ssn char(9), @address varchar(50), @state char(2), @zip char(5), @job varchar(50)
)as 
begin 
	insert into Employee 
	values (@empNumber, @firstname, @lastname, @ssn, @address, @state, @zip, @job)
end;


-----Upate Activity
create procedure U_DIS_UpdateActivity (
    @activityId char (4),
	@activityName varchar (50),
	@costToDate decimal (16,2),
	@status varchar (25),
	@activityTypeCode char (2),
	@activityTypeDesc varchar (50),
	@startDate date,
	@endDate date,
	@projectId char (4)
)as
begin
	if exists ( Select * from Activity where Activity.activityId = @activityId)
	Update Activity
	set Activity.activityId = @activityId , Activity.activityName = @activityName, Activity.costToDate = @costToDate, Activity.status = @status,
	Activity.activityTypeCode = @activityTypeCode, Activity.activityTypeDesc = @activityTypeDesc, Activity.startDate = @startDate, Activity.endDate = @endDate, Activity.projectId = @projectId
	where Activity.activityId = @activityId;

	else 
	Print 'ERROR: person not in DB'
	return
end;

-- Delete Avtivity
create procedure U_DIS_DeleteActivity(
	@activityId char(4) 
)as 
begin 
	if exists (Select * from Activity where activityId = @activityId)
	Delete from Activity
		where activityId = @activityId  ;
end;

-- Add Activity
create procedure U_DIS_AddActivity(
	@Activityid char(4) ,
	@ActivityName varchar(50) , 
	@costToDate decimal(16,2),
	@status varchar(25) ,
	@activityTypeCode char(2),
	@activityTypeDesc varchar(50),
	@startDate date,
	@endDate date,
	@Projectid char(4)
)as 
begin 
	Insert into Activity
	values( @Activityid, @ActivityName, @costToDate, @status, @activityTypeCode , @activityTypeDesc,
	@startDate , @endDate, @Projectid)
end;

-- Delete Project
Create procedure U_DIS_DeleteProject (
		@ProjectId char(4)
)as 
begin 
	If exists (Select * from Project where projectID = @ProjectId) 
	Delete from Project 
		where projectid = @ProjectId;
end;