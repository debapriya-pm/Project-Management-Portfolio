# Power BI Dashboard Analysis
## Global Pharmaceutical Market Research — Physician Insights

### 1. Project Overview

This project demonstrates an end-to-end healthcare market research analytics workflow designed to understand physician perceptions, adoption likelihood, treatment effectiveness, safety, barriers, and unmet needs across pharmaceutical treatments.

The project combines healthcare research planning, quantitative survey analysis, SQL, and Power BI to transform physician survey data into actionable business insights.

The Power BI dashboard provides an executive-level view of the research findings and highlights the factors that may influence pharmaceutical treatment adoption.

---

## 2. Business Objective

The objective of the analysis was to answer key market research questions:

- How likely are physicians to adopt the treatments being evaluated?
- Does adoption likelihood vary significantly across medical specialties?
- What are the major barriers to treatment adoption?
- What unmet needs are most frequently identified by physicians?
- How do physicians perceive treatment effectiveness?
- How do physicians perceive treatment safety?
- What insights could support pharmaceutical market strategy and decision-making?

---

## 3. Dataset

The analysis uses a physician survey dataset containing **500 physician respondents**.

The dataset includes variables covering:

- Medical specialty
- Primary treatment
- Treatment effectiveness
- Treatment safety
- Adoption likelihood
- Administrative burden
- Adoption barriers
- Unmet needs
- Physician experience
- Practice setting
- Patient volume
- Other physician perception measures

The dataset is structured to support both quantitative market research analysis and dashboard-based business reporting.

---

## 4. Tools & Technologies

| Tool | Purpose |
|---|---|
| PostgreSQL | Data storage and SQL analysis |
| SQL | Data exploration, aggregation, and analytical queries |
| Power BI | Interactive dashboard and visualization |
| DAX | KPI and analytical measures |
| GitHub | Project documentation and portfolio management |

---

## 5. Key KPIs

The dashboard presents four primary KPIs:

| KPI | Result |
|---|---:|
| Total Physicians | 500 |
| Average Adoption Likelihood | 4.23 / 5 |
| Average Effectiveness | 3.42 / 5 |
| Average Administrative Burden | 3.03 / 5 |

These KPIs provide a high-level view of physician sentiment across the overall respondent population.

---

## 6. Dashboard Visualizations

### Adoption Likelihood by Specialty

This visualization compares average treatment adoption likelihood across physician specialties, including:

- Cardiology
- Neurology
- Immunology
- Endocrinology
- Oncology

Adoption likelihood remains relatively strong and consistent across the specialties represented in the dataset.

### Primary Adoption Barriers

The analysis identifies the most frequently reported barriers to treatment adoption.

The leading barriers include:

1. Administrative complexity
2. Cost / Access
3. Physician familiarity
4. Limited evidence
5. Patient acceptance
6. Workflow impact

Administrative complexity is the most prominent barrier in the dataset, highlighting the potential importance of simplifying implementation and reducing operational friction.

### Top Unmet Needs

The dashboard highlights the unmet needs most frequently identified by physicians.

Treatment effectiveness is the most prominent unmet need, followed by areas such as patient adherence, access, side-effect management, convenience, patient support, and monitoring.

### Treatment Effectiveness

Average perceived effectiveness is compared across the primary treatments.

The results show relatively consistent effectiveness ratings, with treatment averages ranging from approximately 3.3 to 3.6 on a 5-point scale.

### Treatment Safety Rating

Average safety ratings are also compared across treatments.

Safety perceptions remain relatively consistent, with ratings in the mid-3 range across the treatments evaluated.

---

## 7. Key Findings

### Strong Adoption Potential

The overall average adoption likelihood is **4.23/5**, indicating strong physician willingness to consider adoption across the surveyed population.

### Administrative Complexity Is the Leading Barrier

Administrative complexity is the most frequently identified adoption barrier, followed by cost/access concerns.

This suggests that successful pharmaceutical adoption may depend not only on clinical value but also on reducing administrative and operational friction.

### Treatment Performance Is Relatively Consistent

Treatment effectiveness averages **3.42/5**, while safety ratings remain in the mid-3 range across treatments.

This indicates that differences between treatments are relatively moderate in the surveyed perceptions.

### Adoption Is Consistent Across Specialties

Average adoption likelihood remains close to the overall average across the specialties represented in the dataset.

This suggests that the adoption opportunity is not concentrated in a single specialty.

---

## 8. Business Recommendations

Based on the analysis, pharmaceutical market strategy teams could consider:

### 1. Reduce Administrative Friction

Explore ways to simplify administrative processes, documentation, authorization requirements, and workflow integration.

### 2. Address Cost and Access Barriers

Further investigate affordability, reimbursement, coverage, and access-related barriers that may prevent physicians or patients from adopting treatments.

### 3. Strengthen Evidence Communication

Because limited evidence appears among the reported barriers, clearly communicating clinical evidence and treatment outcomes may support physician confidence.

### 4. Improve Patient Support

The presence of patient acceptance, adherence, and support among the reported needs suggests opportunities for patient education and support programs.

### 5. Support Workflow Integration

Solutions that fit naturally into existing clinical workflows may help reduce adoption resistance.

---

## 9. Analytical Approach

The project followed a structured analytics workflow:

**Research Design → Data Collection → PostgreSQL → SQL Analysis → DAX Measures → Power BI Dashboard → Business Insights**

SQL was used to explore and aggregate the underlying survey data.

Power BI was then used to create:

- KPI cards
- Specialty comparisons
- Adoption barrier analysis
- Unmet-needs analysis
- Treatment effectiveness comparisons
- Treatment safety comparisons

DAX measures were used to calculate key summary metrics such as physician counts and average survey measures.

---

## 10. Project Deliverables

This project includes:

- `Healthcare-Market-Research-Dashboard.pbix` — Power BI dashboard
- `physician-insights-dashboard.png` — Dashboard preview
- SQL analysis files
- Research planning documentation
- Survey framework
- Physician survey dataset
- Project management documentation

---

## 11. Portfolio Value

This project demonstrates the ability to connect **healthcare market research, project management, SQL, Power BI, and business analysis** into a single end-to-end deliverable.

Rather than focusing only on visualization, the project demonstrates how research data can be translated into structured insights and business recommendations for pharmaceutical and healthcare decision-making.
