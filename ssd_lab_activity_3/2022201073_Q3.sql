use COMPANY;
select Essn as "Manager ssn", count(*) as "Number of projects" from WORKS_ON
where Essn in (
select Mgr_ssn from DEPARTMENT
where Dnumber in (
select Dnum from PROJECT 
where Pname="ProductY" ))