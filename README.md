# Cracking SQL Interview

<img src="https://user-images.githubusercontent.com/5232616/59125272-a90d0780-8916-11e9-9ef7-3c0c12205a71.gif" width="900">

A comprehensive collection of SQL interview questions and solutions designed to help you prepare for Data Engineering interviews. This repository covers everything from basic queries to advanced optimization techniques, window functions, and complex data analysis patterns.

---

## 🚀 Quick Start

### Prerequisites
- **DuckDB** (No installation required - portable SQL database)
- Any text editor or SQL IDE

### Why DuckDB?

This repository uses **DuckDB** to make practicing SQL as simple as possible:

✅ **Zero Setup** - No server installation required  
✅ **Lightweight** - Single file database  
✅ **Fast** - Optimized for analytics workloads  
✅ **Standard SQL** - ANSI SQL compliant  
✅ **Easy to Share** - Database files are portable  

### Getting Started

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd cracking-sql-interview
   ```

2. **Install DuckDB** (if not already installed)
   ```bash
   # macOS
   brew install duckdb
   
   # Linux
   wget https://github.com/duckdb/duckdb/releases/download/v0.9.2/duckdb_cli-linux-amd64.zip
   unzip duckdb_cli-linux-amd64.zip
   
   # Windows
   # Download from: https://duckdb.org/docs/installation/
   ```

3. **Load the sample database**
   ```bash
   duckdb interview.db < setup/create_database.sql
   ```

4. **Start practicing**
   ```bash
   duckdb interview.db
   # Now you can run any query from the queries/ folder
   ```

---

## 📊 Question Categories

### 🟢 Level 1: Basic Fundamentals
**Folder**: `queries/01-basic/`

Essential SQL concepts for any data role.

**Topics Covered**:
- SELECT, WHERE, ORDER BY
- JOINs (INNER, LEFT, RIGHT, FULL)
- GROUP BY and basic aggregations
- HAVING clause filtering
- DISTINCT and duplicate handling
- Basic string and date functions

---

### 🟡 Level 2: Intermediate Analytics
**Folder**: `queries/02-intermediate/`

Queries for data analysis and reporting.

**Topics Covered**:
- Window Functions (ROW_NUMBER, RANK, DENSE_RANK)
- CASE statements and conditional logic
- Subqueries and derived tables
- Common Table Expressions (CTEs)
- Multi-level aggregations
- UNION, INTERSECT, EXCEPT operations
- Date/time calculations

---

### 🔴 Level 3: Advanced Queries
**Folder**: `queries/03-advanced/`

Complex problems typical in Senior Data Engineer interviews.

**Topics Covered**:
- Recursive CTEs
- Advanced Window Functions (LAG, LEAD, FIRST_VALUE, LAST_VALUE)
- Self-joins and multiple table joins
- Gap and Island problems
- Running totals and moving averages
- Percentiles and quartiles
- Complex date logic and time series

---

### 🟣 Level 4: Expert & Optimization
**Folder**: `queries/04-expert/`

Real-world data engineering patterns and optimization.

**Topics Covered**:
- Query optimization techniques
- Execution plan analysis
- Index strategies
- ETL pattern queries
- Slowly Changing Dimensions (SCD Type 2)
- Data quality checks and validation
- Incremental processing patterns
- Partitioning strategies

---

## 📁 Project Structure

```
cracking-sql-interview/
├── setup/
│   ├── create_database.sql         # 🗄️ Database schema creation
│   ├── load_data.sql               # 📊 Sample data loading
│   └── README.md                   # Setup instructions
│
├── queries/
│   ├── 01-basic/                   # 🟢 Basic Level
│   │   ├── 01_select_filtering/
│   │   ├── 02_joins/
│   │   ├── 03_aggregations/
│   │   ├── 04_grouping/
│   │   └── solutions/              # ✅ Solutions with explanations
│   │
│   ├── 02-intermediate/            # 🟡 Intermediate Level
│   │   ├── 01_window_functions/
│   │   ├── 02_cte_subqueries/
│   │   ├── 03_case_statements/
│   │   ├── 04_date_time/
│   │   └── solutions/
│   │
│   ├── 03-advanced/                # 🔴 Advanced Level
│   │   ├── 01_recursive_cte/
│   │   ├── 02_complex_windows/
│   │   ├── 03_self_joins/
│   │   ├── 04_gap_island/
│   │   ├── 05_time_series/
│   │   └── solutions/
│   │
│   └── 04-expert/                  # 🟣 Expert Level
│       ├── 01_optimization/
│       ├── 02_scd_patterns/
│       ├── 03_data_quality/
│       ├── 04_etl_patterns/
│       └── solutions/
│
├── datasets/
│   ├── raw/                        # 📦 Raw CSV/Parquet files
│   │   ├── ecommerce/
│   │   ├── analytics/
│   │   └── financial/
│   └── README.md                   # Dataset documentation
│
├── docs/
│   ├── sql_cheatsheet.md          # 📝 Quick reference guide
│   ├── interview_tips.md          # 💡 Interview preparation tips
│   ├── duckdb_guide.md            # 🦆 DuckDB specific features
│   ├── performance_guide.md       # ⚡ Optimization techniques
│   └── common_patterns.md         # 🎯 Frequently asked patterns
│
├── images/                        # 🖼️ README visuals
│   └── sql_mastery.gif
└── README.md                      # This file
```

### Directory Descriptions

- **`/setup`**: SQL scripts to create and populate the DuckDB database
- **`/queries`**: Interview questions organized by difficulty level
- **`/datasets`**: Sample data files (CSV/Parquet format)
- **`/docs`**: Study guides, cheatsheets, and best practices
- **`/scripts`**: Helper scripts for validation and testing
- **`/images`**: Visual resources for documentation

---

## 🛠️ Technologies

### Core Stack
- **DuckDB 0.9.2+**: Embedded analytical database
- **SQL (ANSI Standard)**: Queries compatible with most SQL databases
- **Python 3.8+**: Optional for scripts and testing

### Why DuckDB?

DuckDB is perfect for interview preparation because:
- **No server setup** - works like SQLite but optimized for analytics
- **Fast** - columnar storage and vectorized execution
- **Rich SQL support** - window functions, CTEs, and complex queries
- **Easy sharing** - database is a single file
- **Great for learning** - clear error messages and EXPLAIN output

### DuckDB Features Used

- Window Functions
- Common Table Expressions (CTEs)
- Recursive queries
- JSON support
- Parquet/CSV direct querying
- EXPLAIN and EXPLAIN ANALYZE

---

## 💡 Key Topics for Interviews

### 1. Window Functions
Understanding ranking, aggregation, and offset functions within partitions.

**Key Concepts**:
- ROW_NUMBER, RANK, DENSE_RANK
- LAG, LEAD, FIRST_VALUE, LAST_VALUE
- PARTITION BY and ORDER BY clauses
- Window frames (ROWS, RANGE)

---

### 2. Common Table Expressions (CTEs)
Building readable, modular queries with WITH clauses.

**Key Concepts**:
- Basic CTEs for readability
- Recursive CTEs for hierarchies
- Multiple CTEs in a single query
- When to use CTEs vs subqueries

---

### 3. Self-Joins and Complex Joins
Joining tables to themselves and handling multiple join conditions.

**Key Concepts**:
- Self-joins for comparisons
- Multiple join conditions
- Join order optimization
- Avoiding Cartesian products

---

### 4. Aggregations and Grouping
Multi-level aggregations and complex GROUP BY scenarios.

**Key Concepts**:
- GROUP BY with multiple columns
- HAVING clause filtering
- ROLLUP and CUBE (if supported)
- Aggregations with window functions

---

### 5. Date and Time Analysis
Working with timestamps and time-based calculations.

**Key Concepts**:
- Date arithmetic
- Time zone handling
- Period-over-period comparisons
- Time series patterns

---

### 6. Gap and Island Problems
Finding sequences and breaks in ordered data.

**Key Concepts**:
- Identifying consecutive sequences
- Finding missing values in sequences
- Detecting breaks in time series
- Session identification

---

### 7. Data Quality and ETL Patterns
Real-world data engineering scenarios.

**Key Concepts**:
- Null handling strategies
- Duplicate detection
- Data validation checks
- Incremental loading patterns
- Slowly Changing Dimensions

---

## 🎯 Common Interview Question Patterns

### Pattern 1: "Find the Top N per Group"
Ranking items within categories and selecting the best.

**Use Cases**: Top products per category, best performers per region

---

### Pattern 2: "Calculate Running Totals"
Cumulative calculations over ordered data.

**Use Cases**: Year-to-date metrics, cumulative revenue

---

### Pattern 3: "Period-over-Period Comparisons"
Comparing current values with previous periods.

**Use Cases**: Month-over-month growth, YoY comparisons

---

### Pattern 4: "Cohort Analysis"
Analyzing user behavior grouped by signup/acquisition time.

**Use Cases**: User retention, customer lifetime value

---

### Pattern 5: "Funnel Analysis"
Tracking conversion through sequential steps.

**Use Cases**: Checkout funnels, user journeys

---

### Pattern 6: "Sessionization"
Grouping events into logical sessions based on time gaps.

**Use Cases**: Website sessions, activity periods

---

## 📚 Study Guide

### Week 1-2: Fundamentals
- [ ] SELECT, WHERE, ORDER BY basics
- [ ] All JOIN types (INNER, LEFT, RIGHT, FULL)
- [ ] GROUP BY and basic aggregations (COUNT, SUM, AVG)
- [ ] HAVING clause for filtered aggregations

### Week 3-4: Intermediate Level
- [ ] Window Functions (ROW_NUMBER, RANK, DENSE_RANK)
- [ ] Common Table Expressions (WITH clause)
- [ ] CASE statements and conditional logic
- [ ] Subqueries and derived tables

### Week 5-6: Advanced Techniques
- [ ] Advanced Window Functions (LAG, LEAD, NTILE)
- [ ] Recursive CTEs
- [ ] Self-joins and complex join scenarios
- [ ] Gap and Island problems

### Week 7-8: Expert Topics
- [ ] Query optimization with EXPLAIN
- [ ] ETL patterns and incremental processing
- [ ] Data quality validation techniques
- [ ] Slowly Changing Dimensions

---

## 🔧 Useful DuckDB Commands

### Database Exploration
```sql
-- List all tables
SHOW TABLES;

