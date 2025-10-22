#  India’s Air Pollution Trend Analysis (2014–2023)

This project explores **India’s air quality trends** over a decade, highlighting regional variations, policy impacts, and emerging concerns.  
It’s a complete end-to-end data analysis pipeline — from messy PDF data to a clean, interactive Power BI dashboard.

---

##  Project Overview
The project uses **data from the Central Pollution Control Board (CPCB)** to analyze the change in major pollutants across Indian regions between 2014 and 2023.

**Pollutants analyzed:**
- SO₂ (Sulphur Dioxide)  
- NO₂ (Nitrogen Dioxide)  
- PM10 (Particulate Matter ≤10µm)  
- PM2.5 (Particulate Matter ≤2.5µm)

**Goal:**  
To visualize and understand how air quality has evolved across India’s regions and how policies, industrial activity, and lockdowns have influenced AQI levels.

---

##  Tools & Technologies
| Stage | Tool Used | Purpose |
|-------|------------|----------|
| Data Extraction | **Excel Power Query** | Extract tables from PDF reports |
| Data Cleaning & Storage | **MySQL** | Normalize and organize datasets |
| Data Processing | **Python (Pandas, SQLAlchemy)** | Calculate AQI, clean & merge tables |
| Visualization | **Power BI** | Create interactive dashboards and insights |

---

##  Project Workflow
### **Phase 1: Data Extraction**
- Extracted pollution data from CPCB PDF reports using **Excel Power Query**.
- Tables were inconsistent across files, requiring manual adjustments.
- Combined all reports into a single Excel dataset.

### **Phase 2: Import & Cleaning**
- Imported the Excel dataset into **MySQL**.
- Normalized inconsistent **state** and **location** names.
- Handled missing values and removed redundant columns.

### **Phase 3: Processing & AQI Calculation**
- Exported data from MySQL to **Python** using **SQLAlchemy**.
- Calculated **Air Quality Index (AQI)** using pollutant baselines.
- Prepared final dataset for visualization.

### **Phase 4: Visualization**
- Designed a **Power BI dashboard** showing:
  - Yearly AQI trends (2014–2023)
  - Regional improvements & deteriorations
  - Comparative analysis of North, South, East, West, and Central regions

---

##  Key Insights
- **Most regions** show improvement in AQI since 2017, reflecting stronger environmental policies.  
- **Southern & Northeastern regions**, once the cleanest, show a **slight upward trend** — likely due to new construction and deforestation.  
- The **lockdown period (2020)** caused a steep temporary decline in emissions, followed by a sharp rebound as industries reopened.

---

##  Learnings
| Technical | Analytical |
|------------|-------------|
| - Advanced Power Query for PDF extraction  | - AQI trend interpretation |
| - SQL normalization & schema design        | - Understanding of regional pollution patterns |
| - Pandas data cleaning & transformation     | - Data storytelling via Power BI dashboards |

---

##  Future Improvements
- Automate AQI calculation using a scheduled Python script.  
- Add weather & policy datasets for multi-factor correlation.  
- Publish an interactive Power BI web version.

---

##  Demo
🎥 **Dashboard Walkthrough Video:** *[(https://www.linkedin.com/posts/idamin-rahaman-b754322aa_dataviz-powerbi-environmentaldata-activity-7386685172651290624-SHL0?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEp1VwkBH_5wAq5O2v6guZkz5OWPp2Hrqrw)](https://www.linkedin.com/posts/idamin-rahaman-b754322aa_datavisualization-powerbi-airquality-activity-7386684969655377920-ac6a?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEp1VwkBH_5wAq5O2v6guZkz5OWPp2Hrqrw)*  
📸 **Screenshots:** *(https://www.linkedin.com/posts/idamin-rahaman-b754322aa_dataviz-powerbi-environmentaldata-activity-7386685172651290624-SHL0?utm_source=share&utm_medium=member_desktop&rcm=ACoAAEp1VwkBH_5wAq5O2v6guZkz5OWPp2Hrqrw)*

---

##  Data Source
- Central Pollution Control Board (CPCB) – https://cpcb.nic.in/namp-data/
---

##  Author
**Idamin Rahaman]**  
idaminrahaman8@gmail.com
 *“Turning messy data into meaningful insights.”*
