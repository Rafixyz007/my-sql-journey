# SQL Journey 🚀

Welcome to my **SQL Journey** repository.

This repository documents my step-by-step progress in learning **SQL**, starting from core fundamentals and gradually moving toward more advanced concepts. Everything here is written with a focus on **clarity, practice, and real-world understanding**.

This is a **living repository** and will be updated regularly as I continue learning.

---

## 🎯 Purpose of This Repository

* Build a strong foundation in SQL
* Practice queries using real tables and scenarios
* Organize SQL concepts in a clear, structured way
* Serve as a personal reference and learning log
* Act as a beginner-friendly **portfolio project**

---

## 🛠️ Tools & Environment

* **Database:** Microsoft SQL Server
* **SQL Dialect:** T-SQL
* **Sample Databases:**

  * `db_sql_tutorial`
  * `Sales`

---

## 📂 Repository Structure

```text
sql-journey/
│
├── README.md              # Main overview (this file)
│
├── 01_basics/             # SELECT, WHERE, ORDER BY
├── 02_filtering_sorting/  # Conditions and sorting
├── 03_aggregations/       # GROUP BY, HAVING, DISTINCT
├── 04_ddl_dml/            # CREATE, ALTER, INSERT, UPDATE, DELETE
├── 05_joins/              # All types of JOINs
├── 06_advanced/           # Advanced queries (ongoing)
```

Each folder contains:

* `.sql` files with practice queries
* A short `README.md` explaining the topic

---

## 📘 Topics Covered So Far

* Basic SQL queries (`SELECT`)
* Filtering data (`WHERE`, logical operators)
* Sorting results (`ORDER BY`)
* Aggregate functions (`SUM`, `COUNT`, `AVG`)
* Grouping data (`GROUP BY`, `HAVING`)
* Removing duplicates (`DISTINCT`)
* Limiting results (`TOP`)
* DDL operations (`CREATE`, `ALTER`, `DROP`)
* DML operations (`INSERT`, `UPDATE`, `DELETE`, `TRUNCATE`)
* Pattern matching (`LIKE`)
* Table relationships and joins:

  * INNER JOIN
  * LEFT / RIGHT JOIN
  * FULL JOIN
  * Anti Joins
  * CROSS JOIN
* Multi-table joins using the `Sales` schema

---

## 🧠 Learning Approach

* Concepts are practiced using simple examples first
* Queries are written clearly for readability
* Focus on **understanding why**, not just memorizing syntax
* Each topic builds on the previous one

---

## 🔜 What’s Coming Next

* Set Operators (`UNION`, `INTERSECT`, `EXCEPT`)
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* Indexes & performance basics
* Real-world SQL problem solving

---

## 📌 Notes

* This repository is updated **day by day**
* Mistakes and improvements are part of the learning process
* Suggestions and feedback are always welcome

---

⭐ If you find this repository helpful, feel free to star it!

---

## 🗂️ Folder Mapping (Based on Current Progress)

Below is how your **existing SQL queries** should be organized into folders. This keeps the repo clean and easy to navigate.

```text
sql-journey/
│
├── README.md
│
├── 01_basics/
│   ├── README.md
│   └── select_queries.sql
│
├── 02_filtering_sorting/
│   ├── README.md
│   ├── where_queries.sql
│   └── order_by_queries.sql
│
├── 03_aggregations/
│   ├── README.md
│   ├── group_by.sql
│   ├── having.sql
│   └── distinct_top.sql
│
├── 04_ddl_dml/
│   ├── README.md
│   ├── ddl.sql
│   └── dml.sql
│
├── 05_joins/
│   ├── README.md
│   ├── basic_joins.sql
│   ├── anti_joins.sql
│   ├── cross_join.sql
│   └── sales_schema_joins.sql
│
├── 06_advanced/
│   └── README.md
```

---

## 📄 Section README Template

Use the following template inside **each folder** to keep everything consistent and professional.

```md
## Topic Name

### What this section covers
Brief explanation of the topic and why it is important in SQL.

### Files in this folder
- `file_name.sql` – short explanation of what this file contains

### Key Concepts
- Concept 1
- Concept 2
- Concept 3
```

---

## 📌 Example: `05_joins/README.md`

```md
## Joins

### What this section covers
This section focuses on combining data from multiple tables using different types of JOINs.

### Files in this folder
- `basic_joins.sql` – INNER, LEFT, RIGHT, FULL joins
- `anti_joins.sql` – finding missing records
- `cross_join.sql` – cartesian joins
- `sales_schema_joins.sql` – real-world multi-table joins

### Key Concepts
- Table relationships
- Foreign keys
- Join conditions
```

---

## 🚀 How to Continue Updating This Repo

1. Learn a new SQL topic
2. Create or update a `.sql` file in the correct folder
3. Add notes or examples to that folder’s `README.md`
4. (Optional) Update the "Topics Covered" section above

This keeps your progress visible and well-organized.
