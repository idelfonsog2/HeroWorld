
create view vw_Project as
(
select Project.projectId, projectName, Firm.firmFedId, firmName, firmAddress, fundedbudget, startDate, status, projectTypeCode, 
projectTypeDesc, projectedEndDate, projectManager
from Project inner join Firm
on Firm.firmFedId = Project.firmFedId
)


create view vw_Activity as
(
select activityId, activityName, projectId, costToDate, status, activityTypeCode, activityTypeDesc, startDate, endDate
from Activity
)

create view vw_Employee as
(
select empNumber, firstName, lastName, ssn, address, state, zip, job
from Employee
)

create view vw_LateProjects as
(
select Project.projectId, Project.projectName, Project.fundedbudget, Project.startDate, Project.status, Project.projectTypeCode, 
Project.projectTypeDesc, Project.projectedEndDate, Project.projectManager, Project.firmFedId 
from Project inner join Activity
on Activity.projectId = Project.projectId
where endDate >= projectedEndDate and Project.status='active'
)

/*
Report any active projects (all project columns) where the activity’s 
end date is after the project’s project end date (The project is now or will be late).
*/

create view vw_OverBudget as
(
select Project.projectName, sum(Activity.costToDate) as summarizedActivityCost, Project.fundedBudget
from Project inner join Activity
on Activity.projectId = Project.projectId
where Project.status='active'
group by Project.projectName, Project.fundedBudget
having sum(costToDate) > fundedBudget
)

/*
Report any active projects (project name, summarized activity cost, funded budget) where the sum of its 
activities cost are higher than the project’s funded budget (The project is over budget).
*/

create view vw_OverAllocatedPM as
(
select Employee.firstName, Employee.lastName, Employee.ssn, count(*) as projectNum
from Employee inner join Project
on Project.projectManager = Employee.empNumber
group by firstName, lastName, ssn
having count(*) > 5
)

/*
Report the First Name, Last Name and SSN of any employees that manage more than 5 projects.
*/

create view vw_CostlyActivity as
(
select Project.projectId, Project.projectName, Activity.activityName, Activity.costToDate
from Activity inner join Project
on Project.projectId = Activity.projectId
where Activity.status = 'on-hold'
or Activity.status = 'cancelled'
and Project.status = 'active'
)

/*
Report the project id, project name, activity name and cost for those activitieswhich 
have been cancelled or on-hold and belong to an active project.
*/

create view vw_CompletedProjects as
(
select Project.projectId, Project.projectName, Project.projectTypeCode, Activity.activityTypeCode
from Activity inner join Project
on Project.projectId = Activity.projectId
where Activity.activityTypeCode = 'wa'
and Activity.endDate is not null
)

/*
Report the Project Id, Name, and Type which has an activity type of “WARRANTY” AND 
the Activity End Date field is not NULL.
*/

