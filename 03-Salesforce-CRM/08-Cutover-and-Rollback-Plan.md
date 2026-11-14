# Cutover and Rollback Plan

## 1. Cutover strategy

Use a controlled transition: 30-agent pilot, followed by two deployment waves of 60 agents each. Schedule production changes in approved low-volume windows and maintain a command channel with named technical and operational decision-makers.

## 2. Pre-cutover checklist

- Approved cutover plan, change window and communications.
- Signed UAT acceptance and no open Severity 1 defects.
- Data backup/export and migration reconciliation.
- Salesforce licences, accounts, roles and permissions validated.
- CTI connector, softphone, call routing and network connectivity tested.
- Queues, assignment rules, escalation and dashboards validated.
- SOPs, agent training and supervisor readiness confirmed.
- WFM coverage and backfill confirmed.
- Service desk, vendor support and floor-walker roster confirmed.
- Rollback triggers, authority and communication templates approved.

## 3. Smoke tests

1. Agent login and access.
2. Inbound call and caller identification.
3. Screen-pop and customer record accuracy.
4. Case creation and assignment.
5. Call transfer, hold and logging.
6. Queue and escalation rules.
7. Supervisor dashboard and SLA visibility.
8. CTI failure/fallback path.
9. Incident logging and escalation channel.

## 4. Go / No-Go authority

The authorized client sponsor or delegated steering authority makes the final decision based on recommendations from Technology, Operations, QA, WFM and the Project Manager. A schedule target does not override a critical security, data integrity or customer-service readiness failure.

## 5. Rollback triggers

Examples:
- Critical telephony or CTI outage prevents agents from handling contacts.
- Material data integrity or customer identity issue.
- Critical security/privacy incident.
- Case assignment or routing failure that creates uncontrolled customer impact.
- Service performance breaches agreed stop thresholds and cannot be contained.

## 6. Rollback steps

1. Incident lead declares rollback recommendation and records evidence.
2. Authorized decision-maker approves rollback.
3. IT restores approved legacy routing and operating procedures.
4. Operations communicates the fallback process to agents and supervisors.
5. In-flight contacts and cases are recorded in the controlled contingency log.
6. Data and interaction records are reconciled after service restoration.
7. Client receives impact, recovery and next-decision update.
8. Root-cause analysis and revised go-live plan are prepared.

## 7. Cutover command structure

| Role | Responsibility |
|---|---|
| Cutover Manager / PM | Coordinates plan, timing, status and decisions |
| Technical Lead | Owns technical execution and recovery |
| CTI Lead | Validates telephony and call controls |
| Data Lead | Confirms migration and reconciliation |
| Operations Lead | Confirms agent readiness and service continuity |
| WFM Lead | Monitors staffing and queue coverage |
| QA Lead | Confirms quality checks and test evidence |
| Client Sponsor | Approves go/no-go and rollback decisions |

## 8. Post-cutover review

Record start/end times, checklist completion, defects, decisions, customer/service impact, unresolved actions and lessons learned.
