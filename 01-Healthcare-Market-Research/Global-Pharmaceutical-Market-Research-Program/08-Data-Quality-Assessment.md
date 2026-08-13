# Data Quality Assessment

## 1. Purpose

The Data Quality Assessment evaluates whether the physician survey dataset is sufficiently structured and reliable for the intended analytical and reporting objectives.

The assessment focuses on the key dimensions of data quality:

* Completeness
* Accuracy
* Consistency
* Validity
* Uniqueness
* Integrity
* Fitness for purpose

The objective is not to establish clinical validity, but to determine whether the available dataset can support the portfolio's market-research analysis and Power BI reporting.

---

## 2. Assessment Approach

The data-quality assessment follows the sequence:

**Dataset Review**

↓

**Field-Level Assessment**

↓

**Missing-Value Review**

↓

**Value-Range Validation**

↓

**Consistency Checks**

↓

**Duplicate Review**

↓

**Analytical Fitness Assessment**

↓

**Data Preparation**

↓

**Approved for Analysis**

---

## 3. Data Quality Dimensions

### 3.1 Completeness

Completeness evaluates whether required fields contain sufficient information for analysis.

Key fields reviewed include:

* Physician ID
* Physician Specialty
* Adoption Likelihood
* Effectiveness Rating
* Administrative Burden
* Safety Rating

**Assessment approach:**

* Identify blank values.
* Identify null values.
* Calculate completeness where appropriate.
* Determine whether missing values affect KPI calculations.

**Expected outcome:**

Critical analytical fields should contain sufficient valid observations to support meaningful analysis.

---

### 3.2 Validity

Validity evaluates whether values conform to the expected structure and measurement scale.

Examples:

* Adoption Likelihood should contain values within its defined rating scale.
* Effectiveness Rating should contain valid rating values.
* Administrative Burden should contain valid rating values.
* Safety Rating should contain valid rating values.

**Assessment approach:**

* Identify values outside expected ranges.
* Review unexpected text values in numeric fields.
* Confirm that rating scales are consistently interpreted.

---

### 3.3 Consistency

Consistency evaluates whether the same concepts are represented consistently across records.

Examples of potential issues include:

* Different spellings of physician specialties.
* Different capitalization conventions.
* Multiple labels representing the same category.
* Inconsistent formatting.

**Assessment approach:**

* Standardize categorical values where appropriate.
* Identify duplicate category labels.
* Confirm consistent terminology.

---

### 3.4 Uniqueness

Uniqueness evaluates whether records that should be unique are duplicated.

**Assessment approach:**

* Review Physician ID values.
* Identify unexpected duplicate identifiers.
* Determine whether duplicates represent legitimate multiple survey responses or data-quality issues.

Duplicate records should not automatically be removed without understanding the research context.

---

### 3.5 Accuracy

Accuracy evaluates whether the data appears reasonable and suitable for the intended analysis.

Because this portfolio project uses an existing survey dataset, accuracy cannot be independently verified against the original respondents.

Therefore, the assessment focuses on:

* Logical value ranges
* Internal consistency
* Data-type correctness
* Unexpected values
* Analytical plausibility

---

### 3.6 Integrity

Integrity evaluates whether relationships between fields remain logically consistent.

Examples include:

* Physician identifiers remain associated with the correct survey records.
* Categorical values remain correctly assigned.
* Numeric ratings are not shifted into incorrect fields.
* Transformations do not unintentionally alter source information.

---

## 4. Field-Level Quality Assessment

| Field                       | Quality Dimension       | Assessment                            | Risk   | Recommended Action                     |
| --------------------------- | ----------------------- | ------------------------------------- | ------ | -------------------------------------- |
| Physician ID                | Uniqueness              | Review for duplicate identifiers      | Medium | Investigate duplicates before counting |
| Physician Specialty         | Consistency             | Review category labels                | Medium | Standardize categories                 |
| Physician Experience        | Validity                | Check expected values/categories      | Low    | Validate before segmentation           |
| Adoption Likelihood         | Completeness / Validity | Check missing and out-of-range values | High   | Validate before KPI calculation        |
| Effectiveness Rating        | Completeness / Validity | Check missing and out-of-range values | High   | Validate before KPI calculation        |
| Administrative Burden       | Completeness / Validity | Check missing and out-of-range values | High   | Validate before KPI calculation        |
| Safety Rating               | Completeness / Validity | Check missing and out-of-range values | High   | Validate before KPI calculation        |
| Geographic / Market Segment | Consistency             | Review category structure             | Medium | Standardize categories where needed    |

