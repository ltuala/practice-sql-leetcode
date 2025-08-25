-- https://leetcode.com/problems/customers-who-never-order/
-- select name as Customers
-- from Customers
-- where id not in (
--     select customerId
--     from Orders);
-- if orders have null will return nothing as not in null is invalid

select Customers.name as Customers
from Customers
left join Orders on Customers.id = Orders.customerId
where Orders.customerId is null;