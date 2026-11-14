# Salesforce Service Cloud Contact Centre Transformation

<sub>Primary Tech Mahindra Program Manager – Strategic Program Office interview case study</sub>

> **Portfolio simulation.** This is a detailed implementation simulation built around the interview guide's 150-seat / 90-day BPO transition scenario. It is designed to demonstrate project planning, governance, stakeholder management, technology coordination, operational readiness and BAU handover. Scenario baselines, targets, dates and outcomes are illustrative unless independently verified.

## Project at a glance

| Item | Scenario |
|---|---|
| Transformation | Legacy contact-centre systems to Salesforce Service Cloud |
| Agent population | 150 seats |
| Telephony | Existing Avaya environment integrated through CTI |
| Delivery window | 90 calendar days |
| Pilot | 30 agents |
| Rollout | Two waves of 60 agents |
| Delivery model | Hybrid: predictive governance + iterative configuration/testing |
| Primary business owners | Client Operations, IT, PMO, WFM, QA and Training |

## Business problem

Separate ticketing, telephony and email systems fragment customer context, create repeated manual effort and limit SLA visibility. The target state consolidates case management in Salesforce Service Cloud, integrates Avaya telephony, migrates agreed customer/case data and standardizes operational workflows.

## Project artifacts

| Artifact | Link |
|---|---|
| Project overview | [01 – Project Overview](01-Project-Overview.md) |
| Project Charter | [02 – Project Charter](02-Project-Charter.md) |
| Statement of Work | [03 – SOW](03-Statement-of-Work.md) |
| Project Management Plan | [04 – PMP](04-Project-Management-Plan.md) |
| WBS and milestones | [05 – WBS and Milestones](05-WBS-and-Milestones.md) |
| Testing and UAT | [06 – Testing and UAT Plan](06-Testing-and-UAT-Plan.md) |
| Training and KT | [07 – Training and Knowledge Transfer](07-Training-and-Knowledge-Transfer.md) |
| Cutover and rollback | [08 – Cutover and Rollback](08-Cutover-and-Rollback-Plan.md) |
| Hypercare and BAU | [09 – Hypercare and BAU Handover](09-Hypercare-and-BAU-Handover.md) |
| Steering report | [10 – Steering Committee Status Report](10-Steering-Committee-Status-Report.md) |
| Operational SOPs | [11 – Operational SOPs](11-Operational-SOPs.md) |
| Voice narrative | [12 – Interview Voice Narrative](12-Voice-Narrative.md) |
| Interview Q&A | [13 – Tech Mahindra Interview Q&A](13-Tech-Mahindra-Interview-QA.md) |
| 150-seat scenario | [14 – Scenario Planning](14-Scenario-Planning-150-Seat-Transition.md) |
| STAR examples | [15 – STAR Examples and Resume Probes](15-STAR-Examples-and-Resume-Probes.md) |
| Excel integrated plan | [16 – 90-Day Transition Plan.xlsx](16-90-Day-Transition-Plan.xlsx) |
| Microsoft Project schedule | [17 – 90-Day MS Project Schedule.xml](17-90-Day-MS-Project-Schedule.xml) |

## Technical workstreams

1. **Salesforce CRM configuration:** accounts, contacts, cases, fields, page layouts, profiles, roles, permissions, queues, assignment rules, escalations and dashboards.
2. **Avaya CTI integration:** softphone, caller identification, screen-pop, call transfer/hold and interaction logging, subject to approved connector design.
3. **Data migration:** source inventory, profiling, cleansing, mapping, test migration, reconciliation and production migration.
4. **Testing:** SIT, defect management, regression and business UAT.
5. **People readiness:** SOPs, WFM capacity, training cohorts, Train-the-Trainer, shadowing and competency checks.
6. **Transition:** 30-agent pilot, two 60-agent rollout waves, hypercare and BAU handover.

## Scenario KPI framework

| KPI | Scenario baseline | Target / definition |
|---|---:|---|
| SLA adherence | Below 82% | At least 95% for 14 consecutive days |
| CSAT | Below 74% | +12 percentage points |
| AHT | 25% above target | Improve toward client-agreed target |
| Uptime | To be baselined | 99.9% during agreed measurement window |
| Response time | To be baselined | 20% reduction |
| Team efficiency | To be baselined | 30% improvement using an agreed formula |

A 12-percentage-point CSAT improvement from 74% would equal 86%. That is an illustration, not a verified result. The efficiency measure and all baselines must be defined before reporting benefits.

## How to present this project

Present the business problem, your project-management approach, the workstreams, dependencies, governance, risk decisions, pilot and go-live controls, and BAU exit evidence. Explain what you personally own as Project Manager and distinguish that from engineering, configuration and data-development work.

**Important:** Do not claim that this simulated project was delivered for a real client or that the scenario targets were achieved unless you can substantiate the engagement, your contribution and the underlying KPI evidence.
