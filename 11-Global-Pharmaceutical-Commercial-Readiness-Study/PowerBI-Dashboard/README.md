# Exafield Executive Power BI Dashboard

A portfolio dashboard package for the fictionalized Global Biologic Commercial Readiness & Physician Adoption Study.

## Dashboard preview
Open [index.html](index.html) or view [Executive-Dashboard.svg](Executive-Dashboard.svg).

## Power BI import package
Import these CSV files into Power BI Desktop:
- Market_Recruitment.csv
- Research_Stream_Summary.csv
- Adverse_Events.csv
- Strategic_Findings.csv
- Program_KPIs.csv

Import the visual theme from Exafield-PowerBI-Theme.json using **View → Themes → Browse for themes**. Use Measures.dax to create the KPI measures.

## Recommended report pages
1. **Executive Overview:** respondents, quota attainment, budget, duration, compliance; market completion and research-stream target vs actual.
2. **Recruitment & Fieldwork:** market slicer, target vs completed by stream, completion by country.
3. **Commercial Insights:** efficacy perception, autoinjector preference, payer step-therapy, co-pay sensitivity and recommendations.
4. **Safety & Compliance:** AE count, average escalation TAT, 24-hour compliance rate and incident table.

## Data notes
- Target: 325 respondents; completed: 332 (approximately 102.2% attainment).
- Market completions: US 108, Germany 59, UK 59, France 53 and Italy 53.
- Three valid AE mentions; workbook-reported average escalation turnaround: 3.8 hours.
- Commercial findings are study-reported findings, not independently validated market facts.
- This is a fictionalized portfolio simulation. Do not represent the illustrative budget, client context, respondent counts or findings as verified client-confidential project results.

## Native Power BI file
This folder contains a dashboard preview and Power BI-ready source data, theme and DAX measures. It does **not** contain a native .pbix file. Open the assets in Power BI Desktop to assemble and save the editable report as .pbix.
