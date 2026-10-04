select * from bank_churn;

#1
select geography,count(customerid),sum(exited),
sum(exited)/count(id) * 100 as churn_rate
from bank_churn
group by geography;
 
#2
select geography,count(customerid),sum(exited),
sum(exited)/count(id) * 100 as churn_rate
from bank_churn
group by geography;

#3

select 
case 
when age between 18 and 29 then "Young"
when age between 30 and 39 then "Thirties"
when age between 40 and 49 then "Fourties"
when age between 50 and 59 then "Fifties"
else "Senior Citizens"
end as age_group,
count(customerid) as total_cutomers,
sum(exited) as total_churn, round(sum(exited)/count(id)*100,2) as churn_rate from 
bank_churn 
group by age_group;


#4

select 
isactivemember, count(customerid) as total_cutomers,
sum(exited) as total_churn,count(customerid) - sum(exited) as total_retained,
round(sum(exited)/count(id)*100,2) as churn_rate
from bank_churn 
group by isactivemember;


#5

select geography,gender,count(customerid) as total_cutomers,
sum(exited) as total_churn, round(sum(exited)/count(id)*100,2) as churn_rate
from bank_churn group by geography,gender 
having total_cutomers > 100
order by geography;

update bank_churn
set gender="Female" where  gender="F";

 set sql_safe_updates = 0;

#6

select 
numofproducts, count(customerid) as total_cutomers,
sum(exited) as total_churn,count(customerid) - sum(exited) as total_retained,
round(sum(exited)/count(id)*100,2) as churn_rate
from bank_churn 
group by numofproducts
order by numofproducts;

#7

select customerid,
geography,
age,
numofproducts,
balance,
estimatedsalary,
creditscore from bank_churn
where numofproducts > 2 and exited = 1 and balance > 0
order by numofproducts desc, balance desc;

#8

select 
hascrcard, count(customerid) as total_cutomers,
sum(exited) as total_churn,count(customerid) - sum(exited) as total_retained,round(avg(estimatedsalary),2) as avg_sal,
round(avg(balance),2) as avg_bal,
round(sum(exited)/count(id)*100,2) as churn_rate
from bank_churn
group by hascrcard;

#9
select geography, round(avg(case when exited=1 then tenure end),2) as avg_churn_tenure,
round(avg(case when exited=0 then tenure end),2) as avg_retained_tenure,
count(case when exited=1 then id end) as total_churned,
count(case when exited=0 then id end) as total_retained
from bank_churn
group by geography;

#10
select
customerid, geography, balance, age,
creditscore,exited from bank_churn
where balance > (select avg(balance) from bank_churn) 
and exited = 1
order by balance desc;

#11

select case when exited = 1 then 'churned' else 'retained' end as status_, count(id) as Customer_count,
round(avg(balance),2) as Average_balance,
round(avg(estimatedsalary),2) as Average_estimated_salary,
round(avg(creditscore),2) as Average_credit_score,
round(avg(tenure),2) as Average_tenure from bank_churn
group by status_;

#12

select customerid,
geography,
balance,
age,
exited from bank_churn b
where balance > (select avg(balance) from bank_churn where geography=b.geography);


#13

select customerid,
geography,
balance,
age,
exited from bank_churn b where 
balance = (select max(b2.balance) from bank_churn b2 where b.geography=b2.geography);

#14

select customerid,
geography,
estimatedsalary,
balance,
exited from bank_churn 
where estimatedsalary > (select avg(estimatedsalary) from bank_churn) and
balance < (select avg(balance) from bank_churn);


#15 

select geography,card_type, count(customerid) as total_customers,
sum(case when exited = 1 then exited end) as total_churn,
round(sum(exited)/count(id)*100,2) as churn_rate
from bank_churn 
group by geography,card_type
having count(customerid) >=100
order by churn_rate desc;

#16 

select isactivemember,
hascrcard,
numofproducts,count(customerid) as total_customers,sum(exited) as total_churn,
round(sum(exited)/count(id)*100,2) as churn_rate from bank_churn
group by isactivemember,
hascrcard,
numofproducts
having total_customers >= 50
order by churn_rate desc;

#17 

select customerid,
geography,
creditscore,
balance,
age,
exited from bank_churn 
where creditscore < (select avg(creditscore) from bank_churn) and
balance > (select avg(balance) from bank_churn) and
exited = 1;

#18

with ranked as (select customerid,
geography,
balance,
age,
exited,
rank()over(partition by geography order by balance desc) as balance_rank
from bank_churn)
select * from ranked where balance_rank <6;

#19

select customerid,
geography,
balance,
round(avg(balance)over(partition by geography),2) as avg_country_bal,
round(balance - avg(balance)over(partition by geography),2) difference_from_country_av
from bank_churn;

#20

select 
case when isactivemember = 0 AND balance > 100000 AND numofproducts >= 2 then 'High Risk'
when isactivemember = 0 AND (balance > 100000 OR numofproducts >= 2) then 'Medium Risk'
else 'Low Risk' end as risk_category,
count(customerid) as total_customers,sum(exited) as total_churn,
round(sum(exited)/count(id)*100,2) as churn_rate from bank_churn
group by risk_category
order by churn_rate desc;