use COMPANY;
select T1.Essn as "Manager ssn", T2.Dnumber as "Dept.Id", T1.Number_of_dependents from (
select Essn, count(*) as Number_of_dependents from DEPENDENT
where Essn in(
select Mgr_ssn from DEPARTMENT
where Dnumber in (
select n.Dnumber from (
select Dnumber, count(*) as no_of_loc from DEPT_LOCATIONS
group by Dnumber ) as n 
where no_of_loc > 1 ) ) 
group by Essn ) as T1, DEPARTMENT as T2 where T1.Essn=T2.Mgr_ssn