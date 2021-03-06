CREATE TABLE PROJECT (
	projectId number(4),
	title varchar2(20),
	CONSTRAINT pk_project_projectId
	PRIMARY KEY (projectId)
);

INSERT INTO PROJECT VALUES (100,'Browser Plugin X');
INSERT INTO PROJECT VALUES (101,'Browser Plugin Y');
INSERT INTO PROJECT VALUES (102,'Browser Plugin Z');
INSERT INTO PROJECT VALUES (103,'Module1');
INSERT INTO PROJECT VALUES (104,'Module2');
INSERT INTO PROJECT VALUES (105,'Module3');
INSERT INTO PROJECT VALUES (106,'Module4');
INSERT INTO PROJECT VALUES (107,'Module5');
INSERT INTO PROJECT VALUES (108,'Module6');
INSERT INTO PROJECT VALUES (109,'Module7');
INSERT INTO PROJECT VALUES (110,'Module8');
INSERT INTO PROJECT VALUES (111,'Module9');
INSERT INTO PROJECT VALUES (112,'Module10');
INSERT INTO PROJECT VALUES (113,'Module11');
********************************************************************
CREATE TABLE EMP_PROJECT (
	projectId number(4),
	empNo	  number(4),
	CONSTRAINT pk_emp_project_projectId_empNo
	PRIMARY KEY (projectId, empNo),
	CONSTRAINT fk_emp_project_emp
	FOREIGN KEY (empNo)
	REFERENCES EMP(empNo),
	CONSTRAINT fk_emp_project_project
	FOREIGN KEY (projectId)
	REFERENCES PROJECT(projectId)
);

INSERT INTO EMP_PROJECT VALUES (100, 7839);
INSERT INTO EMP_PROJECT VALUES (100, 7369);
INSERT INTO EMP_PROJECT VALUES (100, 7499);
INSERT INTO EMP_PROJECT VALUES (100, 7566);
INSERT INTO EMP_PROJECT VALUES (100, 7698);
INSERT INTO EMP_PROJECT VALUES (101, 7839);
INSERT INTO EMP_PROJECT VALUES (102, 7654);
INSERT INTO EMP_PROJECT VALUES (103, 7654);
INSERT INTO EMP_PROJECT VALUES (104, 7900);
INSERT INTO EMP_PROJECT VALUES (105, 7900);
INSERT INTO EMP_PROJECT VALUES (106, 7521);
INSERT INTO EMP_PROJECT VALUES (107, 7521);
INSERT INTO EMP_PROJECT VALUES (108, 7876);
INSERT INTO EMP_PROJECT VALUES (109, 7876);
INSERT INTO EMP_PROJECT VALUES (110, 7934);
INSERT INTO EMP_PROJECT VALUES (111, 7934);

select * from EMP_PROJECT order by empNo asc;