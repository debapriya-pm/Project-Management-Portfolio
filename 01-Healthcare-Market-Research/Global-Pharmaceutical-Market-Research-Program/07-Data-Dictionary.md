# Data Dictionary

## 1. Purpose

The Data Dictionary documents the key fields used in the physician survey dataset supporting the Global Pharmaceutical Market Research Program.

It provides a common reference for understanding the dataset, analytical variables, KPI calculations, and Power BI reporting.

The dictionary supports data consistency, analytical transparency, stakeholder communication, and dashboard development.

---

## 2. Dataset Overview

The analytical dataset contains structured physician survey information designed to evaluate perceptions and potential adoption considerations related to pharmaceutical and healthcare solutions.

The analysis focuses on physician-level responses and selected perception-based measures.

The dataset is used for portfolio demonstration and analytical purposes.

---

## 3. Core Data Fields

| Field                       | Business Meaning                                                | Data Type             | Analytical Use                               |
| --------------------------- | --------------------------------------------------------------- | --------------------- | -------------------------------------------- |
| Physician ID                | Unique identifier for a physician response or physician record  | Text / Identifier     | Physician counting and record-level analysis |
| Physician Specialty         | Medical specialty associated with the physician                 | Categorical           | Segmentation and comparison                  |
| Physician Experience        | Years or category of professional experience                    | Numeric / Categorical | Physician segmentation                       |
| Adoption Likelihood         | Physician's stated likelihood of adopting the relevant solution | Numeric               | Adoption KPI                                 |
| Effectiveness Rating        | Physician's perceived effectiveness rating                      | Numeric               | Effectiveness KPI                            |
| Administrative Burden       | Physician's perceived administrative burden                     | Numeric               | Administrative burden KPI                    |
| Safety Rating               | Physician's perceived safety rating                             | Numeric               | Safety KPI                                   |
| Geographic / Market Segment | Geographic or market grouping where available                   | Categorical           | Market segmentation                          |
| Survey Response             | Individual survey response record                               | Record                | Record-level analysis                        |

---

## 4. Core Analytical Variables

### Adoption Likelihood

**Definition:**
Measures the likelihood that a physician would adopt or consider adopting the relevant pharmaceutical or healthcare solution.

**Analytical purpose:**

* Evaluate potential adoption.
* Identify overall adoption sentiment.
* Compare adoption across physician segments.
* Support market-strategy discussions.

**Power BI KPI:**

Average Adoption Likelihood

---

### Effectiveness Rating

**Definition:**
Represents the physician's perception of the effectiveness of the relevant solution.

**Analytical purpose:**

* Understand perceived effectiveness.
* Compare effectiveness perceptions across segments.
* Identify potential relationship between effectiveness and adoption.

**Power BI KPI:**

Average Effectiveness

---

### Administrative Burden

**Definition:**
Represents the perceived administrative effort, complexity, or burden associated with the relevant solution.

**Analytical purpose:**

* Identify operational barriers.
* Understand potential friction affecting adoption.
* Support stakeholder discussions around workflow and implementation.

**Power BI KPI:**

Average Administrative Burden

---

### Safety Rating

**Definition:**
Represents physician perception of the safety of the relevant pharmaceutical or healthcare solution.

**Analytical purpose:**

* Evaluate physician confidence.
* Identify safety perception patterns.
* Provide contextual information for adoption analysis.

**Power BI KPI:**

Average Safety Rating

---

## 5. Data Classification

The dataset contains several categories of information.

### Identifier Data

Used to uniquely identify records or physicians.

Example:

* Physician ID

### Categorical Data

Used to group and segment responses.

Examples:

* Physician Specialty
* Geographic / Market Segment
* Experience Category

### Numeric / Rating Data

Used for quantitative analysis.

Examples:

* Adoption Likelihood
* Effectiveness Rating
* Administrative Burden
* Safety Rating

---

## 6. Data Quality Considerations

The following data-quality dimensions should be considered before analysis:

### Completeness

Check whether required fields contain missing values.

### Accuracy

Confirm that values fall within expected ranges.

### Consistency

Ensure that categorical values use consistent terminology.

### Validity

Confirm that numerical ratings conform to the intended rating scale.

### Uniqueness

Check for unexpected duplicate records where unique records are required.

### Timeliness

Confirm that the dataset is appropriate for the research question and analysis period.

---

## 7. Analytical Assumptions

The following assumptions apply to the portfolio analysis:

* Each analytical record represents a valid physician survey response unless otherwise identified.
* Rating variables are interpreted according to their available scales.
* Average ratings are used to provide overall directional insight.
* The dataset is treated as a structured survey dataset for portfolio analysis.
* The analysis does not establish clinical efficacy or regulatory conclusions.
* Available data fields determine the depth of segmentation that can be performed.

---

## 8. KPI Mapping

| KPI                           | Source Variable       | Calculation Concept        | Business Question                              |
| ----------------------------- | --------------------- | -------------------------- | ---------------------------------------------- |
| Total Physicians              | Physician ID          | Count of physician records | How many physicians are represented?           |
| Average Adoption Likelihood   | Adoption Likelihood   | Average                    | How likely are physicians to adopt?            |
| Average Effectiveness         | Effectiveness Rating  | Average                    | How effective is the solution perceived to be? |
| Average Administrative Burden | Administrative Burden | Average                    | How much administrative burden is perceived?   |
| Average Safety Rating         | Safety Rating         | Average                    | How safe is the solution perceived to be?      |

---

## 9. Data-to-Insight Flow

The analytical process follows:

**Raw Survey Data**

↓

**Data Quality Assessment**

↓

**Data Preparation**

↓

**Analytical Variables**

↓

**DAX Measures / Calculations**

↓

**KPIs**

↓

**Power BI Visualizations**

↓

**Research Findings**

↓

**Business Insights**

↓

**Recommendations**

---

## 10. Data Governance Considerations

For a professional healthcare market-research environment, data governance should include:

* Appropriate access controls
* Consistent data definitions
* Documented analytical assumptions
* Data-quality monitoring
* Version control
* Clear ownership of analytical outputs
* Appropriate handling of sensitive or confidential information
* Clear distinction between research data and clinical evidence

No personally identifiable patient information is required for this portfolio analysis.

---

## 11. Limitations

The data dictionary is based on the fields available within the portfolio dataset.

Not every market-research variable that could exist in a real pharmaceutical research program is necessarily represented.

Additional variables such as prescribing behavior, patient outcomes, treatment history, market access considerations, pricing, reimbursement, or longitudinal adoption may require additional research data.

---

## 12. Portfolio Note

This Data Dictionary is a simulated project artifact created to demonstrate professional data-governance and analytics documentation practices within a pharmaceutical market-research project.

It is intended to show how a Project Manager can facilitate a common understanding of data between research, business, analytics, and reporting stakeholders.
