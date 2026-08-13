# Global Pharmaceutical Market Research Program

### Physician Insights | Healthcare Market Research | Project Management | SQL | PostgreSQL | Power BI | DAX

![Physician Insights Dashboard](physician-insights-dashboard.png)

---

## 1. Project Overview

The **Global Pharmaceutical Market Research Program** is an end-to-end healthcare market-research and project-management portfolio case study demonstrating how structured project delivery, physician research, database analysis, business intelligence, and executive reporting can be combined to generate actionable business insights.

The project analyzes physician survey data to understand:

* Adoption likelihood
* Perceived effectiveness
* Administrative burden
* Safety perceptions
* Adoption barriers
* Unmet needs
* Specialty-level adoption patterns

The project demonstrates the lifecycle from **business case and research planning through data preparation, PostgreSQL/SQL analysis, Power BI and DAX development, business insights, executive reporting, and project closure**.

> **Portfolio Project:** This is a simulated professional project developed for portfolio demonstration. The analysis is descriptive and should not be interpreted as clinical, regulatory, or medical evidence.

---

# 2. Business Problem

Pharmaceutical and healthcare organizations need reliable market-research insights to understand how physicians perceive potential treatments and healthcare solutions.

However, survey data alone does not create business value.

The challenge is to transform research data into a structured decision-support process that connects:

**Business Questions → Research Design → Data → SQL Analysis → BI → Insights → Recommendations**

This project demonstrates that process through a realistic pharmaceutical market-research program.

---

# 3. Project Objectives

The project objectives were to:

1. Establish a structured project-management framework for a global pharmaceutical market-research program.
2. Define research scope, requirements, stakeholders, risks, responsibilities, and communication needs.
3. Incorporate both qualitative and quantitative market-research approaches.
4. Prepare and analyze physician survey data.
5. Load the survey dataset into PostgreSQL for structured SQL analysis.
6. Develop business-relevant KPIs using Power BI and DAX.
7. Identify physician adoption patterns and potential barriers.
8. Translate analytical findings into business insights.
9. Present findings through an executive-friendly Power BI dashboard.
10. Develop management-level recommendations and future research opportunities.
11. Demonstrate end-to-end project governance and continuous-improvement practices.

---

# 4. Executive Snapshot

| Metric                           |          Result |
| -------------------------------- | --------------: |
| Physician Respondents            |         **500** |
| Average Adoption Likelihood      |    **4.23 / 5** |
| Average Effectiveness            |    **3.42 / 5** |
| Average Administrative Burden    |    **3.03 / 5** |
| Displayed Treatment Safety Range | **3.5–3.7 / 5** |

---

# 5. Key Findings

### Strong Adoption Potential

The overall **Average Adoption Likelihood is 4.23/5**.

Adoption likelihood is also highly consistent across the physician specialties displayed in the dashboard:

| Specialty     | Adoption Likelihood |
| ------------- | ------------------: |
| Cardiology    |                 4.3 |
| Neurology     |                 4.3 |
| Immunology    |                 4.2 |
| Endocrinology |                 4.2 |
| Oncology      |                 4.2 |

This indicates a broadly favorable adoption signal across the displayed specialties.

---

### Administrative Complexity Is the Leading Barrier

**Administrative Complexity** is the leading primary adoption barrier identified in the dashboard.

Other barriers include:

* Cost / Access
* Physician Familiarity
* Limited Evidence
* Patient Acceptance
* Workflow Impact

This suggests that physician willingness to adopt may coexist with significant operational and implementation challenges.

---

### Effectiveness Is More Moderate

The overall **Average Effectiveness is 3.42/5**.

The treatment-level effectiveness ratings displayed in the dashboard range from approximately **3.3 to 3.6/5**.

This creates an important business question:

> What factors are contributing to strong adoption intent despite more moderate effectiveness perceptions?

---

### Administrative Burden Remains Meaningful

The overall **Average Administrative Burden is 3.03/5**.

Combined with administrative complexity being the leading adoption barrier, this highlights operational friction as an important area for further investigation.

---

