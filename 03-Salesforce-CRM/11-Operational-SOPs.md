# Operational Standard Operating Procedures (SOPs)

> Scenario SOP pack for the Salesforce Service Cloud transition. Client-specific policies, privacy rules and contractual requirements take precedence.

## SOP 1 – Inbound call and customer identification

**Purpose:** Ensure agents identify customers correctly and record interactions consistently.

1. Sign in to the approved Salesforce environment and Avaya softphone using assigned credentials.
2. Set the correct availability state in accordance with WFM instructions.
3. When a call arrives, allow CTI to pass the caller identifier to Salesforce.
4. Verify the caller using the approved identity-verification process; do not rely on caller ID alone.
5. Review the customer record and open cases.
6. Confirm the reason for contact and select the correct case category and priority.
7. Record concise interaction notes and link the call to the relevant case.
8. Select the approved disposition and update the case status.
9. If CTI or screen-pop fails, follow the approved manual lookup and incident process.

**Control:** Agents must not disclose customer data until identity verification is complete.

## SOP 2 – Case creation, assignment and escalation

1. Search for an existing case before creating a new one.
2. Create a case with mandatory customer, category, priority, description and contact fields.
3. Apply the approved case taxonomy.
4. Allow configured assignment rules to route the case to the correct queue.
5. Monitor the SLA clock and act on warning notifications.
6. Escalate cases approaching or breaching SLA to the designated team lead or Tier 2 queue.
7. Record resolution, customer communication and closure code before closing the case.

**Control:** Supervisors review aged, unassigned and SLA-at-risk cases at the agreed cadence.

## SOP 3 – CTI failure and manual fallback

1. Confirm whether the issue affects one agent, a queue, a site or the full contact centre.
2. Log an incident with time, affected users, call impact, error message and available evidence.
3. Notify the supervisor and incident lead according to severity.
4. Use only the client-approved fallback telephone and case-recording procedure.
5. Record customer interactions in the controlled fallback log.
6. Do not use personal devices, unapproved spreadsheets or unauthorized channels to store customer information.
7. When service is restored, reconcile fallback records into Salesforce and confirm completeness.
8. Close the incident only after business validation.

## SOP 4 – Data migration reconciliation

1. Obtain the approved source extract and confirm data owner authorization.
2. Profile records for duplicates, missing fields, invalid formats and obsolete records.
3. Apply only approved cleansing and transformation rules.
4. Map source fields to Salesforce target fields and retain mapping version control.
5. Execute a test load in the approved non-production environment.
6. Reconcile source and destination record counts, required fields, relationships and sampled values.
7. Log rejected records and remediation owners.
8. Obtain data-owner approval before production migration.
9. Reconcile production results and retain evidence.

## SOP 5 – Change request control

1. Log the request with a unique change ID, requestor and business rationale.
2. Clarify the requirement and determine whether it is a defect, clarification or scope change.
3. Ask affected workstream leads to estimate cost, effort, schedule, risk, security and operational impact.
4. Present options and recommendation to the Change Control Board or authorized client approver.
5. Record approve/reject/defer decision and decision date.
6. Update the scope, requirements, schedule, budget and communications only after approval.

## SOP 6 – Cutover and rollback

1. Confirm approved cutover plan, change window, communications and go/no-go authority.
2. Verify data backup/export, migration reconciliation, licences, user access, queues and CTI connectivity.
3. Complete smoke tests for calls, screen-pop, case creation, assignment, transfer, reporting and fallback.
4. Obtain technical and operational go/no-go recommendations.
5. Execute the approved cohort transition and monitor the command channel.
6. If an approved rollback trigger occurs, activate the rollback decision path.
7. Restore legacy routing/processes, notify users and reconcile in-flight interactions.
8. Record cutover results, defects, decisions and acceptance.

## SOP 7 – Hypercare incident management

1. Log each incident with impact, time, affected users, severity and evidence.
2. Assign an owner and restoration target.
3. For critical telephony, platform, privacy or data integrity incidents, notify the incident lead immediately.
4. Communicate workaround and status to Operations and client stakeholders.
5. Validate the fix with the affected user group.
6. Record root cause and corrective/preventive action.
7. Update the knowledge base and close after business confirmation.
