-- Fictional reference query

with stage_counts as (
    select
        report_month,
        sum(case when stage = 'Lead' then 1 else 0 end) as leads,
        sum(case when stage = 'Qualified' then 1 else 0 end) as qualified,
        sum(case when stage = 'Opportunity' then 1 else 0 end) as opportunities,
        sum(case when stage = 'Reservation' then 1 else 0 end) as reservations,
        sum(case when stage = 'Contract' then 1 else 0 end) as contracts
    from analytics_funnel_events
    group by report_month
)
select
    report_month,
    leads,
    contracts,
    case when leads > 0
         then contracts * 100.0 / leads
    end as lead_to_contract_pct
from stage_counts;
