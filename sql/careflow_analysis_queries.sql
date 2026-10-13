-- CareFlow Project
-- Purpose: Patient journey and hospital process analysis

-- 1.Total event and Unique Patients records
SELECT
    COUNT(*) AS total_events,
    COUNT(DISTINCT Case_ID) AS unique_patient_cases
FROM `careflow-project-511108.CAREFLOW.raw_event_log`;


-- 2.Count of events by hospital activity
SELECT
    Activity_Name,
    COUNT(*) AS total_events
FROM `careflow-project-511108.CAREFLOW.raw_event_log`
GROUP BY Activity_Name
ORDER BY total_events DESC;


--3.Check missing values
SELECT
    COUNT(*) AS total_rows,

    COUNTIF(Case_ID IS NULL) AS missing_case_id,

    COUNTIF(Activity_Name IS NULL) AS missing_activity,

    COUNTIF(Timestamp IS NULL) AS missing_timestamp

FROM `careflow-project-511108.CAREFLOW.raw_event_log`;


-- 4.Find exact duplicate rows
SELECT
    Case_ID,
    Activity_Name,
    Timestamp,
    COUNT(*) AS duplicate_count
FROM careflow-project-511108.CAREFLOW.raw_event_log
GROUP BY
    Case_ID,
    Activity_Name,
    Timestamp
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;

-- 5.Count activities for each patient
select
    Case_ID, count(*) as Total_Activities,
    count(distinct Case_ID) as Different_Activities
FROM careflow-project-511108.CAREFLOW.raw_event_log    
group by Case_ID
order by Total_Activities desc
limit 10;

-- 6. Department Wise Event Count
select
   Department,
   count(*) as Total_events,
   count(distinct CASE_ID) as Unique_Patients
from careflow-project-511108.CAREFLOW.raw_event_log
group by Department
order by Total_events desc;  

-- 7. Most Frequent recorded Activity
select
     Activity_Name,count(*)as Total_Events
FROM careflow-project-511108.CAREFLOW.raw_event_log
group by Activity_Name
order by Total_Events desc;

--8. Patient Journey Sequence
select
    Case_ID,
    Activity_name,
    Timestamp,
    Department
FROM careflow-project-511108.CAREFLOW.raw_event_log
where Case_ID is not null
order by Case_ID, TIMESTAMP
LIMIT 50;

--9. Calculate time between consecutive activities

WITH patient_journey AS (
    SELECT
        Case_ID,
        Activity_Name,
        Timestamp,
        
        lead(Activity_Name)over(
          partition by Case_ID
          order by Timestamp ) as next_activity,

        lead(Timestamp)over(
           partition by Case_ID
           order by Timestamp) 
           as next_timestamp
        
    from careflow-project-511108.CAREFLOW.raw_event_log     
        )

    select 
      Activity_Name,next_activity,
      count(*)as transition_count,

      Round(
        AVG(
          timestamp_diff(next_timestamp,timestamp,minute
           )
        ),2
      ) as average_minutes


FROM patient_journey
where next_activity is not null
 and next_timestamp >= timestamp

group by Activity_Name,
      next_activity
order by average_minutes desc;      

-- 10. Repeated Activities
with patient_journey as(
  select
      Case_ID,Activity_Name,Timestamp,
      lag(Activity_Name)over(
        partition by Case_ID
        order by TIMESTAMP
      )as previous_activity
      from careflow-project-511108.CAREFLOW.raw_event_log 
)
select
    Case_ID,previous_activity,Activity_Name,Timestamp
from patient_journey
where Activity_Name= previous_activity
order by Case_ID,Timestamp;

-- 11. Pathway Type Analysis
select Pathway_Type,
       count(distinct Case_id) as Unique_Patients,
      count(*) as Total_Events
from careflow-project-511108.CAREFLOW.raw_event_log 
group by Pathway_Type
order by Unique_Patients;


