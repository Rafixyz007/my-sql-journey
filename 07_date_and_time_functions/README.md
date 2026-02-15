<h1 align="center">Date and Time Functions</h1>

### What this section covers

This section focuses on working with date and time data in SQL Server.

Date and time functions are essential when working with real-world datasets such as orders, employees, transactions, and reports.  
They help extract specific parts of a date, perform calculations between dates, format output, and group data by time periods.

---

<h2 align="center">Topics Covered</h2>

* GETDATE  
* YEAR, MONTH, DAY  
* DATEPART  
* DATENAME  
* DATETRUNC  
* EOMONTH  
* FORMAT  
* CONVERT  
* CAST  
* DATEADD  
* DATEDIFF  
* ISDATE  

---

<h2 align="center">Files in this folder</h2>

* [`date_and_time_functions.sql`](date_and_time_functions.sql) – examples using SalesDB

---

<h2 align="center">Key Concepts</h2>

* Extracting specific parts of a date (year, month, day, hour, etc.)  
* Formatting date values for reporting  
* Converting between string, date, and datetime types  
* Adding and subtracting time intervals  
* Calculating differences between two dates  
* Grouping data by month, year, or day  
* Understanding different return types (integer, string, datetime, date)  

---

<h2 align="center">Simple Explanation</h2>

**GETDATE**  
- Returns the current system date and time  

**YEAR / MONTH / DAY**  
- Extract individual parts of a date  

**DATEPART**  
- Returns a specific part of a date as an integer  

**DATENAME**  
- Returns the name of a date part (e.g., month name, weekday)  

**DATETRUNC**  
- Truncates a datetime value to a specific level (month, year, etc.)  

**EOMONTH**  
- Returns the last day of a given month  

**FORMAT**  
- Displays dates in a custom format  

**CONVERT / CAST**  
- Change data types between date, datetime, and string  

**DATEADD**  
- Adds or subtracts a time interval from a date  

**DATEDIFF**  
- Calculates the difference between two dates  

**ISDATE**  
- Checks whether a value is a valid date  

---

<h2 align="center">Folder Checklist</h2>

```text
07_date_and_time_functions/
├── README.md
└── date_and_time_functions.sql
