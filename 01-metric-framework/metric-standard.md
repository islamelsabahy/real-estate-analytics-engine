# Metric Standard

Each metric should define:

- metric_id
- name
- business definition
- grain
- numerator
- denominator
- filters
- exclusions
- date field
- aggregation
- unit
- owner
- certification status

## Example

### Reservation-to-Contract Conversion

```text
Contracts Created From Reservations
÷
Eligible Reservations
× 100
```

The eligibility window must be defined explicitly.
