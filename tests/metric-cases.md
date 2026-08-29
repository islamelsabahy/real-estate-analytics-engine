# Metric Test Cases

## 1. Zero Denominator
Expected: return null/undefined rate, not divide by zero.

## 2. Cancelled Contract
Expected: include/exclude based on metric definition.

## 3. Partial Month
Expected: label partial period.

## 4. Duplicate Funnel Event
Expected: deduplicate based on approved event key.

## 5. Inventory Snapshot
Expected: same unit counted once per snapshot.

## 6. Paid Obligation
Expected: not included in overdue outstanding.

## 7. Forecast
Expected: expected date used, not contractual due date when metric says operational forecast.