### Safety Perception Is Relatively Stable

The displayed treatment-level safety ratings range from approximately **3.5 to 3.7/5**.

The relatively narrow range suggests broadly similar safety perceptions across the treatments shown.

The dashboard does not display a single overall Average Safety Rating KPI, so the project does not assign an overall safety value beyond the treatment-level results shown.

---

# 6. Data Source & Analytical Workflow

The project follows a complete data-to-insight workflow:

**Source Dataset**

↓

**PostgreSQL Database**

↓

**SQL Analysis**

↓

**Power BI Data Model**

↓

**DAX Measures**

↓

**Power BI Dashboard**

↓

**Business Insights**

↓

**Executive Reporting**

### Source Dataset

* [Physician Survey Dataset](14-Physician-Survey-Dataset.xlsx)

The physician survey dataset was initially prepared as an Excel dataset for the portfolio project.

The dataset was subsequently loaded into PostgreSQL for structured querying and analysis.

### PostgreSQL

The primary analytical table used in the SQL and Power BI workflow is:

`public physician_survey`

The PostgreSQL table contains the physician survey data used for the analytical workflow.

### SQL

* [Healthcare Market Research SQL Analysis](15-Healthcare-Market-Research-SQL-Analysis.sql)

The SQL analysis demonstrates structured querying of the physician survey dataset after it was loaded into PostgreSQL.

### Power BI

* [Power BI Dashboard Analysis](16-PowerBI-Dashboard-Analysis.md)
* [Power BI Dashboard File](Healthcare-Market-Research-Dashboard.pbix)
* [Dashboard Image](physician-insights-dashboard.png)

The Power BI dashboard uses the PostgreSQL-based `public physician_survey` table as its analytical data source.

---

# 7. Power BI Dashboard

The dashboard provides an executive-level view of physician insights.

### Dashboard Components

* KPI cards
* Adoption likelihood by specialty
* Primary adoption barriers
* Top unmet needs
* Treatment effectiveness
* Treatment safety
* Key findings
* Physician market-research insights

### Core KPIs

The dashboard uses five primary DAX measures:

* Total Physicians
* Average Adoption Likelihood
* Average Effectiveness
* Average Administrative Burden
* Average Safety Rating

---

# 8. KPI & DAX Framework

* [KPI & DAX Documentation](09-KPI-and-DAX-Documentation.md)

The Power BI data model uses the PostgreSQL table:

`public physician_survey`

Core source fields include:

| Business Concept      | PostgreSQL / Power BI Field    |
| --------------------- | ------------------------------ |
| Respondent ID         | `respondent_id`                |
| Adoption Likelihood   | `likelihood_to_adopt`          |
| Effectiveness         | `effectiveness_rating`         |
| Administrative Burden | `administrative_burden_rating` |
| Safety                | `safety_rating`                |

### Core DAX Measures

```DAX
Total Physicians =
DISTINCTCOUNT('public physician_survey'[respondent_id])
```

```DAX
Average Adoption Likelihood =
AVERAGE('public physician_survey'[likelihood_to_adopt])
```

```DAX
Average Effectiveness =
AVERAGE('public physician_survey'[effectiveness_rating])
```

```DAX
Average Administrative Burden =
AVERAGE('public physician_survey'[administrative_burden_rating])
```

```DAX
Average Safety Rating =
AVERAGE('public physician_survey'[safety_rating])
```

The DAX documentation establishes traceability between business requirements, source fields, calculations, KPIs, and dashboard outputs.

---

# 9. Project Management Framework

The project follows an end-to-end project-management lifecycle.

## Strategy & Initiation

* [Business Case](01-Business-Case.md)
* [Program Charter](03-Program-Charter.md)
* [Research Study Overview](11-Research-Study-Overview.md)

## Planning & Governance

* [Scope & Requirements](02-Scope-and-Requirements.md)
* [Project Plan](05-Project-Plan.md)
* [Work Breakdown Structure](03-Work-Breakdown-Structure.md)
* [Project Schedule & Milestones](04-Project-Schedule-and-Milestones.md)
* [Stakeholder Register](02-Stakeholder-Register.md)
* [RACI Matrix](06-RACI-Matrix.md)
* [Communication Plan](08-Communication-Plan.md)