---

## 5. Data Quality Checklist

| Check                        | Objective                          | Status    |
| ---------------------------- | ---------------------------------- | --------- |
| Review dataset structure     | Understand available fields        | Completed |
| Review data types            | Confirm analytical compatibility   | Completed |
| Identify missing values      | Assess completeness                | Reviewed  |
| Review rating fields         | Confirm valid analytical inputs    | Reviewed  |
| Review categorical values    | Identify inconsistencies           | Reviewed  |
| Review duplicate identifiers | Assess uniqueness                  | Reviewed  |
| Review analytical fields     | Confirm fitness for KPI analysis   | Reviewed  |
| Document assumptions         | Establish analytical transparency  | Completed |
| Prepare data for analysis    | Create usable analytical structure | Completed |

---

## 6. Data Quality Risk Assessment

### High-Priority Areas

The primary quality risks are associated with the variables used directly in KPI calculations:

* Adoption Likelihood
* Effectiveness Rating
* Administrative Burden
* Safety Rating

Errors or missing values in these fields could directly affect the dashboard's analytical outputs.

### Medium-Priority Areas

Categorical fields such as physician specialty and geographic segmentation require consistency checks before segmentation analysis.

### Lower-Priority Areas

Fields not directly used in the core KPIs may have lower immediate analytical risk but should still be reviewed if used for future analysis.

---

## 7. Data Preparation Actions

The following preparation activities should be performed before final analysis:

1. Confirm field names and data types.
2. Review missing values.
3. Review rating ranges.
4. Standardize categorical values.
5. Investigate unexpected duplicate records.
6. Confirm KPI source fields.
7. Validate analytical calculations.
8. Document assumptions.
9. Preserve the original source dataset.
10. Use the prepared dataset for dashboard development.

---

## 8. Data Quality Decision

### Analytical Fitness

Based on the documented assessment approach, the dataset is considered suitable for the intended **portfolio-level descriptive analysis**, subject to the documented assumptions and limitations.

The dataset should not be interpreted as clinical, regulatory, or population-level evidence.

The analysis is intended to demonstrate structured market-research analysis and project-management practices.

---

## 9. Data Quality Controls

To maintain analytical quality throughout the project:

* Source data should remain unchanged.
* Analytical transformations should be documented.
* KPI definitions should remain consistent.
* Dashboard calculations should be validated.
* Changes to analytical logic should be reviewed before publication.
* Major data-quality issues should be documented.
* Findings should be traceable to source variables.

---

## 10. Impact on Power BI Development

The data-quality assessment provides the foundation for the Power BI dashboard.

The validated analytical fields are used to create the core KPIs:

* Total Physicians
* Average Adoption Likelihood
* Average Effectiveness
* Average Administrative Burden
* Average Safety Rating

The resulting dashboard should therefore maintain traceability between:

**Source Data → Validated Fields → DAX Measures → KPIs → Visualizations → Insights**

---

## 11. Limitations

This assessment is based on the available portfolio dataset and the analytical requirements defined for the project.

It does not constitute:

* Clinical data validation
* Regulatory validation
* Independent source-data verification
* Statistical validation of survey methodology
* Validation against real-world prescribing behavior

The assessment establishes analytical fitness for the intended portfolio use rather than clinical or regulatory fitness.

---

## 12. Portfolio Note

This Data Quality Assessment is a simulated professional project artifact created to demonstrate structured data-governance practices within a pharmaceutical market-research program.

It demonstrates how a Project Manager can coordinate data-quality considerations across research, analytics, business intelligence, and stakeholder teams before analytical outputs are delivered.
