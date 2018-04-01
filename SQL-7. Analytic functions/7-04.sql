/*
Для всех сотрудников вывести id отдела, фамилию, специальность(job_id) и количество людей в данном отделе с такой специальностью.
*/

select department_id, last_name, job_id, count(employee_id) over(partition by job_id, department_id)
from employees