# Anomaly Test Cases

## Conversion Drop
Current conversion significantly below trailing baseline.
Expected: anomaly flag, no root-cause claim.

## Collection Drop
Expected: flag and identify contributing segments if data supports it.

## Inventory Aging Spike
Expected: flag concentration by project/type.

## Bad Source Data
If data-quality failure exists, expected analytics output should be marked unreliable/blocked according to policy.