## Risk, Control & Delivery Management

* [Risk & Issue Register](07-Risk-and-Issue-Register.xlsx)
* [Risk Register](05-Risk-Register.md)
* [Decision & Action Log](09-Decision-and-Action-Log.xlsx)
* [Weekly Project Status Report](10-Weekly-Project-Status-Report.xlsx)
* [Lessons Learned](12-Lessons-Learned.md)

---

# 10. Research Methodology

The project incorporates both **qualitative and quantitative market-research components**.

## Research Planning

* [Research Plan](04-Research-Plan.md)
* [Research Study Overview](11-Research-Study-Overview.md)

## Qualitative Research

* [Qualitative Discussion Guide](12-Qualitative-Discussion-Guide.md)

The qualitative component is designed to explore physician perspectives, motivations, concerns, barriers, and unmet needs.

## Quantitative Research

* [Quantitative Survey Framework](13-Quantitative-Survey-Framework.md)
* [Physician Survey Dataset](14-Physician-Survey-Dataset.xlsx)

The quantitative component supports structured measurement of physician perceptions and adoption-related variables.

---

# 11. Data Governance & Quality

The project includes structured data-governance documentation to support analytical transparency.

* [Data Dictionary](07-Data-Dictionary.md)
* [Data Quality Assessment](08-Data-Quality-Assessment.md)

The data-quality process considers:

* Completeness
* Validity
* Consistency
* Uniqueness
* Accuracy
* Data integrity
* Fitness for analytical purpose

The workflow establishes traceability between:

**Source Data → Validated Fields → SQL → DAX Measures → KPIs → Visualizations → Insights**

---

# 12. Business Insights & Reporting

The project translates analytical outputs into decision-support materials.

* [Research Insights & Findings](10-Research-Insights-and-Findings.md)
* [Executive Summary](11-Executive-Summary.md)

The insights framework follows:

**Finding → Evidence → Interpretation → Business Implication → Recommended Next Step**

This ensures that the project does not stop at visualization but connects analytical results to business decision-making.

---

# 13. Key Business Implications

The analysis suggests several areas for further investigation.

### 1. Reduce Administrative Complexity

Administrative complexity is the leading adoption barrier.

Potential areas for further research include:

* Simplifying administrative workflows
* Improving process integration
* Providing implementation support
* Reducing unnecessary administrative steps
* Developing clearer operational guidance

### 2. Address Cost and Access

Cost / Access is identified as another important barrier.

Further research could investigate:

* Accessibility
* Affordability
* Reimbursement considerations
* Administrative requirements
* Potential access barriers

### 3. Strengthen Physician Familiarity

Physician Familiarity appears among the identified adoption barriers.

Potential areas for investigation include:

* Educational needs
* Awareness
* Training requirements
* Communication preferences
* Specialty-specific information needs

### 4. Strengthen Evidence Communication

Limited Evidence appears among the identified barriers.

Future research could examine:

* Which types of evidence physicians value most
* Evidence gaps by specialty
* Information requirements before adoption
* The relationship between evidence perception and adoption intent

### 5. Address Patient-Centered Needs

Patient Acceptance and Patient Adherence appear within the project's barrier and unmet-needs analysis.

Future research could investigate:

* Patient education
* Adherence support
* Convenience
* Patient support services
* Side-effect management

---

# 14. Project Deliverables

| Area            | Deliverables                                             |
| --------------- | -------------------------------------------------------- |
| Strategy        | Business Case, Program Charter                           |
| Research        | Research Plan, Study Overview                            |
| Stakeholders    | Stakeholder Register, RACI                               |
| Planning        | Scope, Project Plan, WBS, Schedule                       |
| Governance      | Communication Plan, Risk Register                        |
| Project Control | Status Report, Decision & Action Log                     |
| Research Design | Qualitative Guide, Quantitative Framework                |
| Data            | Survey Dataset, Data Dictionary, Data Quality Assessment |
| Analytics       | PostgreSQL / SQL Analysis, KPI/DAX Documentation         |
| BI              | Power BI Dashboard, Dashboard Analysis                   |
| Insights        | Research Findings, Executive Summary                     |
| Closure         | Lessons Learned                                          |

