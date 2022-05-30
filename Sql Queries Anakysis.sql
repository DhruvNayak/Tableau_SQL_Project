select * from sales.customers;
select * from sales.date;
select * from sales.markets;
select * from sales.products;
select * from sales.transactions;
select distinct customer_type from sales.customers;
-- Right click on sales set as default schema
select distinct customer_type from customers;
select * from products;
select distinct zone from markets;
select distinct product_type from products;
select count(*) from transactions;
select distinct currency from transactions;
select * from transactions where market_code='Mark001';
select sum(transactions.sales_amount) from transactions where market_code='Mark001';
select distinct product_code from transactions where market_code='Mark001';
select * from transactions;
select * from transactions where currency='USD';
select transactions.*,date.* from transactions inner join date
on transactions.order_date=date.date;
select transactions.*,date.* from transactions inner join date
on transactions.order_date=date.date where date.year=2020;
select sum(transactions.sales_amount),date.year from transactions inner join date
on transactions.order_date=date.date where date.year=2020;
select sum(transactions.sales_amount),date.year from transactions inner join date
on transactions.order_date=date.date where date.year=2020 and date.month_name='January';
select sum(transactions.sales_amount),date.year from transactions inner join date
on transactions.order_date=date.date where date.year=2020 and transactions.market_code='Mark001';

