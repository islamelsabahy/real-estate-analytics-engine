-- Fictional reference query

select
    expected_collection_date,
    sum(expected_amount) as expected_cash
from payment_obligation
where expected_collection_date between current_date
    and current_date + interval '90 day'
group by expected_collection_date
order by expected_collection_date;
