

--Here is the SQL code to create the trigger
CREATE trigger Trg_ProjectAudit
ON Project
AFTER Insert, Delete

AS
Begin	
	--If the 
	 if exists(select 1 from inserted)
	 BEGIN 
		 INSERT INTO ProjectAudit
		 (projectId, projectName, projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, dateModifiedRecord, operation, username)
		 SELECT	projectId, projectName, projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, getdate(), 'INSERT', SYSTEM_USER
		 FROM INSERTED
	END
	if exists(select 1 from deleted)
	 begin
		INSERT INTO ProjectAudit
		 (projectId, projectName, projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, dateModifiedRecord, operation, username)
		 SELECT	projectId, projectName, projectTypeCode, projectTypeDesc, startDate, projectedEndDate, status, fundedBudget, projectManager, getdate(), 'DELETE', SYSTEM_USER
		 FROM deleted
	END
END
GO

CREATE trigger Trg_ActivityAudit
ON Activity
AFTER Insert, Delete

AS
Begin	
	--If the 
	 if exists(select 1 from inserted)
	 BEGIN 
		 INSERT INTO ActivityAudit
		 (activityId, activityName, costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId, dateModifiedRecord, operation, username)
		 SELECT	activityId, activityName, costToDate, status, activityTypeCode, activityTypeDesc, startDate, endDate, projectId, getdate(), 'INSERT', SYSTEM_USER
		 FROM INSERTED
	END
	if exists(select 1 from deleted)
	 begin
		INSERT INTO ActivityAudit
		 (activityId, activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId, dateModifiedRecord, operation, username)
		 SELECT	activityId,activityName,costToDate,status,activityTypeCode,activityTypeDesc,startDate,endDate,projectId, getdate(), 'DELETE', SYSTEM_USER
		 FROM deleted
	END
END
GO

CREATE trigger Trg_EmployeeAudit
ON Employee
AFTER Insert, Delete

AS
Begin	
	--If the 
	 if exists(select 1 from inserted)
	 BEGIN 
		 INSERT INTO EmployeeAudit
		 (empNumber, firstName, lastName, ssn, address, state, zip, job, dateModifiedRecord, operation, username)
		 SELECT	empNumber, firstName, lastName, ssn, address, state, zip, job, getdate(), 'INSERT', SYSTEM_USER
		 FROM INSERTED
	END
	if exists(select 1 from deleted)
	 begin
		INSERT INTO EmployeeAudit
		 (empNumber, firstName, lastName, ssn, address, state, zip, job, dateModifiedRecord, operation, username)
		 SELECT	empNumber, firstName, lastName, ssn, address, state, zip, job, getdate(), 'DELETE', SYSTEM_USER
		 FROM deleted
	END
END
GO
