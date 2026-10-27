# CareFlow Dataset Data Dictionary

## Project Dataset

CareFlow uses synthetic hospital workflow event-log data for learning and portfolio analysis. It does not represent real hospital operations.

| Column | Description |
|---|---|
| Case_ID | Identifier used to group events belonging to a patient case |
| Activity_Name | Hospital workflow activity recorded in the event log |
| Timestamp | Date and time when an event was recorded |
| Department | Department associated with the event |
| Doctor_ID | Identifier associated with a doctor, where available |
| Event_Reason | Recorded reason associated with an event |
| Gender | Gender category in the synthetic dataset |
| Pathway_Type | Workflow pathway category |
| Patient_Age | Patient age value in the synthetic dataset |

## Usage Notes

- Case_ID is used to group events into patient-case sequences.
- Timestamp is used to order events chronologically.
- Activity_Name supports activity-frequency and process-transition analysis.
- Department supports department-wise event analysis.
- The dataset is synthetic and must not be interpreted as evidence of real hospital performance.
- Elapsed time between events does not necessarily represent actual waiting time.
