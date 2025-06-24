# 📘 Student Parking Optimization Project

**Goal:** Reduce student parking search time at Cal Poly SLO by 30% using SQL-based analysis of lot usage patterns and student behavior.

---

## 🔍 Overview

This consulting-style project uses simulated parking and student data to uncover inefficiencies in parking lot usage across Cal Poly San Luis Obispo’s campus. By analyzing patterns in lot occupancy, student demographics, and peak traffic hours, the project identifies actionable strategies to optimize parking and reduce search time.

---

## 🎯 Objective

- Analyze simulated campus parking data to model real-world lot usage  
- Identify bottlenecks and underutilized lots  
- Propose data-backed improvements to reduce parking search time by 30%

---

## 🛠 Tools & Technologies

- **PostgreSQL**: Backend database for storing and querying data  
- **SQL**: Core tool for data analysis and business logic  
- **Python (optional)**: Used to simulate realistic occupancy data  
- **Excel**: Data manipulation and basic charting  
- **GitHub**: Project management and version control

---

## 🧱 Database Schema

| Table               | Description |
|--------------------|-------------|
| `parking_lots`     | Lot info including capacity, type, and location |
| `lot_occupancy_logs` | Timestamped records of occupancy and traffic |
| `student_profiles` | Student major, class year, and permit type |
| `vehicle_tracking` | Entry/exit time and parking search time |

---

## 📊 Sample Business Questions Answered

- What lots have the highest average search time during peak hours?  
- Are any lots consistently underutilized?  
- Does student class year or permit type impact search time?  
- Can redirecting traffic improve overall efficiency?

---

## 💡 Key Insights (Example)

- Central lots reached 95%+ capacity by 9:15 AM  
- Two outer lots had <40% utilization during peak hours  
- Redirecting commuters with certain permits could reduce average search time by 26%

---

## ✅ Results & Recommendations

- Recommend permit restructuring and better signage to underused lots  
- Propose implementation of a real-time lot availability dashboard  
- Estimated 30%+ reduction in peak search time if changes are applied

---

## 📌 Next Steps

- Build a front-end dashboard for students  
- Partner with Cal Poly transportation team to explore pilot  
- Expand dataset to include weather and class schedule data
