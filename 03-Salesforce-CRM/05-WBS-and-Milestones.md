# Work Breakdown Structure and Milestones

## Level 1 WBS

| WBS | Work package | Key outputs |
|---|---|---|
| 1.0 | Mobilization and governance | Authorization, charter, governance, stakeholders, RACI, baseline |
| 2.0 | Discovery and design | Current state, requirements, feasibility, To-Be workflows, architecture |
| 3.0 | Salesforce CRM and CTI build | Licences, CRM configuration, case management, CTI and reporting |
| 4.0 | Data migration | Inventory, cleansing, mapping, test load and reconciliation |
| 5.0 | Testing and acceptance | SIT, defect resolution, UAT and business sign-off |
| 6.0 | People and operational readiness | SOPs, workforce plan, WFM, Train-the-Trainer and agent training |
| 7.0 | Pilot | Cutover rehearsal, readiness gate, 30-agent pilot and go/no-go |
| 8.0 | Production rollout | Wave 1: 60 agents; Wave 2: 60 agents |
| 9.0 | Hypercare and BAU | Daily support, KPI monitoring, knowledge transfer, acceptance and lessons learned |

## Key milestones

| Milestone | Target window | Evidence |
|---|---|---|
| M1 – Charter and baseline approved | Week 1 | Signed charter, scope, governance |
| M2 – Requirements and design approved | Week 3 | Requirements, process maps, architecture |
| M3 – CRM/CTI build and data test load complete | Week 6 | Configuration, integration and reconciliation evidence |
| M4 – SIT complete | Week 8 | Test results and critical defect closure |
| M5 – UAT accepted | Week 9 | Business acceptance |
| M6 – Training and readiness complete | Week 10 | Competency and access records |
| M7 – Pilot accepted | Week 11 | Pilot scorecard and steering go/no-go |
| M8 – 150 agents transitioned | Week 12 | Wave validation and queue stability |
| M9 – BAU acceptance | By 26 February 2027 | KPI evidence, runbooks and sign-off |

## Critical path and schedule logic

The main technology path is:

**Salesforce environment and architecture → CRM configuration / CTI connector → integrated testing → defect resolution → UAT → operational readiness → pilot → go/no-go → rollout → hypercare → BAU acceptance.**

Data migration, training development, workforce planning and parts of operational readiness run in parallel where dependencies permit. The schedule workbook identifies task-level predecessor IDs. Review the critical path in Microsoft Project after importing the XML and validating the project calendar.

## Scheduling assumptions

- Five-day working week for standard project activities.
- Weekend or out-of-hours deployment windows may be used for cutover where client operations require it.
- The plan is a 90-calendar-day scenario, not a commitment for an actual client.
- Vendor, security, data and client approval lead times must be confirmed before baseline approval.
