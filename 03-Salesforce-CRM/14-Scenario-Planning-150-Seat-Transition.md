# Scenario-Based Planning: 150-Seat BPO Transition in 90 Days

This document directly addresses the sample scenario on pages 2–3 of the supplied Tech Mahindra interview guide. The scenario is adapted to a Salesforce Service Cloud and Avaya CTI implementation.

## 1. First 48 hours: understand the client

I would confirm:
- Service scope, products, contact types and customer journeys.
- 150-seat volume profile, peak intervals, languages, service hours and locations.
- Contractual SLAs, AHT, FCR, CSAT, quality and abandon targets.
- Current ticketing, telephony, email, identity and reporting systems.
- Data volumes, retention, privacy, access and migration requirements.
- Recruitment, attrition, training and certification requirements.
- Infrastructure, network, endpoint, licence and vendor dependencies.
- Client decision-makers, SMEs, acceptance owners and escalation routes.

## 2. Feasibility and assumptions

I would validate whether the 90-day target is feasible based on environment readiness, vendor lead times, data quality, integration complexity, security approvals, resource availability and training capacity. I would document assumptions and constraints instead of treating them as facts.

## 3. Define scope and acceptance

**In scope:** Salesforce CRM setup, Avaya CTI integration, agreed data migration, testing, training, pilot, phased cutover, hypercare and BAU.

**Acceptance:** critical workflows pass SIT/UAT, data reconciliation is accepted, agents are trained and provisioned, cutover/rollback are approved, and service stabilization criteria are met.

## 4. Governance

| Forum | Cadence | Purpose |
|---|---|---|
| Steering Committee | Monthly / by exception | Strategic decisions, budget, scope and escalations |
| Operational Review | Weekly | Readiness, service metrics, workforce and issues |
| Transition Scrum | Daily | Blockers, dependencies and near-term work |
| Workstream reviews | 2–3 times weekly | Detailed technical and operational progress |

## 5. Workstreams

1. PMO, governance and client management.
2. Discovery, requirements and process design.
3. Salesforce configuration and access.
4. Avaya CTI integration and infrastructure.
5. Data migration and reconciliation.
6. SIT, UAT and quality assurance.
7. Recruitment, WFM, training and knowledge transfer.
8. Pilot, cutover, hypercare and BAU.

## 6. 90-day high-level sequence

| Window | Activities |
|---|---|
| Weeks 1–2 | Mobilization, SOW/charter, stakeholder mapping, discovery, feasibility |
| Weeks 2–3 | Requirements, As-Is/To-Be maps, architecture, security and data design |
| Weeks 4–6 | CRM configuration, CTI integration, data cleansing and test migration |
| Weeks 7–8 | SIT, defect resolution, UAT preparation and training development |
| Weeks 8–9 | UAT, Train-the-Trainer, agent training and access readiness |
| Weeks 10–11 | Cutover rehearsal, 30-agent pilot, pilot review and go/no-go |
| Weeks 11–12 | Wave 1: 60 agents; stabilization; Wave 2: 60 agents |
| Weeks 12–13 | Hypercare, KPI monitoring, knowledge transfer and BAU acceptance |

The Excel schedule and MS Project XML contain task-level durations, owners and finish-to-start dependencies. Some deployment activities use weekend windows. Validate the exact dates and local holiday calendar with the client.

## 7. Workforce and resource plan

I would confirm required headcount, recruitment pipeline, training throughput, attrition assumptions, supervisor ratio, floor-walker coverage and WFM shrinkage. I would stagger training cohorts and use backfill to protect live service. Indicative roles include one Program Manager, one or two BAs, Salesforce architect/lead, two to four Salesforce administrators/developers, two CTI engineers, two to three data resources, two to three QA resources, WFM, Operations SMEs, Training leads and BAU support.

## 8. Budget plan

I would build the budget from:
- Salesforce user licences and any required add-ons.
- CTI connector and telephony vendor services.
- Salesforce architecture/configuration effort.
- Data migration effort.
- Network, security and infrastructure changes.
- Recruitment, training, floor-walkers and backfill.
- Testing, vendor support and contingency.

I would not quote a number without licence rates, vendor quotes, rate cards and approved effort estimates. I would track actuals, commitments, estimate-to-complete and variance.

## 9. Risk plan

| Risk | Mitigation |
|---|---|
| CTI or network delay | Early connectivity proof, vendor escalation and approved fallback |
| Data quality issues | Early profiling, cleansing rules and reconciliation |
| Licence delay | Named owner, user roster and provisioning deadline |
| Agent resistance | Super-users, coaching, floor-walkers and feedback |
| Training capacity affects SLA | Staggered cohorts and WFM backfill |
| Scope creep | Change request with cost/schedule/quality impact |
| Security approval delay | Early security review and least-privilege access |
| Recruitment shortfall | Pipeline review, contingency capacity and phased hiring |

## 10. Tracking and recovery

I would update the integrated schedule weekly, track critical path and near-critical dependencies, and review milestone variance. When a task slips, I would identify the cause, quantify downstream impact, assess parallel work and resource options, and present a recovery recommendation. I would increase cadence for critical workstreams and communicate forecast changes early.

## 11. Readiness, pilot and cutover

I would use an evidence-based readiness checklist covering:
- UAT acceptance and defect severity.
- Data migration reconciliation.
- Security, network and user access.
- CTI and telephony smoke tests.
- SOPs, training and agent competency.
- WFM coverage and supervisor readiness.
- Service desk, incident and vendor support.
- Cutover communications and rollback plan.

I would pilot 30 agents, review defects and operational KPIs, and obtain a steering go/no-go decision before transitioning the two 60-agent waves.

## 12. Hypercare and BAU

I would run daily incident triage, monitor SLA/AHT/FCR/CSAT/abandon rate/uptime, resolve priority issues and transfer runbooks, SOPs, knowledge articles, escalation matrices, known errors, dashboards and support ownership. I would secure BAU acceptance and document lessons learned.

## 13. How I would handle an unexpected challenge

If CTI testing is delayed by two weeks, I would:
1. Confirm the root cause and whether it affects the critical path.
2. Separate blocked CTI tests from CRM configuration, data cleansing, training content and other independent work.
3. Ask the CTI lead and vendor for recovery options and a time-bound plan.
4. Consider an approved stub/sandbox or controlled fallback for non-production validation, without bypassing production acceptance.
5. Re-sequence the schedule and assess pilot/cutover impact.
6. Present cost, time, scope and operational trade-offs to the sponsor.
7. Communicate the revised forecast and track daily until recovered.

I would not declare the solution ready if end-to-end CTI validation remains a critical acceptance requirement.
