
insert into Employee
(empNumber,firstName,lastName, ssn, address, state,zip, job)
values
('12757678', 'John', 'Smith', '555908764', '235 westpark avenue', 'fl', '44122', 'Inspector')

insert into Employee
(empNumber,firstName,lastName, ssn, address, state,zip, job)
values
('87654321', 'Emily', 'Perez', '786555123', '5342 eastpark avenue', 'fl', '44125', 'Project Manager')

insert into Employee
(empNumber,firstName,lastName, ssn, address, state,zip, job)
values
('27425431', 'Andrew', 'Jackson', '123453123', '5342 eastpark avenue', 'fl', '44125', 'Project Manager')

insert into Employee
(empNumber,firstName,lastName, ssn, address, state,zip, job)
values
('86950382', 'Bill', 'Wilson', '103918264', '11231 113th ct', 'fl', '47105', 'Project Manager')

insert into Employee
(empNumber,firstName,lastName, ssn, address, state,zip, job)
values
('17654321', 'Ty', 'Hilton', '786555123', '10405 117th avenue', 'fl', '44125', 'Project Manager')

insert into Employee
(empNumber,firstName,lastName, ssn, address, state,zip, job)
values
('70905646', 'Jill', 'Rodgers', '214445976', '438 North 56th street', 'ga', '65875', 'Cast Member')

insert into Employee
(empNumber,firstName,lastName, ssn, address, state,zip, job)
values
('54365778', 'Jessica', 'Elliot', '232444346', '9563 apple street', 'fl', '33144', 'Project Manager')


insert into Firm 
(firmFedId,firmName,firmAddress)
values
('101011112', 'Turner Construction', '253 prios blvd')

insert into Firm 
(firmFedId,firmName,firmAddress)
values
('202022234', 'Classics Construction', '8794 maddison road')

insert into Firm 
(firmFedId,firmName,firmAddress)
values
('354698671', 'Addison Construction', '550 bird road')




insert into Project
(projectId,projectName,projectTypeCode,projectTypeDesc,startDate,projectedEndDate,status,fundedBudget, projectManager, firmFedId)
values 
('1124', 'The Hero Lair', 'food', 'restaurant', '10/04/2014', '12/04/2014', 'active', '100000.85', '87654321', '101011112')

insert into Project
(projectId,projectName,projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, firmFedId)
values 
('1223', 'Space Land', 'ride', 'ride', '10/06/2014', '12/06/2014', 'active', '200000.85', '54365778', '202022234')

insert into Project
(projectId,projectName,projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, firmFedId)
values 
('1111', 'Heros Auditorium', 'fac', 'facility', '10/01/2014', '12/28/2014', 'on-hold', '50000.62', '87654321', '101011112')

insert into Project
(projectId,projectName,projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, firmFedId)
values 
('1001', 'Venus', 'ride', 'ride', '10/02/2014', '03/13/2015', 'active', '40000.02', '54365778', '354698671')

insert into Project
(projectId,projectName,projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, firmFedId)
values 
('1002', 'Mars', 'ride', 'ride', '10/01/2014', '04/11/2015', 'inactive', '90000.12', '54365778','202022234')

insert into Project
(projectId,projectName,projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, firmFedId)
values 
('1003', 'Earth', 'ride', 'ride', '10/02/2014', '04/16/2015', 'active', '80000.42', '54365778', '101011112')

insert into Project
(projectId,projectName,projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, firmFedId)
values 
('1009', 'blower', 'ride', 'ride', '10/05/2014', '04/18/2015', 'active', '90000.55', '54365778', '354698671')

insert into Project
(projectId,projectName,projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, firmFedId)
values 
('1005', 'Saturn', 'ride', 'ride', '10/05/2014', '04/18/2015', 'active', '70600.55', '54365778', '354698671')



insert into activity
(activityId,activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId)
values
('0001', 'Space', '192504.21', 'active', 'wa', 'warranty', '10/06/2014', null, '1223')

insert into activity
(activityId,activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId)
values
('0002', 'Auditorium', '250030.54', 'on-hold', 'de', 'design', '06/12/2014', '12/28/2014', '1111')

insert into activity
(activityId,activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId)
values
('0003', 'Food', '115000.32', 'active', 'wa', 'warranty', '09/06/2014', '12/04/2014', '1124')

insert into activity
(activityId,activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId)
values
('0004', 'Venus Construction', '22000.32', 'active', 'co', 'construction', '09/06/2014', '12/04/2014', '1001')

insert into activity
(activityId,activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId)
values
('0005', 'Mars Construction', '77000.32', 'cancelled', 'co', 'construction', '09/09/2014', '12/01/2014', '1002')

insert into activity
(activityId,activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId)
values
('0006', 'Earth Construction', '65000.32', 'active', 'co', 'construction', '09/06/2014', '12/04/2014', '1003')

insert into activity
(activityId,activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId)
values
('0007', 'Jupiter Construction', '100000.32', 'active', 'co', 'construction', '09/06/2014', '12/04/2014', '1004')

insert into activity
(activityId,activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId)
values
('0008', 'Saturn Construction', '110000.72', 'active', 'co', 'construction', '09/06/2014', '12/04/2014', '1005')

