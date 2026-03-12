# Santarém Climate Data Audit - 2024 🌦️

This folder contains the technical pipeline and audited dataset for the Santarém station (ID: 822440) during the year 2024.

## 🔍 Data Integrity Report (Critical Audit)

As a Meteorology specialist with deep knowledge of the Amazon biome, I conducted a manual audit on the extracted data and identified a critical inconsistency:

* *Variable:* Precipitation (prcp)
* *Reported Value:* 0.00 mm (for 233 consecutive days).
* *The Findings:* In the heart of the Amazon, zero rainfall over such a long period is *climatologically impossible*.
* *Technical Diagnosis:* Upon inspecting the raw data, I identified the sentinel value *99.99* in the source records. This confirms a *sensor reporting failure* from the NOAA GSOD station for the 2024 period.
* *Outcome:* I have maintained the records to demonstrate the data auditing process and to alert future users that this specific variable contains source-level errors.

## 🛠️ Technical Fixes Applied
* *Wind Speed (wdsp):* Successfully converted from STRING to FLOAT64 using SAFE_CAST to enable numerical analysis.
* *Data Structure:* Organized by year to allow for future comparative studies (2023-2025).

---
📂 [Download Audited Dataset (233 rows)](./Santarem 2024.csv)
