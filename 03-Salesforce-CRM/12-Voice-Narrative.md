# Interview Voice Narrative – Salesforce Service Cloud Implementation

> **Use this as a presentation narrative for the portfolio simulation.** It is written in the first person so you can rehearse it naturally. Do not present scenario assumptions or sample KPIs as a project you historically delivered unless you can substantiate that experience. Where you have real project experience, replace the scenario details with your actual role, scale, decisions and results.

## 5–7 minute narrative

"One of the project examples I have prepared is a Salesforce Service Cloud contact-centre transformation. I structured it as an end-to-end implementation case study because it brings together technology delivery, business process migration, workforce transition, client governance and operational performance.

The scenario involves a 150-seat contact centre that relies on separate ticketing, telephony and email applications. The fragmentation makes it difficult for agents to see a complete customer history, creates repeated manual work and limits management visibility into service levels.

My objective as the Program Manager is to move the operation to a unified Salesforce Service Cloud environment, integrate the existing Avaya telephony platform through CTI, migrate the agreed customer and case data, and transition the 150 agents without disrupting live customer service. The scenario has a 90-day target window.

I start with initiation and governance. I review the Statement of Work, confirm the business objectives, define scope and acceptance criteria, and prepare the Project Charter. I identify the client sponsor, Operations, IT, PMO, WFM, QA, HR, Training, data owners, security and vendor stakeholders. I establish a steering committee for executive decisions, a weekly operational review for readiness and service performance, and a daily transition scrum for workstream blockers. I also prepare the stakeholder register, RACI, communication plan and RAID log.

During discovery, I meet Operations, supervisors, agents, WFM and IT to understand the current process. I document the As-Is and To-Be workflows, customer contact types, case categories, assignment rules, escalation paths, service windows and reporting requirements. I confirm the baseline for AHT, FCR, CSAT, SLA adherence, abandon rate and case backlog. I make sure each KPI has a clear definition, source and owner before using it to measure benefits.

I break the scope into workstreams: Salesforce configuration, Avaya CTI integration, data migration, testing, workforce readiness, training, pilot and rollout. I create the WBS and integrated schedule in Microsoft Project. I identify dependencies and the critical path. For example, the CTI connector and network readiness must be in place before end-to-end testing; UAT and agent readiness must be complete before the pilot; and the pilot decision must happen before the two rollout waves.

On the technology side, I coordinate the Salesforce team to configure customer and contact records, case fields, page layouts, roles, profiles, permission sets, queues, assignment rules, escalation rules and dashboards. I coordinate with the CTI team to connect Avaya with Salesforce so that an incoming call can trigger a customer screen-pop and the agent can log the interaction against the correct case. I do not position myself as the engineer; I own requirements, dependencies, decisions, testing, escalation and delivery coordination.

For data migration, I coordinate the data inventory, profiling, cleansing, source-to-target mapping, test load and reconciliation. I ask the data owner to approve the mapping and cleansing rules. Before production migration, I want evidence that record counts, mandatory fields, relationships and sampled values reconcile.

I then coordinate SIT and UAT. In SIT, the technical teams test the end-to-end CRM, CTI, data and reporting flows. In UAT, Operations and client SMEs validate real business scenarios such as inbound calls, screen-pop, case creation, queue assignment, escalation and supervisor reporting. I track defects by severity, owner and target date. I do not recommend moving forward with an unresolved critical defect affecting customer service, data integrity or security.

People readiness is equally important. I work with HR, Training and WFM to confirm the 150-seat staffing plan, training cohorts, backfill and queue coverage. I prepare SOPs and training materials, run Train-the-Trainer, and coordinate agent training, shadowing and competency checks. I use super-users and floor-walkers to support adoption.

For transition, I use a controlled pilot of 30 agents. I review pilot performance, agent feedback, defects, CTI stability, SLA, AHT and FCR. I take the evidence to the steering committee for a go/no-go decision. Once the pilot is accepted, I coordinate Wave 1 for 60 agents and Wave 2 for the remaining 60 agents, with stabilization checks between the waves.

I also plan for failure rather than assuming everything will work. For example, if the CTI connector becomes unstable, I assess the affected users and customer impact, convene the technical and Operations leads, activate the approved workaround if needed, and evaluate whether the critical path is affected. I communicate the impact, owner, recovery action and revised forecast to the client. If a critical readiness criterion is not met, I recommend delaying the cutover rather than putting the service at risk.

After rollout, I manage hypercare with daily incident triage and KPI monitoring. I transfer the SOPs, escalation matrix, support model, known-error list, configuration overview, data reconciliation evidence and dashboard ownership to BAU Operations. I close the project after Operations and IT accept ownership and the agreed stabilization criteria are met.

For this case study, the target outcomes are at least 95% SLA adherence for 14 consecutive days, 99.9% uptime in the agreed measurement window, a 12-percentage-point CSAT improvement, a 20% reduction in response time and a 30% improvement in a clearly defined productivity measure. I would only report those as achieved results after validating them against the agreed baseline and source data.

What I want to demonstrate through this project is that I manage the complete delivery lifecycle. I connect business requirements to technology workstreams, manage dependencies and resources, protect live operations, maintain governance, make evidence-based go-live decisions and ensure a controlled handover to BAU."

## 90-second version

"I prepared a Salesforce Service Cloud implementation case study involving a 150-seat contact centre moving from fragmented ticketing, telephony and email tools to a unified CRM workflow. My delivery approach covers initiation, SOW and charter alignment, stakeholder governance, requirements, WBS, an integrated MS Project schedule, Salesforce configuration, Avaya CTI integration, data migration, SIT, UAT, training, pilot, phased cutover, hypercare and BAU handover.

I manage it through a hybrid methodology: predictive controls for scope, schedule, cost, risks and approvals, with iterative configuration and testing. I coordinate Technology, Operations, WFM, QA, HR, Training and client stakeholders through steering, weekly operational reviews and daily transition meetings. I focus on protecting live service levels while moving users in controlled cohorts. I use measurable acceptance criteria and do not recommend go-live until critical technical, data, security and operational readiness requirements are met."

## How to answer "What did you personally do?"

Use precise ownership verbs:
- "I established the governance cadence and decision log."
- "I translated the business objectives into workstreams and acceptance criteria."
- "I built and maintained the integrated schedule and tracked dependencies."
- "I coordinated the technical teams and business owners."
- "I escalated the CTI dependency and presented recovery options."
- "I protected queue coverage by aligning training cohorts with WFM."
- "I prepared the go/no-go recommendation using test and readiness evidence."
- "I coordinated the handover and obtained operational acceptance."

Avoid saying you personally coded Salesforce, built the Avaya connector or performed data engineering unless you actually did those tasks.
