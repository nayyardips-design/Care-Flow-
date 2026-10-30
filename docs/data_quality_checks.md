# CareFlow – Data Quality Checks

## Objective
To review the quality and consistency of the synthetic hospital event-log dataset before performing data analysis.

## Data Quality Checks Performed

1. **Missing Values:** Checked important fields such as Case_ID, Activity_Name, and Timestamp for missing values.
2. **Duplicate Records:** Reviewed duplicate event records during data preparation.
3. **Data Types:** Ensured Timestamp was converted into a datetime format.
4. **Chronological Ordering:** Sorted events by Case_ID and Timestamp to study patient-case sequences.
5. **Required Columns:** Verified that the essential columns were available for workflow analysis.
6. **Data Consistency:** Reviewed activity names and department values for consistency.

## Why Data Quality Matters

Data quality checks help improve the reliability of activity-frequency analysis, patient-case pathways, process transitions, and dashboard reporting.

## Note
This project uses synthetic practice data. The checks are intended for portfolio demonstration and do not represent validation of real hospital records.
