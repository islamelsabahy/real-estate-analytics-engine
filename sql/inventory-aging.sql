-- Fictional reference query

select
    unit_id,
    project_id,
    as_of_date,
    as_of_date - availability_start_date as age_days,
    case
        when as_of_date - availability_start_date <= 30 then '0-30'
        when as_of_date - availability_start_date <= 60 then '31-60'
        when as_of_date - availability_start_date <= 90 then '61-90'
        when as_of_date - availability_start_date <= 180 then '91-180'
        when as_of_date - availability_start_date <= 365 then '181-365'
        else '365+'
    end as aging_bucket
from inventory_snapshot
where inventory_status = 'Available';
