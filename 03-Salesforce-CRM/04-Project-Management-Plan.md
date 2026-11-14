# Project Management Plan

## 1. Delivery strategy

I use a hybrid delivery model for this portfolio simulation. I baseline scope, milestones, dependencies, budget controls, approvals and cutover gates predictively. I coordinate Salesforce configuration and CTI integration iteratively through design reviews, demonstrations, test cycles and defect prioritization.

## 2. Lifecycle and control points

| Phase | Main activities | Gate / exit evidence |
|---|---|---|
| Initiation | SOW, business case, charter, stakeholder analysis | Charter and governance approved |
| Planning | WBS, integrated schedule, budget/resource plan, RAID, RACI | Baseline approved |
| Discovery/design | Requirements, As-Is/To-Be, architecture, data mapping | Design and requirements sign-off |
| Build | CRM configuration, CTI, migration, reports | Build complete and ready for SIT |
| Testing | SIT, defect resolution, UAT | UAT acceptance |
| Readiness | SOPs, training, access, WFM, cutover rehearsal | Operational readiness / go-no-go |
| Transition | Pilot and two rollout waves | Cohort acceptance |
| Stabilization | Hypercare, KPI monitoring, defect triage | BAU exit criteria met |
| Closure | Handover, sign-off, lessons learned | Formal project closure |

## 3. Scope management

I maintain a scope statement, requirements traceability matrix and deliverable acceptance register. I classify requests as in-scope clarification, defect, or scope change. I do not allow new channels or unapproved customizations to enter the release without impact assessment and approval.

## 4. Schedule management

- Maintain the integrated schedule in Microsoft Project.
- Use finish-to-start dependencies where a successor cannot begin until its predecessor completes.
- Track critical path, near-critical activities, float and milestone forecast.
- Update actual start/finish, remaining duration and percent complete weekly.
- Review schedule variance and recovery options with workstream owners.
- Protect the 90-day scenario window through parallel workstreams and early dependency resolution.

## 5. Cost and budget management

I establish a cost baseline after confirming licence quantities, vendor rates, implementation effort, infrastructure requirements, training backfill and contingency. I track actuals, commitments and estimate-to-complete. Any forecast overrun is explained by cause, impact and options before seeking approval.

**Cost categories:** Salesforce licences, CTI connector/telephony, implementation services, data migration, infrastructure/security, training/backfill, testing and contingency. Amounts remain TBC until vendor and client rates are confirmed.

## 6. Resource and capacity management

I maintain a role-based resource plan across PMO, BA, Salesforce, CTI, data, QA, Operations, WFM, HR/Recruitment, Training and BAU. I coordinate with WFM to stagger training and backfill agent time without compromising live queue SLAs. I escalate resource conflicts early and prioritize critical-path deliverables.

## 7. Quality management

- Maintain requirements-to-test traceability.
- Define SIT and UAT entry/exit criteria.
- Track defects by severity, business impact, owner, target date and retest status.
- Reconcile migrated record counts, mandatory fields, relationships and sample values.
- Require Operations and QA approval of SOPs and training collateral.
- Retain test evidence and approvals in the project repository.

## 8. Governance and communications

| Forum | Cadence | Focus |
|---|---|---|
| Executive Steering Committee | Monthly and by exception | RAG, budget, scope, major risks, decisions |
| Operational Review Committee | Weekly | Readiness, WFM, service performance, dependencies |
| Transition Scrum | Daily during build and transition | Progress, blockers, owners and near-term priorities |
| Workstream sessions | 2–3 times weekly | Design, configuration, data, testing and issue resolution |
| Agent/supervisor briefings | Weekly; daily during cutover | Training, process changes, dates and support |

## 9. Risk and issue management

I maintain one RAID log with unique IDs, type, probability, impact, owner, response, trigger, due date and status. Risks are reviewed weekly; critical issues are escalated immediately. I distinguish a risk (uncertain future event) from an issue (event that has already occurred).

## 10. Change and decision control

Every material change receives a unique ID, rationale, impact assessment, recommendation, approver and decision date. I maintain a decision log and communicate approved changes to affected teams. I update the baseline only after approval.

## 11. Cutover and rollback management

I require a cutover rehearsal, validated data backup/export, access and licence checks, CTI smoke tests, agent communications, command channel, go/no-go authority and documented rollback triggers. Rollback must preserve transaction reconciliation and customer continuity.

## 12. Hypercare and BAU transition

I coordinate daily triage, incident ownership, KPI monitoring, knowledge transfer and support handover. I close the project only when contractual service measures are stable, critical defects are resolved or accepted, runbooks are transferred and Operations signs the acceptance record.

## 13. Project controls and artifacts

- Charter, SOW and business case.
- Integrated MS Project schedule and milestone tracker.
- WBS, stakeholder register, RACI and communication plan.
- RAID, decision, issue, change and action logs.
- Budget and resource plan.
- Requirements traceability and test evidence.
- Training attendance and competency register.
- Cutover checklist, rollback plan and go/no-go pack.
- Hypercare dashboard, BAU handover and closure report.
