--question 4
select extract(month from when_created)as month_index, sum(amount),count(atx_id)as agent_transaction_count from agent_transactions where extract(year from when_created)= 2018 group by extract(month from when_created);