# 📄 Data Sources and Simulation Assumptions

This file documents the assumptions and sources used to create mock data for the Student Parking Optimization Project. All values are estimated based on public information and similar real-world datasets.

---

## 1. 🎓 Student Profiles

- **Source**: Cal Poly Fact Book 2023 (https://institutionalresearch.calpoly.edu/)
- **Used for**: Estimating student class year breakdown and distribution of majors.
- **Assumptions**:
  - 70% of students live off-campus
  - 40% of students have a parking permit

---

## 2. 🅿️ Parking Lot Capacities and Zones

- **Source**: Cal Poly Parking Map (https://afd.calpoly.edu/parking/)
- **Used for**: Naming and sizing lots, modeling student-only vs. mixed-use lots
- **Assumptions**:
  - Lot H2 = ~80 spots
  - Lot G3 = ~120 spots (mixed use)
  - Lot A1 = faculty only

---

## 3. 🚙 Parking Behavior Patterns

- **Sources**:
  - SFpark Open Data: https://data.sfgov.org/
  - UCLA Transportation Reports
- **Used for**: Estimating average search times and lot usage
- **Assumptions**:
  - Peak hours = 8:00–10:00 AM
  - Avg search time ranges from 4–12 minutes
  - Underutilized lots <40% occupancy during peak

---

## 4. 📍 Timestamp Patterns

- Simulated realistic hourly logs (timestamped every 30 minutes)
- Weekday focus (Monday–Friday only)
