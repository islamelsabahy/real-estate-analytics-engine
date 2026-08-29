-- Fictional reference query

select
    schedule_id,
    contract_id,
    due_date,
    outstanding_amount,
    current_date - due_date as days_overdue
from payment_obligation
where outstanding_amount > 0
  and due_date < current_date;
