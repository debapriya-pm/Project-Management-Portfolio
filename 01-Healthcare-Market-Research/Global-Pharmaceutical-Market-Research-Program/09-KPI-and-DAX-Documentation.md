# KPI & DAX Documentation

## 1. Purpose

This document defines the core Key Performance Indicators (KPIs) used in the Global Pharmaceutical Market Research Program and documents the corresponding Power BI DAX calculations.

The purpose is to establish traceability between:

**Business Requirement → KPI → DAX Calculation → Dashboard → Business Insight**

The KPIs were selected to provide a concise view of physician perceptions and potential adoption considerations.

---

# 2. KPI Framework

The Power BI dashboard uses five primary KPIs:

1. Total Physicians
2. Average Adoption Likelihood
3. Average Effectiveness
4. Average Administrative Burden
5. Average Safety Rating

These measures provide an executive-level summary while allowing the underlying data to be explored through Power BI visualizations.

---

# 3. KPI 1 — Total Physicians

## Business Question

**How many unique physician respondents are represented in the research dataset?**

## Business Purpose

This KPI establishes the size of the respondent population represented in the analysis.

It provides context for the other physician-level metrics.

## Source Field

`respondent_id`

## DAX

```DAX
Total Physicians =
DISTINCTCOUNT('public physician_survey'[respondent_id])
```

## Calculation Logic

`DISTINCTCOUNT()` counts unique values in the specified column.

Using `respondent_id` ensures that the KPI counts unique respondents rather than simply counting rows.

This approach is useful when a dataset could potentially contain more than one record associated with the same respondent.

## Business Interpretation

The KPI represents the number of unique physician respondents included in the analysis.

It should be interpreted in the context of the available dataset and survey methodology.

---

# 4. KPI 2 — Average Adoption Likelihood

## Business Question

**How likely are physicians to adopt the relevant pharmaceutical or healthcare solution?**

## Business Purpose

Adoption likelihood provides an indication of physician willingness or intention to adopt the relevant solution.

It can help identify potential market acceptance and areas that may require further investigation.

## Source Field

`likelihood_to_adopt`

## DAX

```DAX
Average Adoption Likelihood =
AVERAGE('public physician_survey'[likelihood_to_adopt])
```

## Calculation Logic

`AVERAGE()` calculates the arithmetic mean of the valid values in the `likelihood_to_adopt` field.

Conceptually:

**Sum of valid adoption scores ÷ Number of valid adoption responses**

## Business Interpretation

A higher average indicates stronger overall physician adoption intent when the underlying rating scale is positively oriented.

A lower average may indicate potential barriers to adoption requiring further investigation.

---

# 5. KPI 3 — Average Effectiveness

## Business Question

**How effective do physicians perceive the relevant solution to be?**

## Business Purpose

Perceived effectiveness helps stakeholders understand physician confidence in the expected or observed effectiveness of the solution.

## Source Field

`effectiveness_rating`

## DAX

```DAX
Average Effectiveness =
AVERAGE('public physician_survey'[effectiveness_rating])
```

## Calculation Logic

The measure calculates the arithmetic mean of valid physician effectiveness ratings.

## Business Interpretation

A higher average indicates stronger perceived effectiveness when the rating scale is positively oriented.

This KPI can be examined alongside Adoption Likelihood to identify potential patterns in physician perceptions.

However, correlation or causation should not be assumed from descriptive averages alone.

---

# 6. KPI 4 — Average Administrative Burden

## Business Question

**How much administrative burden do physicians associate with the relevant solution?**

## Business Purpose

Administrative burden can represent a potential operational barrier to adoption.

Understanding perceived administrative effort can help stakeholders identify areas where workflow, implementation, or support may require attention.

## Source Field

`administrative_burden_rating`

## DAX

```DAX
Average Administrative Burden =
AVERAGE('public physician_survey'[administrative_burden_rating])
```

## Calculation Logic

The measure calculates the arithmetic mean of valid administrative burden ratings.

## Business Interpretation

The interpretation depends on the direction of the rating scale.

If a higher rating represents greater burden, a higher average indicates greater perceived administrative friction.

The underlying survey scale should therefore always be considered when interpreting this KPI.

---

# 7. KPI 5 — Average Safety Rating

## Business Question

**How safe do physicians perceive the relevant solution to be?**

## Business Purpose

Safety perception provides important contextual information when evaluating physician confidence and potential adoption.

## Source Field

`safety_rating`

## DAX

```DAX
Average Safety Rating =
AVERAGE('public physician_survey'[safety_rating])
```

## Calculation Logic

The measure calculates the arithmetic mean of valid physician safety ratings.

## Business Interpretation

A higher average indicates stronger perceived safety when the underlying rating scale is positively oriented.

The rating scale and survey methodology should be considered before making broader conclusions.

---

# 8. KPI Summary

