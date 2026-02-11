DAY 8 - WINDOWS FUNCTION PART - 1

use company;

select * from employees;

select
	id,
	name,
	salary,
	sum(salary) over() as 'Total Salary'
from
	employees;

select
	id,
	name,
	salary,
	sum(salary) over() as 'Total Salary',
    round(salary / (sum(salary) over()) * 100, 2) as 'Percent of Total Salary'
from
	employees;
        
select
	*,
    sum(salary) over(order by salary) as 'Running Total Salary'
from
	employees;
    
select
	*,
    sum(salary) over(order by id) as 'Running Total Salary'
from
	employees;
    
select
	*,
    sum(salary) over(partition by department) as 'Total Salary'
from
	employees;

select
	*,
    sum(salary) over(partition by city) as 'Total Salary'
from
	employees;
    
select
	*,
    sum(salary) over(partition by department order by id) as 'Running Total Salary'
from
	employees;

    
