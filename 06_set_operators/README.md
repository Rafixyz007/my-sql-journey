<h1 align="center">Set Operators</h1>

### What this section covers
This section focuses on **combining results from multiple SELECT statements** using SQL set operators.  

Set operators are useful when:
- Comparing data between tables
- Merging similar datasets
- Finding matching or non-matching records

---

<h2 align="center">Topics Covered</h2>

* UNION
* UNION ALL
* EXCEPT
* INTERSECT

---

<h2 align="center">Files in this folder</h2>

* [`set_operators.sql`](set_operators.sql) – examples using SalesDB

---

<h2 align="center">Key Concepts</h2>

* Combining multiple result sets
* Removing duplicates vs keeping duplicates
* Comparing data between tables
* All SELECT statements in a set operator must:
  - Have the same number of columns
  - Have compatible data types
  - Be in the same order

---

<h2 align="center">Simple Explanation</h2>

**UNION**  
- Combines results from two queries  
- Removes duplicate rows  

**UNION ALL**  
- Combines results  
- Keeps duplicates  
- Faster than UNION  

**EXCEPT**  
- Returns rows from the first query **that are not in the second query**  

**INTERSECT**  
- Returns only the **matching rows** between both queries  

---

<h2 align="center">Folder Checklist</h2>

```text
06_set_operators/
├── README.md
└── set_operators.sql
