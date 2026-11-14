# Testing and User Acceptance Plan

## 1. Objectives

Validate that Salesforce Service Cloud, Avaya CTI, migrated data, reporting and operating procedures meet approved requirements before the pilot and full transition.

## 2. Test levels

| Test level | Owner | Coverage | Exit evidence |
|---|---|---|---|
| Configuration / unit checks | Salesforce / CTI teams | Fields, layouts, roles, rules, integrations | Configuration checklist |
| System Integration Testing (SIT) | QA / IT | CRM-to-CTI, data, queues, telephony, reporting | Passed test cases; critical defects closed |
| Data migration testing | Data / QA / business owners | Counts, mappings, duplicates, completeness, relationships | Reconciliation and exception sign-off |
| User Acceptance Testing (UAT) | Operations / client SMEs | End-to-end business scenarios | Signed UAT acceptance |
| Operational readiness testing | Operations / WFM / IT | Agent access, routing, training, support and cutover | Readiness checklist |
| Pilot validation | Operations / QA / PM | Real operating cohort and service metrics | Pilot scorecard and go/no-go |

## 3. Core test scenarios

1. Inbound call arrives and caller record is identified.
2. CTI screen-pop displays the correct customer context.
3. Agent creates a case and selects the correct category and priority.
4. Assignment rules route the case to the correct queue.
5. SLA warning and escalation rules trigger as designed.
6. Agent transfers or places a call on hold and logs the interaction.
7. Existing customer and case history is visible to authorized users.
8. Role and permission controls prevent unauthorized access.
9. Data migration preserves agreed fields and relationships.
10. Reports reconcile with source operational data.
11. Failure of CTI or screen-pop invokes the approved fallback process.
12. Supervisor can review queue, workload and SLA performance.

## 4. Defect management

Classify defects by severity and business impact:
- **Severity 1:** critical outage, security/data integrity issue or inability to perform essential contact-centre work.
- **Severity 2:** major business function impaired with limited workaround.
- **Severity 3:** non-critical function issue with workaround.
- **Severity 4:** cosmetic or low-impact issue.

Each defect must have a reproducible description, evidence, affected process, owner, target fix date, retest result and closure decision.

## 5. UAT entry criteria

- Requirements and test scenarios approved.
- SIT completed for critical integration flows.
- No unresolved Severity 1 defect.
- Test users and access provisioned.
- Test data available and approved.
- Operations SMEs and supervisors scheduled.

## 6. UAT exit criteria

- All critical business scenarios executed.
- No open Severity 1 defect.
- Severity 2 defects closed or formally accepted with workaround and owner.
- Data reconciliation accepted by business owner.
- Operations and QA approve results.
- Client Product Owner records formal UAT acceptance.

## 7. Evidence and traceability

Maintain a traceability matrix linking requirement ID → test case ID → execution result → defect ID → retest result → approver. Do not use a pass percentage alone to justify go-live if a critical customer or operational journey has not been tested.
