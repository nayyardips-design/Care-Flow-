# CareFlow Project Setup Guide

## Project Overview
CareFlow is a hospital workflow analytics portfolio project built using synthetic event-log data. It explores activity patterns, patient-case journeys, and department-wise event distribution.

## Tools Required
- Python and Jupyter Notebook
- Pandas and Matplotlib
- Google BigQuery and SQL
- Power BI Desktop
- PM4Py for process mining
- GitHub for version control

## Project Files
- `data/` – Raw event-log dataset and data notes
- `sql/` – BigQuery analysis queries
- `CareFlow_Python_EDA_Visualization.ipynb` – Python EDA and process analysis notebook
- `Careflow_Hospital_Operations_Analytics.pbix` – Power BI dashboard
- `Careflow_dashboard.jpeg` – Dashboard preview
- `README.md` – Project overview and findings

## Workflow
1. Inspect and validate the event-log dataset.
2. Clean required columns and timestamps in Python.
3. Explore activity frequencies and patient-case sequences.
4. Run SQL analysis in BigQuery.
5. Explore process variants and activity transitions using PM4Py.
6. Review the results through the Power BI dashboard.

## Data Disclaimer
The dataset is synthetic practice data. Results are for learning and portfolio demonstration only and must not be interpreted as actual hospital performance.
