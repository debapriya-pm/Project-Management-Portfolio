# Salesforce Service Cloud Contact Centre Transformation

> **Portfolio case study / implementation simulation.** This is a structured demonstration project designed for the Tech Mahindra Program Manager – Strategic Program Office interview. It uses the guide's 150-seat / 90-day transition scenario and the Salesforce / Avaya contact-centre context discussed during preparation. Treat volumes, baselines, targets, dates and outcomes as illustrative planning assumptions unless independently verified from a real engagement.

## Executive summary

I designed this case study around a contact centre operating with fragmented ticketing, telephony and email tools. Agents had to move between systems to understand customer history, log interactions and monitor cases. The fragmentation reduced visibility, increased handling effort and made consistent SLA management difficult.

The proposed transformation consolidates customer service operations on **Salesforce Service Cloud**, integrates the existing **Avaya telephony environment through CTI**, migrates agreed customer and case data, and transitions a **150-agent operation** through a controlled pilot and phased rollout within a **90-calendar-day planning window**.

## Scenario baseline and intended outcomes

| Measure | Illustrative baseline | Target / success criterion |
|---|---:|---:|
| SLA adherence | Below 82% | At least 95% for 14 consecutive days |
| CSAT | Below 74% | Improve by 12 percentage points |
| AHT | 25% above target | Move toward the contractually agreed target |
| Agent population | 150 seats | 150 trained, provisioned and transitioned |
| Platform uptime | To be baselined | 99.9% during the agreed measurement window |
| Customer response time | To be baselined | 20% reduction using a consistent definition |
| Team efficiency | To be baselined | 30% improvement using an agreed productivity formula |

**Measurement discipline:** A 12-percentage-point CSAT improvement from 74% would mean 86%. That is a scenario illustration, not a verified outcome. A 30% efficiency claim must specify the measure (for example, contacts per paid hour or cost per contact) before it can be reported.

## Business problem

- Legacy ticketing, telephony and email applications hold customer information in separate places.
- Agents repeat customer verification and manually search interaction history.
- Call details and service cases are not consistently linked.
- Case ownership, priority and escalation practices vary across teams.
- Supervisors have limited real-time visibility into AHT, FCR, SLA risk and workload.
- Operational teams need a transition approach that protects live queue performance.

## Target solution

1. **Salesforce Service Cloud:** customer account/contact records, case management, queues, assignment rules, escalation rules, knowledge and operational reporting.
2. **Avaya CTI integration:** softphone controls, caller identification, screen-pop, call transfer/hold and call logging, subject to connector capability and approved architecture.
3. **Data migration:** inventory, profile, cleanse, map, test-load, reconcile and migrate agreed customer and case records.
4. **Operational transition:** SOPs, training, Train-the-Trainer, 30-agent pilot, two rollout waves of 60 agents each, hypercare and BAU handover.
5. **Governance:** integrated plan, WBS, RAID, RACI, change control, steering reporting, go/no-go criteria and benefits tracking.

## Delivery approach

I use a **hybrid delivery model**:
- Predictive controls for scope, budget, milestones, dependencies, approvals, cutover and BAU acceptance.
- Iterative configuration, demonstrations, defect resolution and regression testing for Salesforce and CTI workstreams.
- Daily transition coordination during build and rollout, weekly operational reviews and monthly executive steering.

## 90-day planning window

- Planning baseline: 30 November 2026.
- Planned operational acceptance: 26 February 2027.
- Scenario window: 30 November 2026 to 27 February 2027 (90 calendar days).
- The schedule contains parallel workstreams and explicit dependencies. Validate task durations, vendor lead times, weekend cutover windows and resource availability before treating it as a committed baseline.

## Portfolio deliverables

- Project overview, charter and Statement of Work.
- Project Management Plan and governance model.
- WBS and milestone map.
- Excel integrated schedule workbook, plus separate CSV control registers for stakeholders, RACI, RAID, communications, budget/resources and KPIs.
- Microsoft Project XML schedule for import into MS Project.
- SIT/UAT, training/KT, cutover/rollback and hypercare/BAU plans.
- Operational SOPs.
- Steering Committee status report.
- First-person presentation narrative.
- Interview question bank aligned to the supplied Tech Mahindra guide.

## How to present this case study

Explain the business problem, your role as the project manager in the simulation, the workstreams you coordinated, the decisions you would take, and the evidence required at each gate. Do not describe illustrative outcomes as historical achievements. If you have a real project with comparable evidence, replace the assumptions and clearly distinguish your actual responsibilities from this simulation.
