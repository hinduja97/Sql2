# Write your MySQL query statement below


with cte as (
select d.name as Department,e.name as Employee,dense_rank() over (partition by d.name order by Salary desc) as dense_sal
from employee e
join department d on e.departmentId=d.id
order by salary desc)

select Department,Employee,dense_sal
from cte ;
