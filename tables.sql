CREATE TABLE Employee (

empNumber char (8) not null Primary Key , 
firstName varchar (25) not null, 
lastName varchar (25) not null, 
ssn char (9) not null, 
address varchar (50) not null, 
state char (2) not null, 
zip char (5) not null, 
job varchar (50) not null CONSTRAINT con_job CHECK (job IN ('Cast Member', 'Engineer', 'Inspector', 'Project Manager'))

)

CREATE TABLE Firm (

firmFedId char (9) not null Primary Key, 
firmName varchar (50) not null, 
firmAddress varchar (50) not null

)

CREATE TABLE Project ( 

projectId char (4) not null Primary Key, 
projectName varchar (50) not null, 
projectTypeCode char (5) not null CONSTRAINT conprojectTypeCode CHECK (projectTypeCode IN ('FAC', 'RIDE', 'FOOD')), 
projectTypeDesc varchar (50) not null CONSTRAINT conprojectTypeDesc CHECK (projectTypeDesc IN ('Facility', 'Ride', 'Restaurant')), 
startDate date not null, 
projectedEndDate date not null, 
status varchar (25) not null CONSTRAINT con_projectStatus CHECK ( status IN ('Active', 'Inactive', 'Cancelled', 'On-Hold')), 
fundedBudget decimal (16,2) not null, 
projectManager char (8) not null foreign key references Employee(empNumber) on delete cascade,
firmFedId char (9) not null foreign key references Firm(firmFedId) on delete cascade

)
CREATE TABLE Activity (

activityId char (4) not null Primary Key, 
activityName varchar (50) not null, 
costToDate decimal (16,2) null, 
status varchar (25) not null CONSTRAINT conactivityStatus CHECK ( status IN ('Active', 'Inactive', 'Cancelled', 'ON-Hold')), 
activityTypeCode char (2) not null CONSTRAINT conactivityTypeCode CHECK (activityTypeCode IN ('DE','CO', 'WA')), 
activityTypeDesc varchar (50) not null CONSTRAINT con_activityTypeDesc CHECK (activityTypeDesc IN ('DESIGN', 'CONSTRUCTION', 'WARRANTY')), 
startDate date not null, 
endDate date, 
projectId char (4) not null foreign key references Project(ProjectId) on delete cascade

)
-- Audit Tables:
CREATE TABLE [dbo].[ProjectAudit](
	[projectId] [char](4) NOT NULL,
	[projectName] [char](50) not null,
	[projectTypeCode] [char](5) not NULL,
	[projectTypeDesc] [varchar](50) not NULL,
	[startDate] date not NULL,
	[projectedEndDate] date not NULL,
	[status] [varchar] (25) not null ,
	[fundedBudget] [decimal] (16,2) not null ,
	[projectManager] [char] (8) not null,
	[dateModifiedRecord] datetime not NULL,
	[Operation] [varchar](50) not null,
	[username] [char] (50) not null
)
Create table [dbo].[ActivityAudit]
(
	[activityId] [char](4) not null,
	[activityName] [varchar](50) not null,
	[costToDate][decimal] (16, 2) not null,
	[status][varchar] (25) not null,
	[activityTypeCode] [char](2) not null,
	[activityTypeDesc][varchar](50) not null,
	[startDate] date not null,
	[endDate] date not null,
	[projectId] [char](4) not null,
	[dateModifiedRecord] datetime not null,
	[operation] [varchar] (6) not null,
	[username] [varchar] (50) not null
)

create table [dbo].[EmployeeAudit]
(
	[empNumber][char](8) not null,
	[firstName][varchar](25) not null,
	[lastName][varchar](25) not null,
	[ssn][char] (9) not null,
	[address][varchar](50) not null,
	[state][char](2) not null,
	[zip][char] (5) not null,
	[job][varchar] (50) not null,
	[dateModifiedRecord] datetime not null,
	[operation] [varchar] (6) not null,
	[username] [varchar] (50) not null
	)