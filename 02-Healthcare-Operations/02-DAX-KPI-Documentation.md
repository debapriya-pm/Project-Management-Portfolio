# DAX & KPI Documentation

## Purpose

This document provides a concise overview of the key DAX measures used in the Healthcare Prior Authorization Operations Dashboard.

The measures were selected to support operational performance analysis and executive decision-making rather than to document every calculation used during development.

---

## 1. Total Cases

```DAX
Total Cases =
COUNTROWS(prior_authorization_operations_dataset)
```

**What it measures:**

The total number of prior authorization cases in the dataset.

**Result:**

1,500 cases

**Why it matters:**

Establishes the overall operational workload and provides the baseline for calculating other performance indicators.

---

## 2. Approved Cases

```DAX
Approved Cases =
CALCULATE(
    COUNTROWS(prior_authorization_operations_dataset),
    prior_authorization_operations_dataset[Decision] = "Approved"
)
```

**What it measures:**

The number of prior authorization cases that received an approval decision.

**Result:**

1,207 cases

**Why it matters:**

Provides visibility into successful authorization outcomes and allows approval performance to be compared with denied cases and overall workload.

---

## 3. Denied Cases

```DAX
Denied Cases =
CALCULATE(
    COUNTROWS(prior_authorization_operations_dataset),
    prior_authorization_operations_dataset[Decision] = "Denied"
)
```

**What it measures:**

The number of prior authorization cases that were denied.

**Result:**

279 cases

**Why it matters:**

Highlights the volume of cases requiring attention and supports further analysis of denial patterns and underlying reasons.

---

## 4. SLA Breach Rate

```DAX
SLA Breach Rate =
DIVIDE(
    CALCULATE(
        COUNTROWS(prior_authorization_operations_dataset),
        prior_authorization_operations_dataset[SLA_Breached] = "Yes"
    ),
    COUNTROWS(prior_authorization_operations_dataset),
    0
)
```

**What it measures:**

The percentage of prior authorization cases that exceeded their defined service-level target.

**Result:**

64.9%

**Why it matters:**

Provides a direct indicator of operational performance and identifies potential pressure within the authorization workflow.

---

## 5. Denial Rate

```DAX
Denial Rate =
DIVIDE(
    [Denied Cases],
    [Total Cases],
    0
)
```

**What it measures:**

The percentage of all prior authorization cases that resulted in a denial.

**Result:**

18.6%

**Why it matters:**

Provides a high-level view of denial frequency and supports comparisons across specialties and other operational segments.

---

## KPI Summary

| KPI | Result | Business Purpose |
|---|---:|---|
| Total Cases | 1,500 | Measures overall authorization workload |
| Approved Cases | 1,207 | Measures successful authorization outcomes |
| Denied Cases | 279 | Measures denied authorization volume |
| SLA Breach Rate | 64.9% | Measures operational service-level performance |
| Denial Rate | 18.6% | Measures overall denial frequency |

---

## How the KPIs Support Decision-Making

The KPIs are designed to work together rather than as isolated metrics.

**Total Cases** establishes the workload baseline.

**Approved Cases** and **Denied Cases** describe authorization outcomes.

**Denial Rate** provides a normalized view of denial performance.

**SLA Breach Rate** highlights operational efficiency and service-level risk.

Together, these measures provide an executive-level view of both **authorization outcomes and operational performance**.

---

## Key Analytical Insight

The KPI analysis indicates that a high approval rate does not necessarily mean the authorization process is operationally efficient.

Although **80.5% of cases were approved, 64.9% breached the defined SLA.**

This highlights the importance of evaluating both **outcome metrics** and **process-performance metrics** when assessing prior authorization operations.
