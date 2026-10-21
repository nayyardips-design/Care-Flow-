# CareFlow – Hospital Operations & Activity Analytics

## Project Overview
CareFlow is a hospital workflow analytics project that explores synthetic hospital event-log data to understand activity patterns, patient-case pathways, process transitions, and department-wise event distribution.

## Project Objectives
- Analyze hospital workflow events and patient cases.
- Explore activity frequencies and event sequences.
- Examine process transitions using SQL and PM4Py.
- Build an interactive Power BI dashboard for exploring workflow data.

## Tools & Technologies
- Python (Pandas, data cleaning, EDA)
- SQL and Google BigQuery
- PM4Py for process mining
- Power BI for interactive visualization
- GitHub for project version control

## Dataset
The practice dataset contains 6,443 workflow events across 1,000 patient cases. It is synthetic data for learning and portfolio demonstration, not real hospital data.

## Key Analysis
- Activity frequency analysis
- Patient-case event sequences and process variants
- Process transitions between activities
- Department-wise event distribution
- Activity trends over time

## Power BI Dashboard
The interactive dashboard includes:
- KPI cards for patient cases, events, unique activities, and departments
- Activity frequency chart
- Department-wise activity chart
- Activity trend chart
- Department, activity, and date-range slicers

### Dashboard Preview:

![CareFlow Power BI Dashboard](Careflow_dashboard.jpeg)


## Project Files
- Python notebook: data cleaning, EDA, and process analysis
- SQL folder: BigQuery analysis queries
- Power BI file: interactive dashboard
- Dashboard screenshot: visual preview of the report

## Important Note
This project uses synthetic practice data. Observed event counts and elapsed times should not be interpreted as validated real-world hospital performance or patient waiting times.