---

# 15. Project Lifecycle

The project demonstrates the following end-to-end lifecycle:

**Business Need**

↓

**Business Case**

↓

**Program Charter**

↓

**Research Planning**

↓

**Stakeholder & Scope Management**

↓

**WBS & Schedule**

↓

**Risk & Governance**

↓

**Qualitative & Quantitative Research**

↓

**Source Dataset**

↓

**PostgreSQL**

↓

**SQL Analysis**

↓

**Data Quality**

↓

**KPI & DAX Development**

↓

**Power BI Dashboard**

↓

**Business Insights**

↓

**Executive Recommendations**

↓

**Lessons Learned**

---

# 16. Tools & Skills Demonstrated

## Project Management

* Project Planning
* Program Management
* Scope Management
* Stakeholder Management
* Risk Management
* Schedule Management
* RACI
* Project Governance
* Status Reporting
* Decision & Action Tracking
* Lessons Learned

## Healthcare Market Research

* Pharmaceutical Market Research
* Physician Research
* Qualitative Research
* Quantitative Research
* Survey Design
* Adoption Analysis
* Barrier Analysis
* Unmet-Needs Analysis
* Research Interpretation

## Data & Business Intelligence

* PostgreSQL
* SQL
* Power BI
* DAX
* KPI Development
* Data Quality Assessment
* Data Dictionary
* Data Visualization
* Business Insights
* Executive Reporting

---

# 17. Recommended Next-Step Analysis

A future iteration could expand the analysis through:

1. Specialty-level adoption-driver analysis
2. Adoption versus effectiveness analysis
3. Adoption versus administrative burden analysis
4. Adoption versus safety analysis
5. Barrier analysis by physician segment
6. Deeper unmet-needs analysis
7. Statistical analysis of relationships between variables
8. Additional qualitative physician research
9. Longitudinal analysis where data becomes available
10. Integration of market-access and reimbursement variables

---

# 18. Analytical Limitations

This portfolio project is based on a physician survey dataset created for professional portfolio demonstration and subsequently loaded into PostgreSQL for analysis.

The findings are descriptive and should not be interpreted as:

* Clinical evidence
* Regulatory evidence
* Medical advice
* Causal conclusions
* Forecasts of actual prescribing behavior
* Guarantees of commercial adoption

Additional primary research, statistical analysis, and real-world evidence would be required to support broader clinical or commercial conclusions.

---

# 19. Portfolio Value

This project demonstrates the ability to manage and communicate a **data-driven healthcare market-research program from initiation through executive reporting**.

It combines:

**Project Management**

*

**Healthcare Market Research**

*

**Business Analysis**

*

**PostgreSQL / SQL**

*

**Power BI / DAX**

*

**Executive Communication**

The result is an end-to-end professional case study demonstrating cross-functional project delivery, research management, data analysis, business intelligence, and stakeholder communication.

---

# 20. Key Management Takeaway

The central insight from the project is:

> **Physician adoption intent appears strong, but successful adoption may depend on reducing administrative complexity and addressing access, evidence, familiarity, and patient-related barriers.**

This shifts the focus from simply measuring physician willingness to understanding the conditions required for successful adoption.

---

## Project Status

**Portfolio Case Study — Completed**

**Primary Domain:** Pharmaceutical / Healthcare Market Research

**Focus:** Physician Insights, Adoption Analysis & Business Intelligence

**Data Workflow:** Excel → PostgreSQL → SQL → Power BI → DAX → Business Insights

**Project Management Approach:** Structured / Hybrid

**Core Technologies:** PostgreSQL, SQL, Power BI, DAX

---

### Disclaimer

This project is a simulated professional portfolio case study. It is not affiliated with or representative of any specific pharmaceutical company, clinical trial, regulatory submission, or commercial product.