-- Describe table structure
DESCRIBE table_name;

-- Show table statistics
SELECT * FROM duckdb_tables();

-- View query execution plan
EXPLAIN SELECT * FROM table_name;

-- Analyze query performance
EXPLAIN ANALYZE SELECT * FROM table_name;
```

### Data Import/Export
```sql
-- Load CSV directly
SELECT * FROM 'data.csv';

-- Create table from CSV
CREATE TABLE my_table AS SELECT * FROM 'data.csv';

-- Export results to CSV
COPY (SELECT * FROM my_table) TO 'output.csv' (HEADER, DELIMITER ',');

-- Query Parquet files
SELECT * FROM 'data.parquet';
```

---

## 💻 Practice Platforms

### Recommended Resources

1. **LeetCode** - Database Section
   - 200+ SQL problems
   - Company-tagged questions
   - [leetcode.com/problemset/database](https://leetcode.com/problemset/database/)

2. **HackerRank** - SQL Track
   - Progressive challenges
   - Skill certifications
   - [hackerrank.com/domains/sql](https://www.hackerrank.com/domains/sql)

3. **StrataScratch**
   - Real interview questions
   - Company-specific problems
   - [stratascratch.com](https://www.stratascratch.com/)

4. **DataLemur**
   - SQL interview questions from FAANG
   - Detailed solutions
   - [datalemur.com](https://datalemur.com/)

---

## 🏆 Real Interview Questions By Company

### FAANG Companies
- **Google**: User retention and cohort analysis
- **Meta**: Growth metrics and funnel optimization
- **Amazon**: Product recommendation and market basket
- **Netflix**: Content engagement and churn prediction
- **Apple**: Device usage patterns and user journeys

### Tech Unicorns
- **Stripe**: Payment fraud detection patterns
- **Uber**: Geospatial queries and trip optimization
- **Airbnb**: Host performance and pricing analysis
- **DoorDash**: Delivery efficiency and demand forecasting

---

## 🎓 Best Practices

✅ **Write readable queries** - Use meaningful aliases and comments  
✅ **Use CTEs** for complex logic - Makes queries easier to understand  
✅ **Avoid SELECT *** - Specify only needed columns  
✅ **Filter early** - Apply WHERE before JOINs when possible  
✅ **Test incrementally** - Build complex queries step by step  
✅ **Use EXPLAIN** - Understand query execution plans  
✅ **Document assumptions** - Comment edge cases and business logic  
✅ **Practice typing** - Speed matters in timed interviews  

---

## 🤝 Contributing

Have an interesting interview question? Contribute!

1. Fork the repository
2. Create a branch: `git checkout -b new-question`
3. Add your question in the appropriate folder
4. Include solution with explanation
5. Submit a Pull Request

### Contribution Guidelines
- Questions must be original or properly attributed
- Include difficulty level and topic tags
- Provide clear problem statement
- Add detailed solution with explanation

---

## 📖 Additional Resources

### Books
- **"SQL Performance Explained"** - Markus Winand
- **"SQL Antipatterns"** - Bill Karwin
- **"The Art of SQL"** - Stéphane Faroult

### Online Learning
- [SQLZoo](https://sqlzoo.net/) - Interactive SQL tutorials
- [Mode Analytics SQL Tutorial](https://mode.com/sql-tutorial/)
- [PostgreSQL Exercises](https://pgexercises.com/)

### Blogs & Communities
- [Modern SQL](https://modern-sql.com/)
- [Use The Index, Luke](https://use-the-index-luke.com/)
- [DuckDB Documentation](https://duckdb.org/docs/)

---

## 📝 Notes

### What Makes This Repo Different?

- **Zero Setup**: Use DuckDB - no database server required
- **Practical Focus**: Real interview questions, not just theory
- **Progressive Learning**: Four clear difficulty levels
- **Complete Solutions**: Every question includes explanation
- **Modern SQL**: Latest SQL features and best practices

### Maintenance

This repository is actively maintained and regularly updated with:
- New interview questions from recent interviews
- Query optimization techniques
- Community feedback and improvements
- Latest DuckDB features

**Last Updated**: January 2025

---

## 📄 License

MIT License - Free to use for interview preparation and learning.

---

## ⭐ Star This Repo!

If this repository helped you land a job or ace an interview:
- Give it a ⭐ star
- Share it with others preparing for interviews
- Contribute your own questions

**Good luck with your interviews! 🚀**
