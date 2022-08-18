use COMPANY;
select T1.Dnumber as "Dept.Id", T2.Dname as "Dept.Name", T1.Number_of_locations from
(select Dnumber, count(*) as Number_of_locations from DEPT_LOCATIONS
where Dnumber in (
select Dnumber from DEPARTMENT 
where Mgr_ssn in (
select n.Essn from (
select Essn, count(*) as no_of_fem from DEPENDENT 
where Sex="F" 
group by Essn ) as n where no_of_fem > 1) )
group by Dnumber ) as T1, DEPARTMENT as T2 where T1.Dnumber=T2.Dnumber