| KPI                           | Source Field                   | DAX Function  | Business Question                              | Primary Use              |
| ----------------------------- | ------------------------------ | ------------- | ---------------------------------------------- | ------------------------ |
| Total Physicians              | `respondent_id`                | DISTINCTCOUNT | How many unique respondents are represented?   | Population context       |
| Average Adoption Likelihood   | `likelihood_to_adopt`          | AVERAGE       | How likely are physicians to adopt?            | Adoption potential       |
| Average Effectiveness         | `effectiveness_rating`         | AVERAGE       | How effective is the solution perceived to be? | Effectiveness perception |
| Average Administrative Burden | `administrative_burden_rating` | AVERAGE       | How much administrative burden is perceived?   | Adoption barrier         |
| Average Safety Rating         | `safety_rating`                | AVERAGE       | How safe is the solution perceived to be?      | Physician confidence     |

---

# 9. Business Requirement Traceability

| Business Requirement                       | KPI / Output                  | Dashboard Component |
| ------------------------------------------ | ----------------------------- | ------------------- |
| Understand physician respondent population | Total Physicians              | KPI Card            |
| Evaluate adoption potential                | Average Adoption Likelihood   | KPI Card / Visual   |
| Evaluate perceived effectiveness           | Average Effectiveness         | KPI Card / Visual   |
| Identify administrative barriers           | Average Administrative Burden | KPI Card / Visual   |
| Understand safety perception               | Average Safety Rating         | KPI Card / Visual   |

---

# 10. DAX Design Principles

The core KPIs are implemented as **measures** rather than calculated columns.

Measures are appropriate because they dynamically respond to the filter context of the Power BI report.

For example:

```DAX
Average Adoption Likelihood =
AVERAGE('public physician_survey'[likelihood_to_adopt])
```

The result can change when users apply relevant filters or interact with dashboard visualizations.

---

# 11. Filter Context

Power BI measures respond to the current filter context.

For example, if the dashboard is filtered to a specific physician specialty or other available segment, the:

**Average Adoption Likelihood**

measure can calculate the average for only the records included in that selected context.

This allows the same KPI to support both overall reporting and segmented analysis.

---

# 12. Why DISTINCTCOUNT Is Used for Total Physicians

The Total Physicians KPI uses:

```DAX
Total Physicians =
DISTINCTCOUNT('public physician_survey'[respondent_id])
```

This approach counts unique respondent IDs rather than simply counting rows.

The distinction is important because:

* Multiple rows could potentially belong to the same respondent.
* Counting rows could overstate the respondent population if duplicates exist.
* `DISTINCTCOUNT` provides a more defensible unique-respondent metric when `respondent_id` is the respondent identifier.

The underlying dataset should still be reviewed to determine whether duplicate respondent records represent legitimate multiple responses or data-quality issues.

---

# 13. Data Validation

Before publishing the dashboard, KPI results should be validated against the underlying data.

Recommended validation steps include:

1. Compare Total Physicians against the number of unique `respondent_id` values.
2. Verify that rating fields contain expected values.
3. Independently calculate sample averages where appropriate.
4. Check that filters produce expected changes.
5. Review KPI results for unexpected blanks.
6. Confirm that KPI labels accurately represent the underlying calculations.
7. Verify that the DAX measures reference the intended source fields.

---

# 14. KPI Interpretation Guidelines

KPIs should not be interpreted in isolation.

For example:

### High Adoption + High Effectiveness

May indicate favorable physician perception and stronger potential adoption intent.

### High Adoption + High Administrative Burden

May indicate strong interest despite perceived operational friction.

### Low Adoption + High Safety

May suggest that safety perception alone is not sufficient to drive adoption.

### High Effectiveness + Low Safety

May indicate a potential perception gap requiring further investigation.

These are analytical hypotheses rather than causal conclusions.

---

# 15. Analytical Limitations

The KPIs are descriptive measures based on available survey responses.

They should not be interpreted as:

* Clinical evidence
* Regulatory evidence
* Causal relationships
* Forecasts of actual prescribing behavior
* Guarantees of market adoption

Additional statistical analysis and primary research would be required for stronger market or causal conclusions.

---

# 16. DAX Documentation Standards

Production measures should:

* Use descriptive names.
* Follow consistent naming conventions.
* Be documented.
* Use appropriate aggregation functions.
* Be validated against source data.
* Be understandable to business stakeholders.
* Maintain traceability to business requirements.
* Reference the correct source table and fields.
* Be reviewed when the underlying data model changes.

---

# 17. Current Power BI Data Model Reference

The core measures documented in this project use the following Power BI table:

`public physician_survey`

Key fields used by the dashboard include:

| Field                          | Purpose                           |
| ------------------------------ | --------------------------------- |
| `respondent_id`                | Unique respondent identification  |
| `likelihood_to_adopt`          | Adoption likelihood analysis      |
| `effectiveness_rating`         | Effectiveness perception analysis |
| `administrative_burden_rating` | Administrative burden analysis    |
| `safety_rating`                | Safety perception analysis        |

---

# 18. DAX Measure Reference

For quick reference, the five core measures are:

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

---

# 19. Portfolio Note

This KPI and DAX documentation demonstrates the connection between business requirements, healthcare market-research questions, analytical calculations, and Power BI reporting.

It demonstrates practical application of Power BI and DAX within a broader project-management framework rather than treating dashboard development as an isolated technical exercise.

The documentation also establishes traceability between the underlying survey dataset, analytical measures, dashboard outputs, and potential business insights.
