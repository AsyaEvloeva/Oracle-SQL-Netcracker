/*
Вывести сотрудников (employees), у которых менеджер (manager_id) не совпадает с менеджером отдела,
где работает сотрудник (department_id, см. также атрибут manager_id в таблице departments).
Вывести нужно 3 столбца, в каждом из которых - фамилия (last_name): сотрудника, менеджера сотрудника, менеджера отдела.
Указание: использовать явное именование столбцов результирующей выборки (aliases)
*/

SELECT e.last_name as a, m.last_name as b, dm.last_name as c 
FROM departments d, employees e,employees m, employees dm 
WHERE e.department_id = d.department_id and e.manager_id <> d.manager_id and e.manager_id = m.employee_id and d.manager_id = dm.employee_id