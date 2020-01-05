
select d.Name as Department, e.Name as Employee, e.Salary as Salary
from Employee e join Department d on e.DepartmentId = d.Id
where e.Salary >= all(select DepartmentId, Salary from Employee where DepartmentId = d.id)
